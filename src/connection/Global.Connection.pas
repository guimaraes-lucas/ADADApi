unit Global.Connection;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Def, FireDAC.Phys.FB, FireDAC.Stan.Error,
  FireDAC.Stan.Async, FireDAC.VCLUI.Wait, FireDAC.DApt, System.Classes,
  Env.Config, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.SQLite;

type
  TGlobalConnection = class
  private
    FConnection: TFDConnection;
  public
    function GetConnection: TFDConnection;
    constructor Create;
    destructor Destroy; override;
  end;

var
  FGlobalConnection: TGlobalConnection;

implementation

uses
  System.SysUtils, Vcl.Forms, System.Win.Registry, Winapi.Windows;

{ TConnection }

constructor TGlobalConnection.Create;
var
  Transaction: TFDTransaction;
begin
  FConnection := TFDConnection.Create(nil);
  Transaction := TFDTransaction.Create(FConnection);
  with FConnection.Params do
  begin
    DriverID := FEnv.Values['DriverID'];
    Database := FEnv.Values['Database'];
    UserName := FEnv.Values['UserName'];
    Password := FEnv.Values['Password'];
  end;
  FConnection.Transaction := Transaction;
  FConnection.Connected := True;
end;

destructor TGlobalConnection.Destroy;
begin
  FreeAndNil(FConnection);
  inherited;
end;

function TGlobalConnection.GetConnection: TFDConnection;
begin
  Result := FConnection;
end;

initialization
  FGlobalConnection := TGlobalConnection.Create;

finalization
  FreeAndNil(FGlobalConnection);

end.


