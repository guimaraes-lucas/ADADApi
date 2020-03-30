unit Providers.Connection;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Def, FireDAC.Phys.FB, FireDAC.Stan.Error,
  FireDAC.Stan.Async, FireDAC.VCLUI.Wait, FireDAC.DApt, System.Classes,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.SQLite;

type
  TProviderConnection = class
  private
    FConnection: TFDConnection;
    procedure DoConnectionBeforeConnect(Sender: TObject);
  public
    constructor Create; virtual;
    destructor Destroy; override;
    property Connection: TFDConnection read FConnection write FConnection;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses
  System.SysUtils, Vcl.Forms, System.Win.Registry, Winapi.Windows;

{ TConnection }

constructor TProviderConnection.Create;
var
  Transaction: TFDTransaction;
begin
  FConnection := TFDConnection.Create(nil);
  FConnection.BeforeConnect := DoConnectionBeforeConnect;
  Transaction := TFDTransaction.Create(FConnection);
  FConnection.Transaction := Transaction;
  FConnection.Connected := True;
end;

destructor TProviderConnection.Destroy;
begin
  FreeAndNil(FConnection);
  inherited;
end;

procedure TProviderConnection.DoConnectionBeforeConnect(Sender: TObject);
var
  Params: TFDPhysSQLiteConnectionDefParams;
begin
  Params := TFDPhysSQLiteConnectionDefParams(Connection.Params);
  Params.DriverID := 'SQLite';
  Params.UserName := GetEnvironmentVariable('DB_USER');
  Params.Password := GetEnvironmentVariable('DB_PASSWORD');
  Params.Database := GetEnvironmentVariable('DB_DATABASE');
//  Params.Port := GetEnvironmentVariable('DB_PORT').ToInteger;
//  Params.Server := GetEnvironmentVariable('DB_HOST');
end;

end.


