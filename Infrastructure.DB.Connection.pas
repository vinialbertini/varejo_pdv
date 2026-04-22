unit Infrastructure.DB.Connection;

interface

uses
  Data.SqlExpr;

type
  TDBConnection = class
  private
    class var FConn: TSQLConnection;
  public
    class procedure Initialize;
    class function GetConnection: TSQLConnection;
  end;

implementation

class procedure TDBConnection.Initialize;
begin
  FConn := TSQLConnection.Create(nil);
end;

class function TDBConnection.GetConnection: TSQLConnection;
begin
  Result := FConn;
end;

end.
