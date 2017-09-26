{ Fichier d'implémentation invocable pour TMyService implémentant IMyService }

unit MyServiceImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, MyServiceIntf;

type

  { TMyService }
  TMyService = class(TInvokableClass, IMyService)
  public
    function echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function echoDouble(const Value: Double): Double; stdcall;
  end;

implementation

function TMyService.echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
begin
  { TODO : Implémenter la méthode echoEnum }
  Result := Value;
end;

function TMyService.echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
begin
  { TODO : Implémenter la méthode echoDoubleArray }
  Result := Value;
end;

function TMyService.echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
begin
  { TODO : Implémenter la méthode echoMyEmployee }
  Result := TMyEmployee.Create;
  Result.FirstName := Value.FirstName;
  Result.LastName := Value.LastName;
  Result.Salary := Value.Salary;
end;

function TMyService.echoDouble(const Value: Double): Double; stdcall;
begin
  { TODO : Implémenter la méthode echoDouble }
  Result := Value;
end;


initialization
{ les classes invocables doivent être recensées  }
   InvRegistry.RegisterInvokableClass(TMyService);
end.

