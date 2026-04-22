unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, Data.FMTBcd, frxClass, frxDBSet;

type
  Tdm = class(TDataModule)
    dtmDados: TSQLConnection;
    dsEmitente: TDataSource;
    cdsEmitente: TClientDataSet;
    dspEmitente: TDataSetProvider;
    sqlEmitente: TSQLQuery;
    sqlEmitenteCODIGO: TIntegerField;
    sqlEmitenteCNPJ: TStringField;
    sqlEmitenteRAZAO: TStringField;
    sqlEmitenteFANTASIA: TStringField;
    sqlEmitenteCSC: TStringField;
    sqlEmitenteIE: TStringField;
    sqlEmitenteCERTIFICADO: TStringField;
    sqlEmitenteIDCSC: TStringField;
    sqlEmitenteENDERECO: TStringField;
    sqlEmitenteNUMERO: TIntegerField;
    sqlEmitenteCOMPLEMENTO: TStringField;
    sqlEmitenteCEP: TStringField;
    sqlEmitenteUF: TStringField;
    sqlEmitenteBAIRRO: TStringField;
    sqlEmitenteTELEFONE: TStringField;
    sqlEmitenteCIDADE: TStringField;
    sqlEmitenteEMAIL: TStringField;
    sqlEmitenteIBGE: TIntegerField;
    sqlEmitenteCNAE: TIntegerField;
    cdsEmitenteCODIGO: TIntegerField;
    cdsEmitenteCNPJ: TStringField;
    cdsEmitenteRAZAO: TStringField;
    cdsEmitenteFANTASIA: TStringField;
    cdsEmitenteCSC: TStringField;
    cdsEmitenteIE: TStringField;
    cdsEmitenteCERTIFICADO: TStringField;
    cdsEmitenteIDCSC: TStringField;
    cdsEmitenteENDERECO: TStringField;
    cdsEmitenteNUMERO: TIntegerField;
    cdsEmitenteCOMPLEMENTO: TStringField;
    cdsEmitenteCEP: TStringField;
    cdsEmitenteUF: TStringField;
    cdsEmitenteBAIRRO: TStringField;
    cdsEmitenteTELEFONE: TStringField;
    cdsEmitenteCIDADE: TStringField;
    cdsEmitenteEMAIL: TStringField;
    cdsEmitenteIBGE: TIntegerField;
    cdsEmitenteCNAE: TIntegerField;
    dsCliente: TDataSource;
    cdsCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    sqlCliente: TSQLQuery;
    sqlClienteCODIGO: TIntegerField;
    sqlClienteNOME: TStringField;
    sqlClienteCNPJCPF: TStringField;
    sqlClienteIERG: TStringField;
    sqlClienteEMAIL: TStringField;
    sqlClienteTELEFONE: TStringField;
    sqlClienteENDERECO: TStringField;
    sqlClienteNUMERO: TIntegerField;
    sqlClienteCOMPLEMENTO: TStringField;
    sqlClienteBAIRRO: TStringField;
    sqlClienteCEP: TStringField;
    sqlClienteCIDADE: TStringField;
    sqlClienteUF: TStringField;
    sqlClienteIBGE: TIntegerField;
    sqlClienteTIPODOCUMENTO: TIntegerField;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteCNPJCPF: TStringField;
    cdsClienteIERG: TStringField;
    cdsClienteEMAIL: TStringField;
    cdsClienteTELEFONE: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteNUMERO: TIntegerField;
    cdsClienteCOMPLEMENTO: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteIBGE: TIntegerField;
    cdsClienteTIPODOCUMENTO: TIntegerField;
    sqlMaxCliente: TSQLQuery;
    sqlMaxClienteMAX: TIntegerField;
    cdsMaxCliente: TClientDataSet;
    dspMaxCliente: TDataSetProvider;
    cdsMaxClienteMAX: TIntegerField;
    sqlMaxProduto: TSQLQuery;
    cdsMaxProduto: TClientDataSet;
    dspMaxProduto: TDataSetProvider;
    dsProduto: TDataSource;
    cdsProduto: TClientDataSet;
    dspProduto: TDataSetProvider;
    sqlProduto: TSQLQuery;
    sqlProdutoCODIGO: TIntegerField;
    sqlProdutoDESCRICAO: TStringField;
    sqlProdutoNCM: TIntegerField;
    sqlProdutoUNIDADE: TStringField;
    sqlProdutoVALOR: TSingleField;
    sqlProdutoCEST: TStringField;
    sqlProdutoCODIGOBARRAS: TStringField;
    cdsProdutoCODIGO: TIntegerField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoNCM: TIntegerField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoVALOR: TSingleField;
    cdsProdutoCEST: TStringField;
    cdsProdutoCODIGOBARRAS: TStringField;
    sqlMaxProdutoMAX: TIntegerField;
    cdsMaxProdutoMAX: TIntegerField;
    sqlMaxNota: TSQLQuery;
    cdsMaxNota: TClientDataSet;
    dspMaxNota: TDataSetProvider;
    sqlMaxItem: TSQLQuery;
    cdsMaxItem: TClientDataSet;
    dspMaxItem: TDataSetProvider;
    dsNota: TDataSource;
    cdsNota: TClientDataSet;
    dspNota: TDataSetProvider;
    sqlNota: TSQLQuery;
    dsItem: TDataSource;
    cdsItem: TClientDataSet;
    dspItem: TDataSetProvider;
    sqlItem: TSQLQuery;
    sqlNotaCODIGO: TIntegerField;
    sqlNotaCODIGOEMITENTE: TIntegerField;
    sqlNotaCODIGOCLIENTE: TIntegerField;
    sqlNotaNUMERO: TIntegerField;
    sqlNotaMODELO: TIntegerField;
    sqlNotaSERIE: TIntegerField;
    sqlNotaCHAVE: TStringField;
    sqlNotaDATA: TDateField;
    sqlNotaSITUACAO: TStringField;
    sqlNotaTOTAL: TSingleField;
    sqlNotaDOCUMENTO: TStringField;
    sqlItemCODIGONOTA: TIntegerField;
    sqlItemCODIGOPRODUTO: TIntegerField;
    sqlItemDESCRICAO: TStringField;
    sqlItemQUANTIDADE: TIntegerField;
    sqlItemUNIDADE: TStringField;
    sqlItemVALOR: TSingleField;
    sqlItemDESCONTO: TSingleField;
    cdsItemCODIGONOTA: TIntegerField;
    cdsItemCODIGOPRODUTO: TIntegerField;
    cdsItemDESCRICAO: TStringField;
    cdsItemQUANTIDADE: TIntegerField;
    cdsItemUNIDADE: TStringField;
    cdsItemVALOR: TSingleField;
    cdsItemDESCONTO: TSingleField;
    cdsNotaCODIGO: TIntegerField;
    cdsNotaCODIGOEMITENTE: TIntegerField;
    cdsNotaCODIGOCLIENTE: TIntegerField;
    cdsNotaNUMERO: TIntegerField;
    cdsNotaMODELO: TIntegerField;
    cdsNotaSERIE: TIntegerField;
    cdsNotaCHAVE: TStringField;
    cdsNotaDATA: TDateField;
    cdsNotaSITUACAO: TStringField;
    cdsNotaTOTAL: TSingleField;
    cdsNotaDOCUMENTO: TStringField;
    sqlMaxItemMAX: TIntegerField;
    cdsMaxItemMAX: TIntegerField;
    sqlFoto: TSQLQuery;
    cdsFoto: TClientDataSet;
    dspFoto: TDataSetProvider;
    sqlFotoFOTO: TBlobField;
    cdsFotoFOTO: TBlobField;
    sqlItemTOTAL: TSingleField;
    sqlItemDESCRDESCONTO: TStringField;
    cdsItemTOTAL: TSingleField;
    cdsItemDESCRDESCONTO: TStringField;
    sqlItemITEM: TIntegerField;
    cdsItemITEM: TIntegerField;
    sqlClienteTIPOIE: TIntegerField;
    cdsClienteTIPOIE: TIntegerField;
    sqlDeletaItem: TSQLQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    SingleField1: TSingleField;
    SingleField2: TSingleField;
    SingleField3: TSingleField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    sqlClientePLACA: TStringField;
    sqlClienteVEICULO: TStringField;
    cdsClientePLACA: TStringField;
    cdsClienteVEICULO: TStringField;
    dsCestNCM: TDataSource;
    cdsCestNCM: TClientDataSet;
    dspCestNCM: TDataSetProvider;
    sqlCestNCM: TSQLQuery;
    sqlCestNCMCEST: TStringField;
    sqlCestNCMNCM: TStringField;
    sqlCestNCMDESCRICAO: TStringField;
    sqlCestNCMDESCNCM: TStringField;
    sqlCestNCMALIQFEDNACIONAL: TSingleField;
    sqlCestNCMALIQFEDIMPORTADO: TSingleField;
    sqlCestNCMALIQESTADUAL: TSingleField;
    sqlCestNCMALIQMUNICIPAL: TSingleField;
    cdsCestNCMCEST: TStringField;
    cdsCestNCMNCM: TStringField;
    cdsCestNCMDESCRICAO: TStringField;
    cdsCestNCMDESCNCM: TStringField;
    cdsCestNCMALIQFEDNACIONAL: TSingleField;
    cdsCestNCMALIQFEDIMPORTADO: TSingleField;
    cdsCestNCMALIQESTADUAL: TSingleField;
    cdsCestNCMALIQMUNICIPAL: TSingleField;
    sqlItemNCM: TStringField;
    sqlItemCEST: TStringField;
    cdsItemNCM: TStringField;
    cdsItemCEST: TStringField;
    sqlItemVALORICMS: TSingleField;
    sqlItemALIQFEDNACIONAL: TSingleField;
    sqlItemALIQFEDIMPORTADO: TSingleField;
    sqlItemALIQESTADUAL: TSingleField;
    sqlItemALIQMUNICIPAL: TSingleField;
    cdsItemVALORICMS: TSingleField;
    cdsItemALIQFEDNACIONAL: TSingleField;
    cdsItemALIQFEDIMPORTADO: TSingleField;
    cdsItemALIQESTADUAL: TSingleField;
    cdsItemALIQMUNICIPAL: TSingleField;
    sqlProdutoALIQFEDNACIONAL: TSingleField;
    sqlProdutoALIQFEDIMPORTADO: TSingleField;
    sqlProdutoALIQESTADUAL: TSingleField;
    sqlProdutoALIQMUNICIPAL: TSingleField;
    cdsProdutoALIQFEDNACIONAL: TSingleField;
    cdsProdutoALIQFEDIMPORTADO: TSingleField;
    cdsProdutoALIQESTADUAL: TSingleField;
    cdsProdutoALIQMUNICIPAL: TSingleField;
    sqlMaxNotaCODIGO: TIntegerField;
    sqlMaxNotaNOTA: TIntegerField;
    cdsMaxNotaCODIGO: TIntegerField;
    cdsMaxNotaNOTA: TIntegerField;
    frxReport2: TfrxReport;
    sqlNotaNOME: TStringField;
    cdsNotaNOME: TStringField;
    procedure cdsClienteNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsClienteAfterScroll(DataSet: TDataSet);
    procedure cdsProdutoNewRecord(DataSet: TDataSet);
    procedure cdsNotaNewRecord(DataSet: TDataSet);
    procedure cdsItemNewRecord(DataSet: TDataSet);
    procedure cdsItemQUANTIDADEChange(Sender: TField);
    procedure cdsItemDESCONTOChange(Sender: TField);
    procedure cdsItemVALORChange(Sender: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UCliente;

{$R *.dfm}

procedure Tdm.cdsClienteAfterScroll(DataSet: TDataSet);
begin
  if  Assigned(fmCliente) then
    fmCliente.TipoDocumento;
end;

procedure Tdm.cdsClienteNewRecord(DataSet: TDataSet);
begin
  cdsMaxCliente.Close;
  cdsMaxCliente.Open;
  cdsClienteTIPODOCUMENTO.Value := 0;
  cdsClienteCODIGO.Value := cdsMaxClienteMAX.Value+1;
end;

procedure Tdm.cdsItemDESCONTOChange(Sender: TField);
begin
  if cdsItemDESCONTO.AsCurrency > 0 then
  begin
    cdsItemDESCRDESCONTO.Value :=  'Desconto no Item ' + cdsItemItem.AsString+ ' - '+ cdsItemDESCONTO.AsString;
    cdsItemTOTAL.AsCurrency := cdsItemTOTAL.AsCurrency - cdsItemDESCONTO.AsCurrency;
  end
  else
  begin
   if cdsItemDESCRDESCONTO.Value <> EmptyStr then
     cdsItemDESCRDESCONTO.Value :=  '';
  end;
end;

procedure Tdm.cdsItemNewRecord(DataSet: TDataSet);
begin
  //cdsMaxItem.Close;
  //cdsMaxItem.Open;

//  cdsItemCODIGO.Value := cdsMaxItemMAX.Value+1;

end;

procedure Tdm.cdsItemQUANTIDADEChange(Sender: TField);
begin
  if dm.cdsItemQUANTIDADE.AsCurrency > 0 then
    dm.cdsItemTOTAL.AsCurrency := (dm.cdsItemVALOR.AsCurrency * dm.cdsItemQUANTIDADE.AsCurrency) - dm.cdsitemdesconto.ascurrency;
end;

procedure Tdm.cdsItemVALORChange(Sender: TField);
begin
  if dm.cdsItemVALOR.AsCurrency > 0 then
    dm.cdsItemTOTAL.AsCurrency := (dm.cdsItemVALOR.AsCurrency * dm.cdsItemQUANTIDADE.AsCurrency) - dm.cdsitemdesconto.ascurrency;
end;

procedure Tdm.cdsNotaNewRecord(DataSet: TDataSet);
begin
  cdsMaxNota.Close;
  cdsMaxNota.Open;
  cdsNotaCODIGO.Value := cdsMaxNotaCODIGO.Value+1;
  cdsNotaNUMERO.Value := cdsMaxNotaNOTA.Value+1;
  cdsNotaDATA.Value := Now;
  cdsNotaCODIGOEMITENTE.Value := 1;
end;

procedure Tdm.cdsProdutoNewRecord(DataSet: TDataSet);
begin
  cdsMaxProduto.Close;
  cdsMaxProduto.Open;
  cdsProdutoCODIGO.Value := cdsMaxProdutoMAX.Value+1;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  dtmDados.Connected := True;
  cdsMaxCliente.Open;
  cdsMaxProduto.Open;
  //cdsMaxItem.Open;
  cdsMaxNota.Open;

  dm.cdsNota.Open;
  dm.cdsItem.Open;
  cdsItem.Filtered := false;
  cdsItem.Filter := 'CodigoNota = 0';
  cdsItem.Filtered := true;
end;

end.
