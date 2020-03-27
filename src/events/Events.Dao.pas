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

{ TEventsController }

constructor TEventsDao.Create;
begin
  FqryEvents := TFDQuery.Create(nil);
  FqryEvents.Connection := FGlobalConnection.GetConnection;
  FqryEvents.Open('SELECT * FROM event');
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
