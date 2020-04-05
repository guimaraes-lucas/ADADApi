program ADADApiTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  Test.Services.Events in 'services\Test.Services.Events.pas',
  Services.Events in '..\src\services\Services.Events.pas',
  Providers.Connection in '..\src\providers\Providers.Connection.pas',
  Configs.Env in '..\src\configs\Configs.Env.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
  WriteLn('Press the ENTER key to stop');
  Readln;
end.

