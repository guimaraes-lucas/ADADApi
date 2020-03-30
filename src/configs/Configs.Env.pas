unit Configs.Env;

interface

uses
  System.Classes;

type
  TEnvConfig = class(TStringList)
  public
    constructor Create; overload;
  end;

var
  FEnv: TEnvConfig;

implementation

{ TEnvConfig }

uses
  IOUtils, System.SysUtils, Winapi.Windows;

constructor TEnvConfig.Create;
var
  sFileDotEnv: TFileName;
  sName: string;
  I: Integer;
begin
  inherited Create;
  sFileDotEnv := TPath.Combine(ExtractFilePath(ParamStr(0)), '.env');
  if FileExists(sFileDotEnv) then
  begin
    LoadFromFile(sFileDotEnv);
    for I := 0 to Self.Count - 1 do
    begin
      sName := TStrings(Self).Names[I];
      SetEnvironmentVariable(PChar(sName), PChar(Self.Values[sName]));
    end;
  end;
end;

initialization
  FEnv := TEnvConfig.Create;

finalization
  FreeAndNil(FEnv);

end.
