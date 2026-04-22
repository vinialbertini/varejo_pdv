unit UPesquisaNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.Menus;

type
  TfmPesqNotas = class(TForm)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridDBTableView1MODELO: TcxGridDBColumn;
    cxGridDBTableView1SERIE: TcxGridDBColumn;
    cxGridDBTableView1CHAVE: TcxGridDBColumn;
    cxGridDBTableView1DATA: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1DOCUMENTO: TcxGridDBColumn;
    cxGridDBTableView1Cliente: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    ReimprimirPedido1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReimprimirPedido1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesqNotas: TfmPesqNotas;

implementation

{$R *.dfm}

uses UDM;

procedure TfmPesqNotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.cdsItem.Filtered := false;
  dm.cdsItem.Filter := 'CodigoNota = 0';
  dm.cdsItem.Filtered := true;
end;

procedure TfmPesqNotas.ReimprimirPedido1Click(Sender: TObject);
begin
  try
    if not dm.cdsCliente.Active then
      dm.cdsCliente.Open;
    dm.cdsCliente.Locate('Codigo',dm.cdsNotaCODIGOCLIENTE.Value,[]);
    dm.cdsItem.Filtered := false;
    dm.cdsItem.Filter := 'CodigoNota ='+dm.cdsNotaCODIGO.AsString;
    dm.cdsItem.Filtered := true;
    dm.frxReport1.ShowReport;
  finally

  end;
end;

end.
