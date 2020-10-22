unit ApbePluginLoaderBase;

interface

uses APBETypes, MC_PluginInterface;

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

implementation

uses sysutils;

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
