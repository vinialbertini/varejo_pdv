program Varejo;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {fmPrincipal},
  UEmitente in 'UEmitente.pas' {fmEmitente},
  UDM in 'UDM.pas' {dm: TDataModule},
  UCliente in 'UCliente.pas' {fmCliente},
  UProduto in 'UProduto.pas' {fmProduto},
  UPesquisaCliente in 'UPesquisaCliente.pas' {fmPesquisaCliente},
  UPesquisaProduto in 'UPesquisaProduto.pas' {fmPesquisaProduto},
  UItem in 'UItem.pas' {fmItem},
  UPesquisaNota in 'UPesquisaNota.pas' {fmPesqNotas},
  Application.Services.NotaFiscal in 'Application.Services.NotaFiscal.pas',
  Infrastructure.DB.Connection in 'Infrastructure.DB.Connection.pas',
  Presentation.Controllers.NFe in 'Presentation.Controllers.NFe.pas',
  Presentation.Routes in 'Presentation.Routes.pas',
  UNuvemFiscalService in 'UNuvemFiscalService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
