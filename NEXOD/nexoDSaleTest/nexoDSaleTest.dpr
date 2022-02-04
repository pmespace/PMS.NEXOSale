program nexoDSaleTest;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  PMS_NEXOSALE30_TLB in '..\COM\PMS_NEXOSALE30_TLB.pas',
  PMS_NEXO30_TLB in '..\COM\PMS_NEXO30_TLB.pas',
  mscorlib_TLB in '..\COM\mscorlib_TLB.pas',
  System_TLB in '..\COM\System_TLB.pas',
  System_Windows_Forms_TLB in '..\COM\System_Windows_Forms_TLB.pas',
  PMS_Common_TLB in '..\COM\PMS_Common_TLB.pas',
  Accessibility_TLB in '..\COM\Accessibility_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

