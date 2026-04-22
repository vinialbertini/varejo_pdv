unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, db, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, RzCmboBx, RzDBCmbo;

type
  TfmCliente = class(TForm)
    Panel1: TPanel;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    PageControl1: TPageControl;
    Cadastro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit4: TDBEdit;
    TabSheet1: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    RzDBComboBox1: TRzDBComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    DBNavigator1: TDBNavigator;
    RzDBComboBox2: TRzDBComboBox;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzDBComboBox1Change(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private

    { Private declarations }
  public
        procedure TipoDocumento;
    { Public declarations }
  end;

var
  fmCliente: TfmCliente;

implementation

{$R *.dfm}

uses UDM;

{ TfmCliente }

procedure TfmCliente.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfmCliente.DBComboBox1Change(Sender: TObject);
begin
  TipoDocumento;
end;

procedure TfmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.cdsCliente.Close;
end;

procedure TfmCliente.FormCreate(Sender: TObject);
begin
  dm.cdsCliente.Open;
end;

procedure TfmCliente.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  TipoDocumento;
end;

procedure TfmCliente.RzDBComboBox1Change(Sender: TObject);
begin
  TipoDocumento;
end;

procedure TfmCliente.RzToolButton1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  if (dm.cdsCliente.State <> dsEdit) and (dm.cdsCliente.State <> dsInsert) then
    dm.cdsCliente.Edit;
end;

procedure TfmCliente.RzToolButton2Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  if (dm.cdsCliente.State <> dsEdit) and (dm.cdsCliente.State <> dsInsert) then
    dm.cdsCliente.Append;

end;

procedure TfmCliente.RzToolButton5Click(Sender: TObject);
begin
  if dm.cdsCliente.State in [dsinsert, dsedit] then
  begin
  dm.cdsCliente.Post;
  dm.cdsCliente.ApplyUpdates(0);
  Application.MessageBox('Salvo!','Emissor',MB_ICONINFORMATION);
  end;
end;

procedure TfmCliente.RzToolButton6Click(Sender: TObject);
begin
  dm.cdsCliente.Cancel;
end;

procedure TfmCliente.TipoDocumento;
begin
  if RzDBComboBox1.ItemIndex = 1  then
  begin
    Label1.Caption := 'CNPJ';
    Label2.Caption := 'Razão Social';
    Label4.Caption := 'Inscrição Estadual';
  end else
  begin
    Label1.Caption := 'CPF';
    Label2.Caption := 'Nome';
    Label4.Caption := 'RG';
  end;
end;

end.
