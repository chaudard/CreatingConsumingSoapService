library ISAPIService;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  unitISAPIService in 'unitISAPIService.pas' {WebModule4: TWebModule},
  MyServiceImpl in '..\units\MyServiceImpl.pas',
  MyServiceIntf in '..\units\MyServiceIntf.pas',
  WebModuleUnit1 in '..\units\WebModuleUnit1.pas' {WebModule5: TWebModule};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.CreateForm(TWebModule4, WebModule4);
  Application.CreateForm(TWebModule5, WebModule5);
  Application.Run;
end.
