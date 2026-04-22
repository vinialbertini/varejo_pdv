unit UNuvemFiscalService;

interface

uses
  System.SysUtils, System.Classes, System.StrUtils, System.DateUtils,
  NuvemFiscalClient, NuvemFiscalDtos, OpenApiRest, UDM;

type
  TNuvemFiscalRetornoEmissao = class
  public
    Id: string;
    Status: string;
    Chave: string;
    Mensagem: string;
  end;

  TNuvemFiscalService = class
  private
    FAccessToken: string;
    FExpirationTime: TDateTime;
    function SomenteNumeros(const AValor: string): string;
    function CampoOuVazio(const AValor: string): string;
    function GetAccessToken: string;
    function CreateClient: TNuvemFiscalClient;
    function DeterminarIndIEDest(ATipoIE: Integer; const ADocumento: string; const AIE: string): Integer;
    function AmbienteToTexto(AHomologacao: Boolean): string;
    procedure PreencherEmitente(ADM: Tdm; APedido: TNfePedidoEmissao);
    procedure PreencherDestinatario(ADM: Tdm; APedido: TNfePedidoEmissao);
    procedure PreencherItens(ADM: Tdm; APedido: TNfePedidoEmissao; AModelo: Integer);
    procedure PreencherTotais(ADM: Tdm; APedido: TNfePedidoEmissao);
    procedure PreencherPagamento(ADM: Tdm; APedido: TNfePedidoEmissao; AModelo: Integer);
    function MontarPedido(ADM: Tdm; AModelo: Integer; AHomologacao: Boolean): TNfePedidoEmissao;
  public
    function EmitirNota(ADM: Tdm; AModelo: Integer; AHomologacao: Boolean): TNuvemFiscalRetornoEmissao;
    function ConsultarNota(const AId: string): TDfe;
    function CancelarNota(const AId, AJustificativa: string): TDfeCancelamento;
    function CriarCartaCorrecao(const AId, ACorrecao: string): TDfeCartaCorrecao;
    function BaixarXml(const AId: string): TBytes;
    function BaixarPdf(const AId: string): TBytes;
    function EnviarEmail(const AId, AEmail: string): TEmailStatusResponse;
  end;

implementation

function TNuvemFiscalService.CampoOuVazio(const AValor: string): string;
begin
  Result := Trim(AValor);
end;

function TNuvemFiscalService.SomenteNumeros(const AValor: string): string;
var
  C: Char;
begin
  Result := '';
  for C in AValor do
    if CharInSet(C, ['0'..'9']) then
      Result := Result + C;
end;

function TNuvemFiscalService.AmbienteToTexto(AHomologacao: Boolean): string;
begin
  if AHomologacao then
    Result := 'homologacao'
  else
    Result := 'producao';
end;

function TNuvemFiscalService.GetAccessToken: string;
var
  TokenProvider: IClientCredencialsTokenProvider;
  TokenData: ITokenData;
begin
  if (FAccessToken <> '') and (Now < IncMinute(FExpirationTime, -2)) then
    Exit(FAccessToken);

  TokenProvider := TClientCredentialsTokenProvider.Create;
  TokenProvider.TokenEndpoint := 'https://auth.nuvemfiscal.com.br/oauth/token';

  // TODO:
  // Troque pelos dados reais obtidos no console da Nuvem Fiscal.
  TokenProvider.ClientId := 'SEU_CLIENT_ID';
  TokenProvider.ClientSecret := 'SEU_CLIENT_SECRET';
  TokenProvider.Scope := 'empresa cep cnpj nfe nfce';

  TokenData := TokenProvider.RetrieveToken;
  FAccessToken := TokenData.AccessToken;
  FExpirationTime := TokenData.ExpirationTime;

  Result := FAccessToken;
end;

function TNuvemFiscalService.CreateClient: TNuvemFiscalClient;
begin
  Result := TNuvemFiscalClient.Create;
  Result.Config.AccessToken := GetAccessToken;
end;

function TNuvemFiscalService.DeterminarIndIEDest(ATipoIE: Integer; const ADocumento: string; const AIE: string): Integer;
begin
  case ATipoIE of
    1: Result := 1; // contribuinte
    2: Result := 2; // isento
  else
    begin
      if (Length(SomenteNumeros(ADocumento)) = 11) and (Trim(AIE) = '') then
        Result := 9
      else if Trim(AIE) = '' then
        Result := 9
      else
        Result := 1;
    end;
  end;
end;

procedure TNuvemFiscalService.PreencherEmitente(ADM: Tdm; APedido: TNfePedidoEmissao);
begin
  APedido.infNFe.emit.CNPJ := SomenteNumeros(ADM.cdsEmitenteCNPJ.AsString);
  APedido.infNFe.emit.xNome := CampoOuVazio(ADM.cdsEmitenteRAZAO.AsString);
  APedido.infNFe.emit.xFant := CampoOuVazio(ADM.cdsEmitenteFANTASIA.AsString);
  APedido.infNFe.emit.IE := SomenteNumeros(ADM.cdsEmitenteIE.AsString);
  APedido.infNFe.emit.CNAE := SomenteNumeros(ADM.cdsEmitenteCNAE.AsString);
  APedido.infNFe.emit.CRT := 1; // Simples Nacional

  APedido.infNFe.emit.enderEmit.CEP := SomenteNumeros(ADM.cdsEmitenteCEP.AsString);
  APedido.infNFe.emit.enderEmit.xLgr := CampoOuVazio(ADM.cdsEmitenteENDERECO.AsString);
  APedido.infNFe.emit.enderEmit.nro := CampoOuVazio(ADM.cdsEmitenteNUMERO.AsString);
  APedido.infNFe.emit.enderEmit.xCpl := CampoOuVazio(ADM.cdsEmitenteCOMPLEMENTO.AsString);
  APedido.infNFe.emit.enderEmit.xBairro := CampoOuVazio(ADM.cdsEmitenteBAIRRO.AsString);
  APedido.infNFe.emit.enderEmit.cMun := SomenteNumeros(ADM.cdsEmitenteIBGE.AsString);
  APedido.infNFe.emit.enderEmit.xMun := CampoOuVazio(ADM.cdsEmitenteCIDADE.AsString);
  APedido.infNFe.emit.enderEmit.UF := CampoOuVazio(ADM.cdsEmitenteUF.AsString);
  APedido.infNFe.emit.enderEmit.cPais := '1058';
  APedido.infNFe.emit.enderEmit.xPais := 'BRASIL';
  APedido.infNFe.emit.enderEmit.fone := SomenteNumeros(ADM.cdsEmitenteTELEFONE.AsString);
end;

procedure TNuvemFiscalService.PreencherDestinatario(ADM: Tdm; APedido: TNfePedidoEmissao);
var
  Documento: string;
begin
  Documento := SomenteNumeros(ADM.cdsClienteCNPJCPF.AsString);
  if Documento = '' then
    Exit;

  APedido.infNFe.dest := TNfeSefazDest.Create;

  if Length(Documento) = 11 then
    APedido.infNFe.dest.CPF := Documento
  else
    APedido.infNFe.dest.CNPJ := Documento;

  APedido.infNFe.dest.xNome := CampoOuVazio(ADM.cdsClienteNOME.AsString);
  APedido.infNFe.dest.indIEDest := DeterminarIndIEDest(
    ADM.cdsClienteTIPOIE.AsInteger,
    Documento,
    ADM.cdsClienteIERG.AsString
  );

  if Trim(ADM.cdsClienteIERG.AsString) <> '' then
    APedido.infNFe.dest.IE := SomenteNumeros(ADM.cdsClienteIERG.AsString);

  if Trim(ADM.cdsClienteEMAIL.AsString) <> '' then
    APedido.infNFe.dest.email := CampoOuVazio(ADM.cdsClienteEMAIL.AsString);

  APedido.infNFe.dest.enderDest := TNfeSefazEndereco.Create;
  APedido.infNFe.dest.enderDest.xLgr := CampoOuVazio(ADM.cdsClienteENDERECO.AsString);
  APedido.infNFe.dest.enderDest.nro := CampoOuVazio(ADM.cdsClienteNUMERO.AsString);
  APedido.infNFe.dest.enderDest.xCpl := CampoOuVazio(ADM.cdsClienteCOMPLEMENTO.AsString);
  APedido.infNFe.dest.enderDest.xBairro := CampoOuVazio(ADM.cdsClienteBAIRRO.AsString);
  APedido.infNFe.dest.enderDest.cMun := SomenteNumeros(ADM.cdsClienteIBGE.AsString);
  APedido.infNFe.dest.enderDest.xMun := CampoOuVazio(ADM.cdsClienteCIDADE.AsString);
  APedido.infNFe.dest.enderDest.UF := CampoOuVazio(ADM.cdsClienteUF.AsString);
  APedido.infNFe.dest.enderDest.CEP := SomenteNumeros(ADM.cdsClienteCEP.AsString);
  APedido.infNFe.dest.enderDest.cPais := '1058';
  APedido.infNFe.dest.enderDest.xPais := 'BRASIL';
  APedido.infNFe.dest.enderDest.fone := SomenteNumeros(ADM.cdsClienteTELEFONE.AsString);
end;

procedure TNuvemFiscalService.PreencherItens(ADM: Tdm; APedido: TNfePedidoEmissao; AModelo: Integer);
var
  Bookmark: TBookmark;
  Det: TNfeSefazDet;
  VTotalTrib: Double;
begin
  Bookmark := ADM.cdsItem.GetBookmark;
  try
    ADM.cdsItem.DisableControls;
    ADM.cdsItem.First;
    while not ADM.cdsItem.Eof do
    begin
      if ADM.cdsItemCODIGONOTA.AsInteger = ADM.cdsNotaCODIGO.AsInteger then
      begin
        Det := TNfeSefazDet.Create;
        Det.nItem := ADM.cdsItemITEM.AsInteger;

        Det.prod.cProd := ADM.cdsItemCODIGOPRODUTO.AsString;
        Det.prod.cEAN := 'SEM GTIN';
        Det.prod.xProd := CampoOuVazio(ADM.cdsItemDESCRICAO.AsString);
        Det.prod.NCM := IfThen(Trim(ADM.cdsItemNCM.AsString) <> '', ADM.cdsItemNCM.AsString, '00');
        if Trim(ADM.cdsItemCEST.AsString) <> '' then
          Det.prod.CEST := ADM.cdsItemCEST.AsString;
        Det.prod.CFOP := '5102';
        Det.prod.uCom := IfThen(Trim(ADM.cdsItemUNIDADE.AsString) <> '', ADM.cdsItemUNIDADE.AsString, 'UN');
        Det.prod.qCom := ADM.cdsItemQUANTIDADE.AsFloat;
        Det.prod.vUnCom := ADM.cdsItemVALOR.AsFloat;
        Det.prod.vProd := ADM.cdsItemTOTAL.AsFloat + ADM.cdsItemDESCONTO.AsFloat;
        Det.prod.cEANTrib := 'SEM GTIN';
        Det.prod.uTrib := Det.prod.uCom;
        Det.prod.qTrib := Det.prod.qCom;
        Det.prod.vUnTrib := Det.prod.vUnCom;
        if ADM.cdsItemDESCONTO.AsFloat > 0 then
          Det.prod.vDesc := ADM.cdsItemDESCONTO.AsFloat;
        Det.prod.indTot := 1;
        Det.vItem := ADM.cdsItemTOTAL.AsFloat;

        VTotalTrib :=
          (ADM.cdsItemTOTAL.AsFloat * (ADM.cdsItemALIQFEDNACIONAL.AsFloat / 100)) +
          (ADM.cdsItemTOTAL.AsFloat * (ADM.cdsItemALIQESTADUAL.AsFloat / 100)) +
          (ADM.cdsItemTOTAL.AsFloat * (ADM.cdsItemALIQMUNICIPAL.AsFloat / 100));

        Det.imposto.vTotTrib := VTotalTrib;

        // Simples Nacional - CSOSN 102
        Det.imposto.ICMS.ICMSSN102 := TNfeSefazICMSSN102.Create;
        Det.imposto.ICMS.ICMSSN102.orig := 0;
        Det.imposto.ICMS.ICMSSN102.CSOSN := '102';

        // PIS 99
        Det.imposto.PIS.PISOutr := TNfeSefazPISOutr.Create;
        Det.imposto.PIS.PISOutr.CST := '99';
        Det.imposto.PIS.PISOutr.vBC := 0;
        Det.imposto.PIS.PISOutr.pPIS := 0;
        Det.imposto.PIS.PISOutr.vPIS := 0;

        // COFINS 99
        Det.imposto.COFINS.COFINSOutr := TNfeSefazCOFINSOutr.Create;
        Det.imposto.COFINS.COFINSOutr.CST := '99';
        Det.imposto.COFINS.COFINSOutr.vBC := 0;
        Det.imposto.COFINS.COFINSOutr.pCOFINS := 0;
        Det.imposto.COFINS.COFINSOutr.vCOFINS := 0;

        APedido.infNFe.det.Add(Det);
      end;

      ADM.cdsItem.Next;
    end;
  finally
    if ADM.cdsItem.BookmarkValid(Bookmark) then
      ADM.cdsItem.GotoBookmark(Bookmark);
    ADM.cdsItem.FreeBookmark(Bookmark);
    ADM.cdsItem.EnableControls;
  end;
end;

procedure TNuvemFiscalService.PreencherTotais(ADM: Tdm; APedido: TNfePedidoEmissao);
var
  TotalTrib: Double;
  Bookmark: TBookmark;
begin
  TotalTrib := 0;

  Bookmark := ADM.cdsItem.GetBookmark;
  try
    ADM.cdsItem.DisableControls;
    ADM.cdsItem.First;
    while not ADM.cdsItem.Eof do
    begin
      if ADM.cdsItemCODIGONOTA.AsInteger = ADM.cdsNotaCODIGO.AsInteger then
      begin
        TotalTrib := TotalTrib +
          (ADM.cdsItemTOTAL.AsFloat * (ADM.cdsItemALIQFEDNACIONAL.AsFloat / 100)) +
          (ADM.cdsItemTOTAL.AsFloat * (ADM.cdsItemALIQESTADUAL.AsFloat / 100)) +
          (ADM.cdsItemTOTAL.AsFloat * (ADM.cdsItemALIQMUNICIPAL.AsFloat / 100));
      end;
      ADM.cdsItem.Next;
    end;
  finally
    if ADM.cdsItem.BookmarkValid(Bookmark) then
      ADM.cdsItem.GotoBookmark(Bookmark);
    ADM.cdsItem.FreeBookmark(Bookmark);
    ADM.cdsItem.EnableControls;
  end;

  APedido.infNFe.total.ICMSTot.vBC := 0;
  APedido.infNFe.total.ICMSTot.vICMS := 0;
  APedido.infNFe.total.ICMSTot.vBCST := 0;
  APedido.infNFe.total.ICMSTot.vST := 0;
  APedido.infNFe.total.ICMSTot.vProd := ADM.cdsNotaTOTAL.AsFloat + 0;
  APedido.infNFe.total.ICMSTot.vFrete := 0;
  APedido.infNFe.total.ICMSTot.vSeg := 0;
  APedido.infNFe.total.ICMSTot.vDesc := 0;
  APedido.infNFe.total.ICMSTot.vII := 0;
  APedido.infNFe.total.ICMSTot.vIPI := 0;
  APedido.infNFe.total.ICMSTot.vPIS := 0;
  APedido.infNFe.total.ICMSTot.vCOFINS := 0;
  APedido.infNFe.total.ICMSTot.vOutro := 0;
  APedido.infNFe.total.ICMSTot.vNF := ADM.cdsNotaTOTAL.AsFloat;
  APedido.infNFe.total.ICMSTot.vTotTrib := TotalTrib;
end;

procedure TNuvemFiscalService.PreencherPagamento(ADM: Tdm; APedido: TNfePedidoEmissao; AModelo: Integer);
var
  DetPag: TNfeSefazDetPag;
begin
  APedido.infNFe.transp.modFrete := 9; // sem frete

  DetPag := TNfeSefazDetPag.Create;
  DetPag.indPag := 0; // à vista
  DetPag.tPag := '01'; // dinheiro
  DetPag.vPag := ADM.cdsNotaTOTAL.AsFloat;
  APedido.infNFe.pag.detPag.Add(DetPag);
end;

function TNuvemFiscalService.MontarPedido(ADM: Tdm; AModelo: Integer; AHomologacao: Boolean): TNfePedidoEmissao;
begin
  Result := TNfePedidoEmissao.Create;
  Result.ambiente := AmbienteToTexto(AHomologacao);
  Result.referencia := Format('%d-%d-%d', [ADM.cdsNotaCODIGO.AsInteger, AModelo, ADM.cdsNotaNUMERO.AsInteger]);

  Result.infNFe.ide.cUF := StrToIntDef(Copy(SomenteNumeros(ADM.cdsEmitenteIBGE.AsString), 1, 2), 41);
  Result.infNFe.ide.natOp := 'VENDA';
  Result.infNFe.ide.&mod := AModelo;
  Result.infNFe.ide.serie := ADM.cdsNotaSERIE.AsInteger;
  if Result.infNFe.ide.serie = 0 then
    Result.infNFe.ide.serie := 1;
  Result.infNFe.ide.nNF := ADM.cdsNotaNUMERO.AsInteger;
  Result.infNFe.ide.dhEmi := Now;
  Result.infNFe.ide.tpNF := 1; // saída
  Result.infNFe.ide.idDest := 1; // interna
  Result.infNFe.ide.cMunFG := SomenteNumeros(ADM.cdsEmitenteIBGE.AsString);
  Result.infNFe.ide.tpImp := IfThen(AModelo = 65, 4, 1);
  Result.infNFe.ide.tpEmis := 1;
  if AHomologacao then
    Result.infNFe.ide.tpAmb := 2
  else
    Result.infNFe.ide.tpAmb := 1;
  Result.infNFe.ide.finNFe := 1;
  Result.infNFe.ide.indFinal := IfThen(AModelo = 65, 1, 0);
  Result.infNFe.ide.indPres := IfThen(AModelo = 65, 1, 0);
  Result.infNFe.ide.procEmi := 0;
  Result.infNFe.ide.verProc := '1.0.0';

  PreencherEmitente(ADM, Result);
  PreencherDestinatario(ADM, Result);
  PreencherItens(ADM, Result, AModelo);
  PreencherTotais(ADM, Result);
  PreencherPagamento(ADM, Result, AModelo);
end;

function TNuvemFiscalService.EmitirNota(ADM: Tdm; AModelo: Integer; AHomologacao: Boolean): TNuvemFiscalRetornoEmissao;
var
  Client: TNuvemFiscalClient;
  Pedido: TNfePedidoEmissao;
  Dfe: TDfe;
begin
  Result := TNuvemFiscalRetornoEmissao.Create;
  Client := CreateClient;
  Pedido := MontarPedido(ADM, AModelo, AHomologacao);
  try
    Dfe := Client.Nfe.EmitirNfe(Pedido);
    try
      Result.Id := Dfe.id;
      Result.Status := Dfe.status;
      Result.Chave := Dfe.chave;
      Result.Mensagem := 'Documento recebido pela API da Nuvem Fiscal.';
    finally
      Dfe.Free;
    end;
  finally
    Pedido.Free;
    Client.Free;
  end;
end;

function TNuvemFiscalService.ConsultarNota(const AId: string): TDfe;
var
  Client: TNuvemFiscalClient;
begin
  Client := CreateClient;
  try
    Result := Client.Nfe.ConsultarNfe(AId);
  finally
    Client.Free;
  end;
end;

function TNuvemFiscalService.CancelarNota(const AId, AJustificativa: string): TDfeCancelamento;
var
  Client: TNuvemFiscalClient;
  Pedido: TNfePedidoCancelamento;
begin
  Client := CreateClient;
  Pedido := TNfePedidoCancelamento.Create;
  try
    Pedido.justificativa := AJustificativa;
    Result := Client.Nfe.CancelarNfe(Pedido, AId);
  finally
    Pedido.Free;
    Client.Free;
  end;
end;

function TNuvemFiscalService.CriarCartaCorrecao(const AId, ACorrecao: string): TDfeCartaCorrecao;
var
  Client: TNuvemFiscalClient;
  Pedido: TNfePedidoCartaCorrecao;
begin
  Client := CreateClient;
  Pedido := TNfePedidoCartaCorrecao.Create;
  try
    Pedido.correcao := ACorrecao;
    Result := Client.Nfe.CriarCartaCorrecaoNfe(Pedido, AId);
  finally
    Pedido.Free;
    Client.Free;
  end;
end;

function TNuvemFiscalService.BaixarXml(const AId: string): TBytes;
var
  Client: TNuvemFiscalClient;
begin
  Client := CreateClient;
  try
    Result := Client.Nfe.BaixarXmlNfe(AId);
  finally
    Client.Free;
  end;
end;

function TNuvemFiscalService.BaixarPdf(const AId: string): TBytes;
var
  Client: TNuvemFiscalClient;
begin
  Client := CreateClient;
  try
    Result := Client.Nfe.BaixarPdfNfe(AId, True, True, 'padrao', '', True);
  finally
    Client.Free;
  end;
end;

function TNuvemFiscalService.EnviarEmail(const AId, AEmail: string): TEmailStatusResponse;
var
  Client: TNuvemFiscalClient;
  Pedido: TDfePedidoEnvioEmail;
  Endereco: TEnderecoEmail;
begin
  Client := CreateClient;
  Pedido := TDfePedidoEnvioEmail.Create;
  try
    Pedido.destinatarios := TEnderecoEmailList.Create;
    if Trim(AEmail) <> '' then
    begin
      Endereco := TEnderecoEmail.Create;
      Endereco.email := AEmail;
      Pedido.destinatarios.Add(Endereco);
    end;
    Result := Client.Nfe.EnviarEmailNfe(Pedido, AId);
  finally
    Pedido.Free;
    Client.Free;
  end;
end;

end.
