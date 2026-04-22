unit UProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.DBCtrls,
  Vcl.StdCtrls, RzCmboBx, RzDBCmbo, Vcl.Mask, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, RzButton, Vcl.ExtCtrls, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBExtLookupComboBox;

type
  TfmProduto = class(TForm)
    Panel1: TPanel;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Cadastro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1CEST: TcxGridDBColumn;
    cxGridDBTableView1NCM: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1DESCNCM: TcxGridDBColumn;
    cxGridDBTableView1ALIQFEDNACIONAL: TcxGridDBColumn;
    cxGridDBTableView1ALIQFEDIMPORTADO: TcxGridDBColumn;
    cxGridDBTableView1ALIQESTADUAL: TcxGridDBColumn;
    cxGridDBTableView1ALIQMUNICIPAL: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2DESCRICAO: TcxGridDBColumn;
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure DBEdit9Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure CadastroEnter(Sender: TObject);
    procedure DBEdit5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProduto: TfmProduto;

implementation

{$R *.dfm}

uses UDM;

procedure TfmProduto.CadastroEnter(Sender: TObject);
begin
  Panel2.Visible := false;
end;

procedure TfmProduto.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfmProduto.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if (dm.cdsProduto.State <> dsEdit) and (dm.cdsProduto.State <> dsInsert) then
    dm.cdsProduto.Edit;
  dm.cdsProdutoCEST.Value := dm.cdsCestNCMCEST.Value;
  dm.cdsProdutoNCM.AsString := dm.cdsCestNCMNCM.Value;
  dm.cdsProdutoALIQFEDNACIONAL.Value := dm.cdsCestNCMALIQFEDNACIONAL.Value;
  dm.cdsProdutoALIQFEDIMPORTADO.Value := dm.cdsCestNCMALIQFEDIMPORTADO.Value;
  dm.cdsProdutoALIQESTADUAL.Value := dm.cdsCestNCMALIQESTADUAL.Value;
  dm.cdsProdutoALIQMUNICIPAL.Value := dm.cdsCestNCMALIQMUNICIPAL.Value;
  Panel2.Visible := false;
end;

procedure TfmProduto.cxGridDBTableView2DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfmProduto.DBEdit5Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TfmProduto.DBEdit5Enter(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TfmProduto.DBEdit9Click(Sender: TObject);
begin
  Panel2.Visible := false;

end;

procedure TfmProduto.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  Panel2.Visible := false;
end;

procedure TfmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.cdsProduto.Close;
end;

procedure TfmProduto.FormCreate(Sender: TObject);
begin
  dm.cdsProduto.Open;
  dm.cdsCestNCM.Open;
end;

procedure TfmProduto.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfmProduto.PageControl1Change(Sender: TObject);
begin
  Panel2.Visible := false;
end;

procedure TfmProduto.Panel1Click(Sender: TObject);
begin
  Panel2.Visible := false;
end;

procedure TfmProduto.RzToolButton1Click(Sender: TObject);
begin
  Panel2.Visible := false;
  PageControl1.ActivePageIndex := 1;
  if (dm.cdsProduto.State <> dsEdit) and (dm.cdsProduto.State <> dsInsert) then
    dm.cdsProduto.Edit;
end;

procedure TfmProduto.RzToolButton2Click(Sender: TObject);
begin
  Panel2.Visible := false;
  PageControl1.ActivePageIndex := 1;
  if (dm.cdsProduto.State <> dsEdit) and (dm.cdsProduto.State <> dsInsert) then
    dm.cdsProduto.Append;
end;

procedure TfmProduto.RzToolButton5Click(Sender: TObject);
begin
  Panel2.Visible := false;
  if dm.cdsProduto.State in [dsinsert, dsedit] then
  begin
  dm.cdsProduto.Post;
  dm.cdsProduto.ApplyUpdates(0);
  Application.MessageBox('Salvo!','Emissor',MB_ICONINFORMATION);
  end;
end;

procedure TfmProduto.RzToolButton6Click(Sender: TObject);
begin
    Panel2.Visible := false;
  dm.cdsProduto.Cancel;
end;

end.
