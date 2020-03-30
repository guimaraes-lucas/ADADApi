program ADADApi;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  Horse.HandleException,
  System.SysUtils,
  System.JSON,
  FireDAC.Comp.Client,
  Configs.Env in 'src\configs\Configs.Env.pas',
  Controllers.Events in 'src\controllers\Controllers.Events.pas',
  Providers.Connection in 'src\providers\Providers.Connection.pas',
  Services.Events in 'src\services\Services.Events.pas';

var
  App: THorse;

begin
  App := THorse.Create(9000);
  try
    App.Use(Jhonson);
    App.Use(HandleException);

    Events(App);

    App.Start;
  finally
    FreeAndNil(App);
  end;

end.
