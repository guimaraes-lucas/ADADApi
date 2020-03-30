unit Services.Events;

interface

uses
  Providers.Connection, FireDAC.Comp.Client, System.JSON, Ragna, SysUtils;

type
  TServiceEvents = class(TProviderConnection)
  private
    FEvents: TFDQuery;
  public
    function Get(const psFilter: string): TFDQuery; overload;
    function Get(const pnId: Integer): TFDQuery; overload;
    function Post(const pnId: Integer; const poEvent: TJSONObject): TFDQuery;
    constructor Create; override;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{ TServiceEvents }

const
  sSELECT_EVENTS = 'SELECT id, description, date FROM event';

constructor TServiceEvents.Create;
begin
  inherited;
  FEvents := TFDQuery.Create(nil);
  FEvents.Connection := Connection;
  FEvents.Open(sSELECT_EVENTS);
end;

function TServiceEvents.Get(const pnId: Integer): TFDQuery;
begin
  Result := FEvents
    .Where('id')
    .Equals(pnId)
    .OpenUp;
end;

function TServiceEvents.Get(const psFilter: string): TFDQuery;
var
  sWhere: string;
begin
  Result := FEvents;

  sWhere := EmptyStr;
  if not psFilter.IsEmpty then
    sWhere := ' WHERE ' + psFilter;
  FEvents.Open(sSELECT_EVENTS + sWhere);
end;

function TServiceEvents.Post(const pnId: Integer; const poEvent: TJSONObject): TFDQuery;
begin
  poEvent.AddPair('id', TJSONNumber.Create(pnId));

  Result := FEvents
    .New(poEvent)
    .OpenUp;
end;

end.
