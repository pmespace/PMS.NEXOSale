unit main;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.StdCtrls,
	PMS_NEXOSale30_TLB,
	PMS_NEXO30_TLB;

type
	TForm1 = class(TForm)
		pbSettings: TButton;
		cbAdvanced: TCheckBox;
		cbUseBackup: TCheckBox;
		Label1: TLabel;
		efAmount: TEdit;
		cbUseAmount: TCheckBox;
		Label2: TLabel;
		cbxServices: TComboBox;
		cbInternalPrinting: TCheckBox;
		Button1: TButton;
		Label3: TLabel;
		Label4: TLabel;
		lblResult: TLabel;
		lblBrand: TLabel;
		Label5: TLabel;
		lblPAN: TLabel;
		procedure pbSettingsClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure cbUseBackupClick(Sender: TObject);
		procedure Button1Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var
	theAction, ActionResult: integer;
begin
	case cbxServices.ItemIndex of
		0:
			theAction := Action_Login;
		1:
			theAction := Action_Logout;
		2, 3:
			begin
				if cbxServices.ItemIndex = 2 then
					theAction := Action_Payment
				else
					theAction := Action_Refund;

				nexo.OriginalPOITransactionID := '';
				nexo.OriginalPOITransactionTimestamp := '';
			end;
		4:
			theAction := Action_Reversal;

	end;

	If (cbUseAmount.Checked) or (Action_Payment = theAction) or (Action_Refund = theAction) Then
	begin
		Try
			nexo.Amount := StrToInt(efAmount.text);
		Finally
		End;
	end
	Else
		nexo.Amount := 0;

	nexo.UseInternalPrinting := cbInternalPrinting.Checked;
	ActionResult := nexo.DisplayProcessing(theAction);
	lblResult.Caption := IntToStr(ActionResult);
	lblBrand.Caption := nexo.Brand;
	lblPAN.Caption := nexo.MaskedPAN;
	Case ActionResult of
		ActionResult_success:
			Case theAction of
				Action_Payment:
					begin
						nexo.OriginalPOITransactionID := nexo.POITransactionID;
						nexo.OriginalPOITransactionTimestamp := nexo.POITransactionTimestamp;
					end;
				Action_Refund:
					begin
						nexo.OriginalPOITransactionID := ' AAA ';
						nexo.OriginalPOITransactionTimestamp := '';
					end;
				Action_Reversal:
					begin
						nexo.OriginalPOITransactionID := '';
						nexo.OriginalPOITransactionTimestamp := '';
					end;
			End;
	End;

end;

procedure TForm1.cbUseBackupClick(Sender: TObject);
begin
	nexo.UseBackup := cbUseBackup.Checked;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
	i: integer;
begin
	cbxServices.Items.Clear();
	cbxServices.Items.Add('Login');
	cbxServices.Items.Add('Logout');
	cbxServices.Items.Add('Payment');
	cbxServices.Items.Add('Refund');
	cbxServices.Items.Add('Reversal');
	cbxServices.ItemIndex := 2;

	nexo := CoNEXOSale.create;

	cbInternalPrinting.Checked := nexo.UseInternalPrinting;

end;

procedure TForm1.pbSettingsClick(Sender: TObject);
begin
	nexo.DisplaySettings(cbAdvanced.Checked);
	cbUseBackup.Checked := nexo.UseBackup;
end;

end.
