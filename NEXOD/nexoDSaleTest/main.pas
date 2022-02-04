unit main;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
	PMS_NEXOSALE30_TLB;

type
	TForm1 = class(TForm)
		pbSettings: TButton;
		cbAdvanced: TCheckBox;
		procedure pbSettingsClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		private
			{ Private declarations }
			nexo: NEXOSALE;
		public
			{ Public declarations }
	end;

var
	Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
	nexo := CoNEXOSale.create;
end;

procedure TForm1.pbSettingsClick(Sender: TObject);
begin
		nexo.DisplaySettings(cbAdvanced.Checked);
end;

end.
