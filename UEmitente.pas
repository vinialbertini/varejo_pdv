unit UEmitente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtDlgs, RzButton, Vcl.ExtCtrls, DB;

type
  TfmEmitente = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label9: TLabel;
    DBEdit14: TDBEdit;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    SaveTextFileDialog1: TSaveTextFileDialog;
    Panel1: TPanel;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton1: TRzToolButton;
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmitente: TfmEmitente;

implementation

{$R *.dfm}

uses UDM;


procedure TfmEmitente.DBEdit4Click(Sender: TObject);
begin
  if SaveTextFileDialog1.Execute then
    dm.cdsEmitenteCERTIFICADO.Value := SaveTextFileDialog1.FileName;
end;

procedure TfmEmitente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.cdsEmitente.Close;
end;

procedure TfmEmitente.FormCreate(Sender: TObject);
begin
  dm.cdsEmitente.Open;
  dm.cdsEmitente.Edit;
end;

procedure TfmEmitente.RzToolButton1Click(Sender: TObject);
begin
  if (dm.cdsEmitente.State <> dsEdit) and (dm.cdsEmitente.State <> dsInsert) then
    dm.cdsEmitente.Edit;
end;

procedure TfmEmitente.RzToolButton5Click(Sender: TObject);
begin
  if dm.cdsEmitente.State in [dsinsert, dsedit] then
  begin
  dm.cdsEmitente.Post;
  dm.cdsEmitente.ApplyUpdates(0);
  Application.MessageBox('Salvo!','Emissor',MB_ICONINFORMATION);
  end;
end;

procedure TfmEmitente.RzToolButton6Click(Sender: TObject);
begin
  dm.cdsEmitente.Cancel;
end;

end.
