unit Events.Routes;

interface

uses
  Horse, Events.Dao;

  procedure GetEvents(Req: THorseRequest; Res: THorseResponse; Next: TProc);


implementation

uses
  System.SysUtils;

{ TEventsRoutes }

procedure GetEvents(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  Dao: TEventsDao;
begin
  Dao := TEventsDao.Create;
  try
    Res.Send(Dao.GetList.ToJSON);
  finally
    FreeAndNil(Dao);
  end;
end;

end.
