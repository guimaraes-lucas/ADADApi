unit Events.Dao;

interface

uses
  Horse,
  System.JSON,
  FireDAC.Comp.Client,
  DataSet.Serialize;

type
  TEventsDao = class
  private
    FqryEvents: TFDQuery;
  public
    function GetList(): TJSONArray; overload;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils, Global.Connection;

const
  sSELECT_EVENTS =
    'SELECT'#13 +
    'id,'#13 +
    'description,'#13 +
    'date,'#13 +
    'STRFTIME(''%d'', date) as day,'#13 +
    'CASE'#13 +
    'WHEN CAST(STRFTIME(''%w'', date) AS INT) = 0 THEN ''Domingo'''#13 +
    'WHEN CAST(STRFTIME(''%w'', date) AS INT) = 1 THEN ''Segunda-feira'''#13 +
    'WHEN CAST(STRFTIME(''%w'', date) AS INT) = 2 THEN ''Terça-feira'''#13 +
    'WHEN CAST(STRFTIME(''%w'', date) AS INT) = 3 THEN ''Quarta-feira'''#13 +
    'WHEN CAST(STRFTIME(''%w'', date) AS INT) = 4 THEN ''Quinta-feira'''#13 +
    'WHEN CAST(STRFTIME(''%w'', date) AS INT) = 5 THEN ''Sexta-feira'''#13 +
    'WHEN CAST(STRFTIME(''%w'', date) AS INT) = 6 THEN ''Sábado'''#13 +
    'ELSE '''''#13 +
    'END as dayOfWeek,'#13 +
    'CASE'#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 1 THEN ''Janeiro'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 2 THEN ''Fevereiro'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 3 THEN ''Março'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 4 THEN ''Abril'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 5 THEN ''Maio'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 6 THEN ''Junho'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 7 THEN ''Julho'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 8 THEN ''Agosto'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 9 THEN ''Setembro'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 10 THEN ''Outubro'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 11 THEN ''Novembro'''#13 +
    'WHEN CAST(STRFTIME(''%m'', date) AS INT) = 12 THEN ''Dezembro'''#13 +
    'ELSE '''''#13 +
    'END || '' de '' || STRFTIME(''%Y'', date) as monthOfyear'#13 +
    'FROM'#13 +
    'event'#13 +
    'WHERE'#13 +
    'date > CURRENT_DATE'#13 +
    'ORDER BY'#13 +
    'date'#13;


{ TEventsController }

constructor TEventsDao.Create;
begin
  FqryEvents := TFDQuery.Create(nil);
  FqryEvents.Connection := FGlobalConnection.GetConnection;
  FqryEvents.Open(sSELECT_EVENTS);
end;

destructor TEventsDao.Destroy;
begin
  FreeAndNil(FqryEvents);
  inherited;
end;

function TEventsDao.GetList: TJSONArray;
begin
  FqryEvents.Filtered := False;
  Result := FqryEvents.ToJSONArray();
end;

end.
