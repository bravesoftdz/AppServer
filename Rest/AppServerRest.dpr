program AppServerRest;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ufrmMain in 'ufrmMain.pas' {Form1},
  uSM in 'uSM.pas',
  uWM in 'uWM.pas' {WM: TWebModule},
  uMetadados in 'uMetadados.pas',
  uConection in 'uConection.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
