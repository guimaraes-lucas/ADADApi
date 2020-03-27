unit Env.Config;

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
  IOUtils, System.SysUtils;

constructor TEnvConfig.Create;
begin
  inherited Create;
  LoadFromFile(TPath.Combine(ExtractFilePath(ParamStr(0)), '.env'));
end;

initialization
  FEnv := TEnvConfig.Create;

finalization
  FreeAndNil(FEnv);

end.
