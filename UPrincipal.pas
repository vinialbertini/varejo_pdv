unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, Vcl.ExtCtrls, RzBckgnd,
  RzPanel, dxGDIPlusClasses, cxTextEdit, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Grids, Vcl.DBGrids, RzButton,
  RzLine, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, MIDASLIB;

type
  TfmPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnClienteVenda: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGrid1: TDBGrid;
    Panel11: TPanel;
    Panel13: TPanel;
    edCodigo: TEdit;
    Label3: TLabel;
    edQuantidade: TEdit;
    Label5: TLabel;
    edTotal: TEdit;
    Label6: TLabel;
    edDesconto: TEdit;
    Label7: TLabel;
    edValor: TEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    Panel7: TPanel;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    RzToolButton8: TRzToolButton;
    Panel8: TPanel;
    RzToolButton9: TRzToolButton;
    pnStatus: TPanel;
    Panel14: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    edSubTotal: TEdit;
    Label4: TLabel;
    RzLine1: TRzLine;
    Panel2: TPanel;
    edDescricao: TcxLookupComboBox;
    RzBackground1: TRzBackground;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure edQuantidadeExit(Sender: TObject);
    procedure edDescontoExit(Sender: TObject);
    procedure edTotalExit(Sender: TObject);
    procedure Modelo;
    procedure RadioGroup1Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RadioGroup1Exit(Sender: TObject);
    procedure EmitirNFE;
    procedure EmitirNFCe;
    procedure LerConfiguracoesNFE;
    procedure GerarNFe(NumNFe : String);
    procedure GerarNFCe(NumNFe : string);
    procedure FiltroZero;
    procedure LimparCampos;
    procedure edCodigoChange(Sender: TObject);
    procedure edQuantidadeChange(Sender: TObject);
    procedure edValorChange(Sender: TObject);
    procedure edDescontoChange(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure AtribuiItem;
    procedure edValorExit(Sender: TObject);
    procedure StatusItem;
    procedure edDescricaoExit(Sender: TObject);
    procedure edDescricaoPropertiesChange(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure edDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edTotalKeyPress(Sender: TObject; var Key: Char);
    procedure EmitePedido(Codigo:Integer) ;
    procedure edDescricaoEnter(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
  private
    { Private declarations }
    grafico: TBitmap;

  public
    { Public declarations }
    pItem : integer;
    pCodNota: integer;
    pCodItem: integer;
    pDocumento, pNCM, pCEST:string;
    AliqNacional, AliqEstadual,AliqImportado,AliqMunicipal:real;

  end;

var
  fmPrincipal: TfmPrincipal;
  pGravaProduto:boolean = false;
implementation

{$R *.dfm}

uses UEmitente, UCliente, UProduto, UPesquisaCliente, UPesquisaProduto, UDM,
  UItem, UPesquisaNota, UNuvemFiscalService;


procedure TfmPrincipal.AtribuiItem;
begin
  if (dm.cdsItem.State in [dsEdit,dsInsert]) then
  begin
    if dm.cdsItemITEM.AsString = EmptyStr then
      inc(pItem);
    dm.cdsItemCODIGONOTA.Value := dm.cdsNotaCODIGO.Value;
    dm.cdsItemDESCRICAO.Value := edDescricao.Text;
    dm.cdsItemCODIGOPRODUTO.AsString := edCodigo.Text;
    dm.cdsItemITEM.Value := pItem;
    dm.cdsItemCEST.Value := pCEST;
    dm.cdsItemNCM.Value := pNCM;
    dm.cdsItemALIQFEDNACIONAL.Value := AliqNacional;
    dm.cdsItemALIQFEDIMPORTADO.Value := AliqImportado;
    dm.cdsItemALIQESTADUAL.Value := AliqEstadual;
    dm.cdsItemALIQMUNICIPAL.Value := AliqMunicipal;
    if edQuantidade.Text <> EmptyStr then
      dm.cdsItemQUANTIDADE.AsCurrency := StrToFloat(edQuantidade.Text);
    if edValor.Text <> EmptyStr then
      dm.cdsItemVALOR.AsCurrency := StrToFloat(edValor.Text);
    if edDesconto.Text <> EmptyStr then
    begin
      dm.cdsItemDESCONTO.AsCurrency := StrToFloat(edDesconto.Text);
      if StrToFloat(edDesconto.Text) > 0 then
        dm.cdsItemDESCRDESCONTO.Value := 'Desconto no Item ' + dm.cdsItemItem.AsString+ ' - '+ dm.cdsItemDESCONTO.AsString;
    end;
    if edTotal.Text <> EmptyStr then
      dm.cdsItemTOTAL.AsCurrency := StrToFloat(edTotal.Text);
  end;
end;

procedure TfmPrincipal.edCodigoChange(Sender: TObject);
begin
  StatusItem;
end;

procedure TfmPrincipal.edCodigoEnter(Sender: TObject);
begin
  if not dm.cdsProduto.Active then
     dm.cdsProduto.Open;
end;

procedure TfmPrincipal.edCodigoExit(Sender: TObject);
begin
      if edCodigo.Text <> EmptyStr then
  begin
    if dm.cdsProduto.Locate('Codigo',edCodigo.Text,[]) then
    begin
      if RadioGroup1.ItemIndex = 1 then
      begin
        if (dm.cdsProdutoCEST.Value = EmptyStr) or (dm.cdsProdutoNCM.AsString = EmptyStr) then
        begin
          Application.MessageBox('Tipo de emissão requer a informação de CEST e NCM!','Emissor',MB_ICONERROR);
          LimparCampos;
          edDescricao.SetFocus;
          Exit
        end;
      end;

      if dm.cdsItem.Locate('CodigoProduto',edCodigo.Text,[]) then
      begin
        dm.cdsItem.Edit;
      end;
      if (dm.cdsItem.State <> dsEdit) and (dm.cdsItem.State <> dsInsert) then
        dm.cdsItem.Append;
      edDescricao.Text := dm.cdsProdutoDESCRICAO.Value;
      edQuantidade.Text := '1,00';
      edValor.Text := FormatFloat('#0.00',dm.cdsProdutoVALOR.AsCurrency);
      edDesconto.Text := '0,00';
      edTotal.Text := FormatFloat('#0.00',dm.cdsProdutoVALOR.AsCurrency);
      pCEST := dm.cdsProdutoCEST.Value;
      pNCM := dm.cdsProdutoNCM.AsString;

      AliqNacional := dm.cdsProdutoALIQFEDNACIONAL.Value;
      AliqEstadual := dm.cdsProdutoALIQESTADUAL.Value;
      AliqMunicipal := dm.cdsProdutoALIQMUNICIPAL.Value;
      AliqImportado := dm.cdsProdutoALIQFEDIMPORTADO.Value;
      //edSubTotal.Text := FormatFloat('#0.00',dm.cdsProdutoVALOR.AsCurrency);
    end
      else
  begin
    if (dm.cdsItem.State <> dsEdit) and (dm.cdsItem.State <> dsInsert) then
      dm.cdsItem.Append;
    pGravaProduto := true;
    edQuantidade.Text := '1,00';
    edValor.Text := FormatFloat('#0.00',0);
    edDesconto.Text := '0,00';
    edTotal.Text := FormatFloat('#0.00',0);
  end;
  end;
  //AtribuiItem;
end;

procedure TfmPrincipal.edDescontoChange(Sender: TObject);
begin
  StatusItem;
end;

procedure TfmPrincipal.edDescontoExit(Sender: TObject);
begin
  //AtribuiItem;
  if (edDesconto.Text <> EmptyStr) and (edQuantidade.Text <> EmptyStr) and (edValor.Text <> EmptyStr) then
  begin
    edTotal.Text := FormatFloat('#0.00',StrToFloat(edQuantidade.Text) * (StrToFloat(edValor.Text))-StrToFloat(edDesconto.Text));
//    dm.cdsItemQUANTIDADE.AsCurrency := StrToFloat(edQuantidade.Text);
//    dm.cdsItemVALOR.Value := StrToFloat(edValor.Text) ;
//    dm.cdsItemTOTAL.Value :=  StrToFloat(edTotal.Text)  ;
//    dm.cdsItemDESCONTO.Value := StrToFloat(edDesconto.Text);
//    dm.cdsItemDESCRDESCONTO.Value := 'Desconto no Item ' + dm.cdsItemItem.AsString+ ' - '+ dm.cdsItemDESCONTO.AsString;
  end;
  if (edDesconto.Text <> EmptyStr) then
  begin
    edDesconto.Text := FormatFloat('#0.00',StrToFloat(edDesconto.Text));
  end
  else
  edDesconto.Text := '0,00';
end;

procedure TfmPrincipal.edDescontoKeyPress(Sender: TObject; var Key: Char);
begin
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

procedure TfmPrincipal.edDescricaoEnter(Sender: TObject);
begin
  if not dm.cdsProduto.Active then
     dm.cdsProduto.Open;
end;

procedure TfmPrincipal.edDescricaoExit(Sender: TObject);
begin
  if edDescricao.Text <> EmptyStr then
  begin
    if dm.cdsProduto.Locate('Descricao',edDescricao.Text,[]) then
    begin
      if RadioGroup1.ItemIndex = 1 then
      begin
        if (dm.cdsProdutoCEST.Value = EmptyStr) or (dm.cdsProdutoNCM.AsString = EmptyStr) then
        begin
          Application.MessageBox('Tipo de emissão requer a informação de CEST e NCM!','Emissor',MB_ICONERROR);
          LimparCampos;
          edDescricao.SetFocus;
          Exit
        end;
      end;

      if dm.cdsItem.Locate('Descricao',edDescricao.Text,[]) then
      begin
        dm.cdsItem.Edit;
      end;
      if (dm.cdsItem.State <> dsEdit) and (dm.cdsItem.State <> dsInsert) then
        dm.cdsItem.Append;
      edCodigo.Text := dm.cdsProdutoCODIGO.AsString;
      edQuantidade.Text := '1,00';
      edValor.Text := FormatFloat('#0.00',dm.cdsProdutoVALOR.AsCurrency);
      edDesconto.Text := '0,00';
      edTotal.Text := FormatFloat('#0.00',dm.cdsProdutoVALOR.AsCurrency);
      pCEST := dm.cdsProdutoCEST.Value;
      pNCM := dm.cdsProdutoNCM.AsString;

      AliqNacional := dm.cdsProdutoALIQFEDNACIONAL.Value;
      AliqEstadual := dm.cdsProdutoALIQESTADUAL.Value;
      AliqMunicipal := dm.cdsProdutoALIQMUNICIPAL.Value;
      AliqImportado := dm.cdsProdutoALIQFEDIMPORTADO.Value;
      //edSubTotal.Text := FormatFloat('#0.00',dm.cdsProdutoVALOR.AsCurrency);
    end
    else
    begin
      if (dm.cdsItem.State <> dsEdit) and (dm.cdsItem.State <> dsInsert) then
        dm.cdsItem.Append;
      pGravaProduto := true;
      dm.cdsMaxProduto.Close;
      dm.cdsMaxProduto.Open;
      edCodigo.Text := IntToStr(dm.cdsMaxProdutoMAX.Value+1);
      edQuantidade.Text := '1,00';
      edValor.Text := FormatFloat('#0.00',0);
      edDesconto.Text := '0,00';
      edTotal.Text := FormatFloat('#0.00',0);
    end;
    //AtribuiItem;
    edCodigo.SetFocus;
  end;
end;

procedure TfmPrincipal.edDescricaoPropertiesChange(Sender: TObject);
begin
  StatusItem;
end;

procedure TfmPrincipal.edQuantidadeChange(Sender: TObject);
begin
  StatusItem;
end;

procedure TfmPrincipal.edQuantidadeExit(Sender: TObject);
begin
  //AtribuiItem;
  if (edQuantidade.Text <> EmptyStr) and (edValor.Text <> EmptyStr) then
  begin
    edTotal.Text := FormatFloat('#0.00',StrToFloat(edQuantidade.Text) * StrToFloat(edValor.Text));
//  dm.cdsItemQUANTIDADE.AsCurrency := StrToFloat(edQuantidade.Text);
//  dm.cdsItemVALOR.Value := StrToFloat(edValor.Text) ;
//  dm.cdsItemTOTAL.Value :=  StrToFloat(edTotal.Text);
  end;
  if (edQuantidade.Text <> EmptyStr) then
  begin
    edQuantidade.Text := FormatFloat('#0.00',StrToFloat(edQuantidade.Text));
  end
  else
   edQuantidade.Text := '0,00';
end;

procedure TfmPrincipal.edQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

procedure TfmPrincipal.edTotalExit(Sender: TObject);
var Total:Double;
begin
  Total := 0;
  if (edTotal.Text <> EmptyStr) then
  begin
    edTotal.Text := FormatFloat('#0.00',StrToFloat(edTotal.Text));
  end
  else
  edTotal.Text := '0,00';
  if edCodigo.Text = EmptyStr then
  begin
    Application.MessageBox('Não é possível incluir item sem código!','Só Emissor',MB_ICONERROR);
    edCodigo.SetFocus;
    Exit;
  end;
  if edDescricao.Text = EmptyStr then
  begin
    Application.MessageBox('Não é possível incluir item sem descrição!','Só Emissor',MB_ICONERROR);
    edDescricao.SetFocus;
    Exit;
  end;

  if edQuantidade.Text <> EmptyStr then
  begin
    if StrToFloat(edQuantidade.Text) <= 0 then
    begin
      Application.MessageBox('Não é possível incluir item sem quantidade!','Só Emissor',MB_ICONERROR);
      edQuantidade.SetFocus;
      Exit;
    end;
  end;
  if edQuantidade.Text = EmptyStr then
  begin
    Application.MessageBox('Não é possível incluir item sem quantidade!','Só Emissor',MB_ICONERROR);
    edQuantidade.SetFocus;
    Exit;
  end;

  if edValor.Text <> EmptyStr then
  begin
    if StrToFloat(edValor.Text) <= 0 then
    begin
      Application.MessageBox('Não é possível incluir item sem valor!','Só Emissor',MB_ICONERROR);
      edValor.SetFocus;
      Exit;
    end;
  end;

  if edValor.Text = EmptyStr then
  begin
    Application.MessageBox('Não é possível incluir item sem valor!','Só Emissor',MB_ICONERROR);
    edValor.SetFocus;
    Exit;
  end;


  if edCodigo.Text <> EmptyStr then
  begin
    AtribuiItem;
    dm.cdsNotaTOTAL.Value := dm.cdsNotaTOTAL.Value + dm.cdsItemTOTAL.Value;
    edSubTotal.Text := FormatFloat('#0.00',dm.cdsNotaTOTAL.Value);
    if (dm.cdsItem.State in [dsInsert, dsEdit]) then
    begin
      dm.cdsItem.Post;
      dm.cdsItem.ApplyUpdates(0);
    end;
    dm.cdsItem.Filtered := false;
    dm.cdsItem.Filter := 'CodigoNota ='+dm.cdsNotaCODIGO.AsString;
    dm.cdsItem.Filtered := true;
    dm.cdsItem.First;
    while not dm.cdsItem.Eof do
    begin
      Total := Total + dm.cdsItemTOTAL.Value;
      dm.cdsItem.Next;
    end;
    edSubTotal.Text := FormatFloat('#0.00',Total);
  end;
  if pGravaProduto then
  begin
    dm.cdsProduto.Append;
    dm.cdsProdutoCODIGO.AsString := edCodigo.Text;
    dm.cdsProdutoDESCRICAO.AsString := edDescricao.Text;
    dm.cdsProdutoVALOR.AsString := edValor.Text;
    dm.cdsProdutoUNIDADE.AsString := 'UN';
    dm.cdsProduto.Post;
    dm.cdsProduto.ApplyUpdates(0) ;
    pGravaProduto := false;
  end;
  LimparCampos;
  edDescricao.SetFocus;
  //dm.cdsItem.Append;
end;

procedure TfmPrincipal.edTotalKeyPress(Sender: TObject; var Key: Char);
begin
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

procedure TfmPrincipal.edValorChange(Sender: TObject);
begin
  StatusItem;
end;

procedure TfmPrincipal.edValorExit(Sender: TObject);
begin
  //AtribuiItem;
  if (edValor.Text <> EmptyStr) and (edQuantidade.Text <> EmptyStr) then
  begin
    edTotal.Text := FormatFloat('#0.00',StrToFloat(edQuantidade.Text) * StrToFloat(edValor.Text));
//  dm.cdsItemQUANTIDADE.AsCurrency := StrToFloat(edQuantidade.Text);
//  dm.cdsItemVALOR.Value := StrToFloat(edValor.Text) ;
//  dm.cdsItemTOTAL.Value :=  StrToFloat(edTotal.Text);
  end;
  if (edValor.Text <> EmptyStr) then
  begin
    edValor.Text := FormatFloat('#0.00',StrToFloat(edValor.Text));
  end
  else
   edValor.Text := '0,00';

end;

procedure TfmPrincipal.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

procedure TfmPrincipal.FiltroZero;
begin
  dm.cdsItem.Filtered := false;
  dm.cdsItem.Filter := 'CodigoNota = 0';
  dm.cdsItem.Filtered := true;
end;

procedure TfmPrincipal.FormCreate(Sender: TObject);
begin
  //MakeRounded(Panel1);
  //grafico := TBitmap.Create;
  //grafico.LoadFromFile('C:\image.bmp');
  //Self.OnPaint := FormPaint;
  dm.cdsProduto.Open;
  if not dm.cdsEmitente.Active then
    dm.cdsEmitente.Open;
  Label8.Caption := 'Empresa: ' +dm.cdsEmitenteFANTASIA.Value;
end;

procedure TfmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1 then
    RzToolButton2.Click;
  if key = vk_f2 then
    RzToolButton3.Click;
  if key = vk_f5 then
    RzToolButton1.Click;
  if key = vk_f3 then
    RzToolButton4.Click;
  if key = vk_f4 then
    RzToolButton9.Click;
end;

procedure TfmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfmPrincipal.FormShow(Sender: TObject);
begin
  dm.cdsNota.Append;
  pItem := 0;
  pCodNota := dm.cdsNotaCODIGO.Value;
  RadioGroup2.Width := Screen.Width - 306-27-27-27;

  RzBackground1.Width := Screen.Width;
  RzBackground1.Height := Screen.Height;


  edDescricao.SetFocus;
end;


procedure TfmPrincipal.GerarNFCe(NumNFe: string);
begin
  // Mantido por compatibilidade.
  // O payload é montado e enviado diretamente por TNuvemFiscalService.
end;

procedure TfmPrincipal.GerarNFe(NumNFe: String);
begin
  // Mantido por compatibilidade.
  // O payload é montado e enviado diretamente por TNuvemFiscalService.
end;

procedure TfmPrincipal.LerConfiguracoesNFE;
begin
  // Mantido por compatibilidade com chamadas existentes.
  // A configuração de autenticação/certificado agora é responsabilidade do
  // serviço da Nuvem Fiscal (UNuvemFiscalService) e do cadastro da empresa
  // dentro da própria plataforma.
end;

procedure TfmPrincipal.LimparCampos;
begin
  edDescricao.Clear;
  edCodigo.Clear;
  edQuantidade.Clear;
  edTotal.Clear;
  edValor.Clear;
  edDesconto.Clear;
  pCEST := EmptyStr;
  pNCM := EmptyStr;
  AliqNacional := 0;
  AliqEstadual := 0;
  AliqImportado := 0;
  AliqMunicipal := 0;
  pDocumento := EmptyStr;
end;

procedure TfmPrincipal.Modelo;
begin
  if RadioGroup1.ItemIndex = 0 then
    dm.cdsNotaMODELO.Value := 55;
  if RadioGroup1.ItemIndex = 1 then
    dm.cdsNotaMODELO.Value := 65;
end;

procedure TfmPrincipal.EmitePedido(Codigo: Integer);
begin
  try
    dm.frxReport1.ShowReport;
  finally

  end;
end;

procedure TfmPrincipal.EmitirNFCe;
var
  Service: TNuvemFiscalService;
  Retorno: TNuvemFiscalRetornoEmissao;
begin
  Service := TNuvemFiscalService.Create;
  try
    Retorno := Service.EmitirNota(dm, 65, RadioGroup2.ItemIndex = 0);
    try
      if Retorno.Chave <> EmptyStr then
        dm.cdsNotaCHAVE.AsString := Retorno.Chave;

      if not (dm.cdsNota.State in [dsEdit, dsInsert]) then
        dm.cdsNota.Edit;

      dm.cdsNotaSITUACAO.AsString := UpperCase(Retorno.Status);
      dm.cdsNotaDOCUMENTO.AsString := Retorno.Id;

      if dm.cdsNota.ChangeCount > 0 then
        dm.cdsNota.Post;

      ShowMessage(
        'NFC-e enviada para a Nuvem Fiscal.' + sLineBreak +
        'ID: ' + Retorno.Id + sLineBreak +
        'Status: ' + Retorno.Status + sLineBreak +
        'Chave: ' + Retorno.Chave + sLineBreak +
        Retorno.Mensagem
      );
    finally
      Retorno.Free;
    end;
  finally
    Service.Free;
  end;
end;

procedure TfmPrincipal.EmitirNFE;
var
  Service: TNuvemFiscalService;
  Retorno: TNuvemFiscalRetornoEmissao;
begin
  Service := TNuvemFiscalService.Create;
  try
    Retorno := Service.EmitirNota(dm, 55, RadioGroup2.ItemIndex = 0);
    try
      if Retorno.Chave <> EmptyStr then
        dm.cdsNotaCHAVE.AsString := Retorno.Chave;

      if not (dm.cdsNota.State in [dsEdit, dsInsert]) then
        dm.cdsNota.Edit;

      dm.cdsNotaSITUACAO.AsString := UpperCase(Retorno.Status);
      dm.cdsNotaDOCUMENTO.AsString := Retorno.Id;

      if dm.cdsNota.ChangeCount > 0 then
        dm.cdsNota.Post;

      ShowMessage(
        'NF-e enviada para a Nuvem Fiscal.' + sLineBreak +
        'ID: ' + Retorno.Id + sLineBreak +
        'Status: ' + Retorno.Status + sLineBreak +
        'Chave: ' + Retorno.Chave + sLineBreak +
        Retorno.Mensagem
      );
    finally
      Retorno.Free;
    end;
  finally
    Service.Free;
  end;
end;

procedure TfmPrincipal.RadioGroup1Click(Sender: TObject);
begin
  if (dm.cdsNota.State in [dsEdit,dsInsert]) then
  begin
    if RadioGroup1.ItemIndex = 0 then
    begin
      //dm.cdsNotaMODELO.Value := 55;
      //Application.MessageBox('Opção indisponível no momento.','Só Emissor',MB_ICONWARNING);
      RadioGroup1.ItemIndex := 1;
      dm.cdsNotaMODELO.Value := 65;
      //exit;
    end
    else
    if RadioGroup1.ItemIndex = 0 then
      dm.cdsNotaMODELO.Value := 65
    else
     if RadioGroup1.ItemIndex = 2 then
       dm.cdsNotaMODELO.Value := 0;
  end;
  LimparCampos;
end;

procedure TfmPrincipal.RadioGroup1Exit(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 1) and (pDocumento = EmptyStr)then
  begin
    if Application.MessageBox('Deseja colocar CPF na nota?','Emissor',36)=6 then
    begin
      pDocumento :=  InputBox('Emissor','CPF na nota','');
      pnClienteVenda.Caption := 'Venda - '+pDocumento+' CONSUMIDOR';
    end
    ELSE
    pnClienteVenda.Caption := 'Venda - CONSUMIDOR';

  end;
end;

procedure TfmPrincipal.RzToolButton1Click(Sender: TObject);
begin
  if (dm.cdsItem.State in [dsInsert, dsEdit]) then
    dm.cdsNotaSITUACAO.Value := 'CANCELADA NA VENDA';

  dm.cdsItem.Cancel;
  if dm.cdsItem.RecordCount > 0  then
  begin
    dm.cdsItem.Close;
    dm.sqlDeletaItem.SQL.Clear;
    dm.sqlDeletaItem.SQL.Add('delete from item where codigonota ='+dm.cdsNotaCODIGO.AsString);
    dm.sqlDeletaItem.ExecSQL;
    dm.cdsItem.Open;
  end;
  dm.cdsNota.Cancel;
  LimparCampos;
  edSubTotal.Clear;
  pnClienteVenda.Caption := '   Venda';
  //RadioGroup1.ItemIndex := 2;
  FiltroZero;
  dm.cdsNota.Append;
end;

procedure TfmPrincipal.RzToolButton2Click(Sender: TObject);
begin
  fmPesquisaCliente := TfmPesquisaCliente.Create(nil);
  fmPesquisaCliente.ShowModal;
  if (dm.cdsNota.State <> dsEdit) and (dm.cdsNota.State <> dsInsert) then
    dm.cdsNota.Append;
  dm.cdsNotaDOCUMENTO.Value := pDocumento;
  dm.cdsNotaCODIGOCLIENTE.Value := dm.cdsClienteCODIGO.Value;
   if RadioGroup1.ItemIndex = 0 then
    dm.cdsNotaMODELO.Value := 55;
   if RadioGroup1.ItemIndex = 1 then
    dm.cdsNotaMODELO.Value := 65;

end;

procedure TfmPrincipal.RzToolButton3Click(Sender: TObject);
begin
  fmPesquisaProduto := TfmPesquisaProduto.Create(nil);
  fmPesquisaProduto.ShowModal;
  dm.cdsItem.Filtered := false;
  dm.cdsItem.Filter := 'CodigoNota ='+dm.cdsNotaCODIGO.AsString;
  dm.cdsItem.Filtered := true;
  if fmPrincipal.edCodigo.Text <> EmptyStr then
  begin

    if dm.cdsItem.Locate('CodigoProduto',fmPrincipal.edCodigo.Text,[]) then
    begin
      dm.cdsItem.Edit;
      dm.cdsItemQUANTIDADE.AsCurrency := dm.cdsItemQUANTIDADE.AsCurrency +
                                         StrToFloat(fmPrincipal.edQuantidade.Text);
      dm.cdsItemVALOR.AsCurrency := dm.cdsItemVALOR.AsCurrency;
      dm.cdsItemTOTAL.AsCurrency := dm.cdsItemTOTAL.AsCurrency;
      edQuantidade.Text := FormatFloat('#0.00', dm.cdsItemQUANTIDADE.AsCurrency);
      edValor.Text := FormatFloat('#0.00', dm.cdsItemVALOR.AsCurrency);
      edTotal.Text := FormatFloat('#0.00', dm.cdsItemTOTAL.AsCurrency);
    end
    else
    begin
      if (dm.cdsItem.State <> dsEdit) and (dm.cdsItem.State <> dsInsert) then
        dm.cdsItem.Append;
      inc(pItem);
      dm.cdsItemCODIGONOTA.Value := dm.cdsNotaCODIGO.Value;
      dm.cdsItemITEM.Value := pItem;
      dm.cdsItemDESCRICAO.Value := fmPrincipal.edDescricao.Text;
      dm.cdsItemCODIGOPRODUTO.AsString := fmPrincipal.edCodigo.Text;
      dm.cdsItemQUANTIDADE.AsCurrency := StrToFloat(fmPrincipal.edQuantidade.Text);
      dm.cdsItemDESCONTO.AsCurrency := StrToFloat(fmPrincipal.edDesconto.Text);
      dm.cdsItemVALOR.AsCurrency := StrToFloat(fmPrincipal.edValor.Text);
      dm.cdsItemTOTAL.AsCurrency := StrToFloat(fmPrincipal.edValor.Text);
      dm.cdsItemCEST.Value := fmPrincipal.pCEST;
      dm.cdsItemNCM.Value := fmPrincipal.pNCM;
    end;
    if (dm.cdsItem.State in [dsInsert, dsEdit]) then
    begin
      dm.cdsItem.Post;
      dm.cdsItem.ApplyUpdates(0);
    end;
    LimparCampos;
  end;
end;

procedure TfmPrincipal.RzToolButton4Click(Sender: TObject);
var Total:Double;
begin
  if dm.cdsItem.RecordCount < 1 then
  begin
      Application.MessageBox('É necessário incluir um item para alterar!','Emissor',MB_ICONERROR);
      Exit;
  end;
  Total := 0;
  if (dm.cdsItem.State in [dsInsert, dsEdit]) then
  begin
    dm.cdsItem.Post;
    dm.cdsItem.ApplyUpdates(0);
  end;
  dm.cdsNotaTOTAL.Value := Total;
  LimparCampos;
  fmItem := TfmItem.Create(nil);
  fmItem.ShowModal;
  dm.cdsItem.First;
  while not dm.cdsItem.Eof do
  begin
    Total := Total + dm.cdsItemTOTAL.Value;
    dm.cdsItem.Next;
  end;
  edSubTotal.Text := FormatFloat('#0.00',Total);
end;

procedure TfmPrincipal.RzToolButton5Click(Sender: TObject);
begin
  fmEmitente := TfmEmitente.Create(nil);
  fmEmitente.ShowModal;
end;

procedure TfmPrincipal.RzToolButton6Click(Sender: TObject);
begin
  fmCliente := TfmCliente.Create(nil);
  fmCliente.ShowModal
end;

procedure TfmPrincipal.RzToolButton7Click(Sender: TObject);
begin
  fmPesqNotas := TfmPesqNotas.Create(nil);
  fmPesqNotas.ShowModal;
end;

procedure TfmPrincipal.RzToolButton8Click(Sender: TObject);
begin
  fmProduto := TfmProduto.Create(nil);
  fmProduto.ShowModal
end;

procedure TfmPrincipal.RzToolButton9Click(Sender: TObject);
begin
  if dm.cdsItem.RecordCount < 1 then
  begin
      Application.MessageBox('É necessário incluir um item para concluir a venda!','Emissor',MB_ICONERROR);
      Exit;
  end;
  if RadioGroup1.ItemIndex = 0 then
  begin
    if dm.cdsNotaDOCUMENTO.Value = EmptyStr then
    begin
      Application.MessageBox('Para emissão de NF-e é nessário informar o cliente!','Emissor',MB_ICONERROR);
      Exit;
    end;
    //EmitirNFE;
  end;
  if RadioGroup1.ItemIndex = 2 then
  begin
    if dm.cdsNotaCODIGOCLIENTE.IsNull then
    begin
      Application.MessageBox('Para o tipo de emissão escolhido, é nessário informar o cliente!','Emissor',MB_ICONERROR);
      Exit;
    end;
    //EmitirNFE;
  end;

  if RadioGroup1.ItemIndex = 1 then
    EmitirNFCe;

  if (dm.cdsNota.State in [dsInsert, dsEdit]) then
  begin
    if RadioGroup1.ItemIndex = 2 then
      dm.cdsNotaNUMERO.Value := 0;
    dm.cdsNota.Post;
    dm.cdsNota.ApplyUpdates(0);
  end;
  if (dm.cdsItem.State in [dsInsert, dsEdit]) then
  begin

    dm.cdsItem.Post;
    dm.cdsItem.ApplyUpdates(0);
  end;
  if RadioGroup1.ItemIndex = 2 then
    EmitePedido(dm.cdsNotaCODIGO.Value);

  pnClienteVenda.Caption := '  Venda';
  FiltroZero;
  LimparCampos;
  edSubTotal.Clear;
  Application.MessageBox('Venda Concluída!','Emissor',MB_ICONINFORMATION);
  dm.cdsNota.Append;
end;

procedure TfmPrincipal.StatusItem;
begin
  if (dm.cdsItem.State <> dsEdit) and (dm.cdsItem.State <> dsInsert) AND (dm.cdsItem.RecordCount = 0) then
    dm.cdsItem.Append;
  //if (dm.cdsItem.State <> dsEdit) and (dm.cdsItem.State <> dsInsert) AND (dm.cdsItem.RecordCount > 0) then
   // dm.cdsItem.Edit;
end;

end.
