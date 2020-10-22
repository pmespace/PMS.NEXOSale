unit APBEEFTPluginLoader;

interface

uses MC_PluginInterface, APBETypes;

type
	TApbePluginLoaderBase = class(TApbeVersionedObjectBase, IMC_PluginLoader)
	protected
		procedure doEnumPlugins(const acPluginList: IMC_PluginList; aeDeviceType: TMC_DeviceType; out zcErr: IMC_Error);
			virtual; abstract;
		function doBinding(const asDeviceID, asLangID: wideString; abAdvancedSetup: Boolean; acCallback: IMC_PluginCallback;
			out zcForm: IMC_BindingHandler; out zcErr: IMC_Error): Boolean; virtual; abstract;
		function doGetInstance(const asDeviceID, asLangID: wideString; out zcErr: IMC_Error): IMC_PluginBase;
			virtual; abstract;
	public
		function enumPlugins(aeDeviceType: TMC_DeviceType; out zcErr: IMC_Error): IMC_PluginList; stdcall;
		function binding(const asDeviceID, asLangID: wideString; abAdvancedSetup: Boolean; acCallback: IMC_PluginCallback;
			out zcForm: IMC_BindingHandler; out zcErr: IMC_Error): Boolean; stdcall;
		function getInstance(const asDeviceID, asLangID: wideString; out zcErr: IMC_Error): IMC_PluginBase; stdcall;
	end;

	TApbeEFTPluginLoader = class(TApbePluginLoaderBase)
	protected
		procedure doEnumPlugins(const acPluginList: IMC_PluginList; aeDeviceType: TMC_DeviceType;
			out zcErr: IMC_Error); override;
		function doBinding(const asDeviceID, asLangID: wideString; abAdvancedSetup: Boolean; acCallback: IMC_PluginCallback;
			out zcForm: IMC_BindingHandler; out zcErr: IMC_Error): Boolean; override;
		function doGetInstance(const asDeviceID, asLangID: wideString; out zcErr: IMC_Error): IMC_PluginBase; override;
	end;

implementation

uses sysutils, APBE, MC_Binding, APBE_TLB; // , ED_EFTBinding;

// TApbePluginLoader

procedure TApbeEFTPluginLoader.doEnumPlugins(const acPluginList: IMC_PluginList; aeDeviceType: TMC_DeviceType;
	out zcErr: IMC_Error);
begin
	if aeDeviceType in [dtCAT, dtUnknown] then
		with (TAPBE.create('') as IMC_PluginBase) do
			acPluginList.add(pluginInformations);
end;

function TApbeEFTPluginLoader.doBinding(const asDeviceID, asLangID: wideString; abAdvancedSetup: Boolean;
	acCallback: IMC_PluginCallback; out zcForm: IMC_BindingHandler; out zcErr: IMC_Error): Boolean;
var
	APBE: CApbe;
begin
	// Call settings dialog
	APBE := CoCApbe.create;
	APBE.DialogSettings;
	result := true;
end;

function TApbeEFTPluginLoader.doGetInstance(const asDeviceID, asLangID: wideString; out zcErr: IMC_Error)
	: IMC_PluginBase;
var
	APBE: CApbe;
begin
	result := nil;
	APBE := CoCApbe.create;
	if Widesametext(copy(asDeviceID, 1, 7), APBE_DRIVER_NAME_EXTENDED + ' - ' + APBE.AutoReaderSoftwareID) then
		result := TAPBE.create(asLangID);
end;

// TApbePluginLoaderBase

function TApbePluginLoaderBase.enumPlugins(aeDeviceType: TMC_DeviceType; out zcErr: IMC_Error): IMC_PluginList;
begin
	result := TMC_PluginList.create;
	doEnumPlugins(result, aeDeviceType, zcErr);
end;

function TApbePluginLoaderBase.binding(const asDeviceID, asLangID: wideString; abAdvancedSetup: Boolean;
	acCallback: IMC_PluginCallback; out zcForm: IMC_BindingHandler; out zcErr: IMC_Error): Boolean; stdcall;
begin
	result := doBinding(asDeviceID, asLangID, abAdvancedSetup, acCallback, zcForm, zcErr);
end;

function TApbePluginLoaderBase.getInstance(const asDeviceID, asLangID: wideString; out zcErr: IMC_Error)
	: IMC_PluginBase;
begin
	result := (doGetInstance(asDeviceID, asLangID, zcErr) as IMC_PluginBase);
end;

end.
