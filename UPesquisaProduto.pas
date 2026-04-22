unit UPesquisaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfmPesquisaProduto = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisaProduto: TfmPesquisaProduto;

implementation

{$R *.dfm}

uses UDM, UProduto, UPrincipal;

procedure TfmPesquisaProduto.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

  if fmPrincipal.RadioGroup1.ItemIndex = 1 then
  begin
    if (dm.cdsProdutoCEST.Value = EmptyStr) or (dm.cdsProdutoNCM.AsString = EmptyStr) then
    begin
      Application.MessageBox('Tipo de emissão requer a informação de CEST e NCM!','Emissor',MB_ICONERROR);
      Exit;
    end;
  end;
  fmPrincipal.edDescricao.Text := dm.cdsProdutoDESCRICAO.Value;
  fmPrincipal.edCodigo.Text := dm.cdsProdutoCODIGO.AsString;
  fmPrincipal.edQuantidade.Text := FormatFloat('#0.00',1);
  fmPrincipal.edDesconto.Text := FormatFloat('#0.00',0);
  fmPrincipal.edValor.Text := FormatFloat('#0.00',dm.cdsProdutoVALOR.AsCurrency);
  fmPrincipal.edTotal.Text := FormatFloat('#0.00',dm.cdsProdutoVALOR.AsCurrency);
  if fmPrincipal.edSubTotal.Text = EmptyStr then
    fmPrincipal.edSubTotal.Text := '0';
  fmPrincipal.edSubTotal.Text := FormatFloat('#0.00',StrToFloat(fmPrincipal.edSubTotal.Text)+ dm.cdsProdutoVALOR.AsCurrency);
  fmPrincipal.pCEST := dm.cdsProdutoCEST.Value;
  fmPrincipal.pNCM := dm.cdsProdutoNCM.AsString;
  fmPrincipal.AliqNacional := dm.cdsProdutoALIQFEDNACIONAL.Value;
  fmPrincipal.AliqEstadual := dm.cdsProdutoALIQESTADUAL.Value;
  fmPrincipal.AliqImportado := dm.cdsProdutoALIQFEDIMPORTADO.Value;
  fmPrincipal.AliqMunicipal := dm.cdsProdutoALIQMUNICIPAL.Value;
  fmPrincipal.edDescricao.SetFocus;
  Close;
end;

procedure TfmPesquisaProduto.FormCreate(Sender: TObject);
begin
  if not dm.cdsProduto.Active then
    dm.cdsProduto.Open;
end;

end.
