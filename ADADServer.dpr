program ADADServer;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  Horse.HandleException,
  System.SysUtils,
  System.JSON,
  FireDAC.Comp.Client,
  Events.Dao in 'src\events\Events.Dao.pas',
  Global.Connection in 'src\connection\Global.Connection.pas',
  Env.Config in 'src\config\Env.Config.pas',
  Events.Routes in 'src\events\Events.Routes.pas';

var
  App: THorse;

begin
  App := THorse.Create(9000);
  try
    App.Use(Jhonson);
    App.Use(HandleException);

    App.Get('events', GetEvents);

    App.Start;
  finally
    FreeAndNil(App);
  end;

end.
