program nexoDSaleTest;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  Accessibility_TLB in '..\COM\Accessibility_TLB.pas',
  mscorlib_TLB in '..\COM\mscorlib_TLB.pas',
  PMS_NEXOSALE30_TLB in '..\COM\PMS_NEXOSALE30_TLB.pas',
  System_TLB in '..\COM\System_TLB.pas',
  System_Windows_Forms_TLB in '..\COM\System_Windows_Forms_TLB.pas',
  PMS_COMMON_TLB in '..\COM\PMS_COMMON_TLB.pas',
  PMS_NEXO30_TLB in '..\COM\PMS_NEXO30_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

