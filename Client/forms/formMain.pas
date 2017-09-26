unit formMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls;

type
  TForm5 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtReqFirstName: TEdit;
    edtReqLastName: TEdit;
    spedReqSalary: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtResFirstName: TEdit;
    edtResLastName: TEdit;
    spedResSalary: TSpinEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses
  unitIMyService;

procedure TForm5.Button1Click(Sender: TObject);
var
  Service: IMyService;
  ReqEmployee: TMyEmployee;
  ResEmployee: TMyEmployee;
begin
  // capture interface to service
  Service := unitIMyService.GetIMyService();
  // build the request
  ReqEmployee := TMyEmployee.Create;
  try
    ReqEmployee.FirstName := edtReqFirstName.Text;
    ReqEmployee.LastName := edtReqLastName.Text;
    ReqEmployee.Salary := Trunc(spedReqSalary.Value);
    // Make the service request
    ResEmployee := Service.echoMyEmployee(ReqEmployee);
    try
      // Display the response
      edtResFirstName.Text := ResEmployee.FirstName;
      edtResLastName.Text := ResEmployee.LastName;
      spedResSalary.Value := Trunc(ResEmployee.Salary);
    finally
      ResEmployee.Free;
    end;
  finally
    ReqEmployee.Free;
  end;
end;

end.
