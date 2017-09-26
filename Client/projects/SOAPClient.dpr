program SOAPClient;

uses
  Forms,
  formMain in '..\forms\formMain.pas' {Form5},
  unitIMyService in '..\units\unitIMyService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
