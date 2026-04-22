unit Presentation.Routes;

interface

type
  TPresentationRoutes = class
  public
    class procedure Register;
  end;

implementation

uses
  Horse,
  Presentation.Controllers.NFe;

class procedure TPresentationRoutes.Register;
begin
  THorse.Post('/api/nfe', TNFeController.Emitir);
  THorse.Get('/api/nfe/:id/status', TNFeController.Status);
end;

end.
