library PMS.NEXO30.CEGID;

{ Remarque importante concernant la gestion de m�moire de DLL : ShareMem doit
	�tre la premi�re unit� de la clause USES de votre biblioth�que ET de votre projet
	(s�lectionnez Projet-Voir source) si votre DLL exporte des proc�dures ou des
	fonctions qui passent des cha�nes en tant que param�tres ou r�sultats de fonction.
	Cela s'applique � toutes les cha�nes pass�es de et vers votre DLL --m�me celles
	qui sont imbriqu�es dans des enregistrements et classes. ShareMem est l'unit�
	d'interface pour le gestionnaire de m�moire partag�e BORLNDMM.DLL, qui doit
	�tre d�ploy� avec vos DLL. Pour �viter d'utiliser BORLNDMM.DLL, passez les
	informations de cha�nes avec des param�tres PChar ou ShortString. }

uses
	SysUtils,
	Classes,
	MC_PluginCATInterface in 'CPOS_Interface\MC_PluginCATInterface.pas',
	MC_PluginInterface in 'CPOS_Interface\MC_PluginInterface.pas',
	NEXO in 'NEXO.pas',
	NEXOCATParamsOut in 'NEXOCATParamsOut.pas',
	NEXOLib in 'NEXOLib.pas',
	NEXOPluginBase in 'NEXOPluginBase.pas',
	NEXOPluginLoader in 'NEXOPluginLoader.pas',
	NEXOTypes in 'NEXOTypes.pas',
	ED_EFTBinding in 'ED_EFTBinding.pas',
	MC_Binding in 'MC_Binding.pas',
	MC_UICallbackParamsIn in 'MC_UICallbackParamsIn.pas',
	PMS_NEXO30_TLB in 'COM\PMS_NEXO30_TLB.pas',
	Accessibility_TLB in 'COM\Accessibility_TLB.pas',
	mscorlib_TLB in 'COM\mscorlib_TLB.pas',
	PMS_Common_TLB in 'COM\PMS_Common_TLB.pas',
	System_TLB in 'COM\System_TLB.pas',
	System_Windows_Forms_TLB in 'COM\System_Windows_Forms_TLB.pas',
	PMS_NEXOSALE30_TLB in 'COM\PMS_NEXOSALE30_TLB.pas';

// DLL exports

function getPluginLoader(out zcErr: IMC_Error): IMC_PluginLoader; stdcall;
begin
	result := nil;
	try
		result := TNexoPluginLoader.create('');
	except
		on e: Exception do
			zcErr := TMC_Error.create(-1, e.message, 0);
	end;
end;

exports
	getPluginLoader;

end.
