unit Controllers.Events;

interface

uses
  Horse;

procedure Events(App: THorse);

implementation

uses System.JSON, Ragna, Services.Events, SysUtils;

procedure DoPostEvent(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  Events: TServiceEvents;
  JSON: TJSONObject;
  nId: Integer;
begin
  Events := TServiceEvents.Create;
  try
    nId := Req.Params['id'].ToInteger;

    Events.Post(nId, Req.Body<TJSONObject>).ToJson(JSON);

    Res.Send(JSON);
  finally
    Events.Free;
  end;
end;

procedure DoGetEvents(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  Events: TServiceEvents;
  JSON: TJSONArray;
  nId: Integer;
begin
  Events := TServiceEvents.Create;
  try
    nId := Req.Params['id'].ToInteger;

    Events.Get(nId).ToJson(JSON);

    Res.Send(JSON);
  finally
    Events.Free;
  end;
end;

procedure DoGetListNextEvents(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  Events: TServiceEvents;
  JSON: TJSONArray;
  sFilter: string;
begin
  Events := TServiceEvents.Create;
  try
    sFilter := 'date > date(''now'')';

    Events.Get(sFilter).ToJson(JSON);

    Res.Send(JSON);
  finally
    Events.Free;
  end;
end;

procedure Events(App: THorse);
begin
  App.Post('/events/:id', DoPostEvent);
  App.Get('/events/:id', DoGetEvents);
  App.Get('/next_events', DoGetListNextEvents);
end;

end.
