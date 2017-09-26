program StandAloneService;

{$APPTYPE GUI}

uses
  Forms,
  SockApp,
  FormUnit1 in '..\forms\FormUnit1.pas' {Form4},
  MyServiceImpl in '..\units\MyServiceImpl.pas',
  MyServiceIntf in '..\units\MyServiceIntf.pas',
  IdHTTPWebBrokerBridge in '..\..\ThirdPart\IdHTTPWebBrokerBridge.pas',
  WebModuleUnit1 in '..\units\WebModuleUnit1.pas' {WebModule5: TWebModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TWebModule5, WebModule5);
  Application.Run;
end.
