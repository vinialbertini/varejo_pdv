program ApiNuvemFiscal;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Horse,
  Horse.Jhonson,
  Horse.CORS,
  Horse.HandleException,
  Presentation.Routes,
  Infrastructure.DB.Connection;

begin
  ReportMemoryLeaksOnShutdown := True;

  THorse.Use(Jhonson);
  THorse.Use(CORS);
  THorse.Use(HandleException);

  TDBConnection.Initialize;
  TPresentationRoutes.Register;

  THorse.Listen(9000,
    procedure
    begin
      Writeln('API rodando na porta 9000');
    end);
end.
