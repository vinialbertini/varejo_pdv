unit Application.Services.NotaFiscal;

interface

type
  TNotaFiscalService = class
  public
    function EmitirNFePorCodigo(ACodigo: Integer): string;
  end;

implementation

function TNotaFiscalService.EmitirNFePorCodigo(ACodigo: Integer): string;
begin
  Result := 'NFE_' + ACodigo.ToString;
end;

end.
