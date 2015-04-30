program CHATClient;

uses
  Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  uDIOCPDxStreamCoder in '..\..\DiocpCoders\uDIOCPDxStreamCoder.pas',
  SimpleMsgPack in '..\COMMON\SimpleMsgPack.pas';

{$R *.res}

begin
  {$IF CompilerVersion> 18}
  ReportMemoryLeaksOnShutdown := DebugHook = 1;
  {$IFEND}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
