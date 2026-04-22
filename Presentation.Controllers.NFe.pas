unit Presentation.Controllers.NFe;

interface

uses
  Horse;

type
  TNFeController = class
  public
    class procedure Emitir(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure Status(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

uses
  System.JSON,
  Application.Services.NotaFiscal,
  Application.Services.NuvemFiscal;

class procedure TNFeController.Emitir(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  Codigo: Integer;
  Service: TNotaFiscalService;
  Id: string;
begin
  Codigo := Req.Body<TJSONObject>.GetValue<Integer>('codigo_nota');

  Service := TNotaFiscalService.Create;
  try
    Id := Service.EmitirNFePorCodigo(Codigo);
    Res.Send('NF enviada. ID: ' + Id);
  finally
    Service.Free;
  end;
end;

class procedure TNFeController.Status(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  Id: string;
  Service: TNuvemFiscalService;
begin
  Id := Req.Params['id'];

  Service := TNuvemFiscalService.Create;
  try
    Res.Send(Service.ConsultarStatus(Id));
  finally
    Service.Free;
  end;
end;

end.
