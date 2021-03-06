; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

;#define MyLibName "NEXOSale"
;#define MyExeName "PMS\NEXOSale"
#define MyAppName "PMS.NEXOSALE 3.0 Driver for CEGID Y2"
#define MyAppKey "PMS.NEXO30.CEGID"
#define MySettings "Settings"
#define MyLog "Log"
#define MyDoc "Doc"
#define MySettingsFileName "pms.nexo30.cegid.settings.json"
#define MySimulator "Simulator"
#define MyLibVersion GetFileVersion("..\Bin\PMS.NEXOSALE30.dll")
#define MyDriverVersion GetDateTimeString('yyyy/mm/dd', '-', ':');
#define MyExeDir "..\Bin\"
#define MySimulatorDir "..\..\Nexo\Bin\"
#define MyExeDelphiDir "..\NEXOD\Bin\"
#define MyCodeDir "..\NexoSaleTest\"
#define MyCodeDestDir ".\NexoSaleTest\"
#define MyInstallDir "..\Install\"
#define MySourceDir "..\NEXOSaleTest\"
#define MyAppPublisher "PMS"
#define MyRegistry "Software\PMS\NexoSale\"
#define MySimulatorRegistry "Software\PMS\NEXO\Simulator"
#define MyRegistryKey "SettingsFileName"
#define MySimulatorRegistryKey "Settings"
#define MyUserdocs "..\..\..\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{84982B21-D40A-4A13-A16C-07F08265A768}
AppName={#MyAppName}
AppVersion={#MyLibVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppKey}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
DisableDirPage=yes
OutputDir=..\Install
OutputBaseFilename=Install{#MyAppKey}-v{#MyLibVersion}-v{#MyDriverVersion}

Compression=lzma
SolidCompression=yes

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Dirs]
Name: "{commonappdata}\{#MyAppKey}"; Flags: uninsneveruninstall
Name: "{commonappdata}\{#MyAppKey}\{#MySettings}"; Flags: uninsneveruninstall
Name: "{commonappdata}\{#MyAppKey}\{#MyLog}"; Flags: uninsneveruninstall
Name: "{commonappdata}\{#MyAppKey}\{#MyDoc}"
Name: "{commonappdata}\{#MyAppKey}\{#MySimulator}"; Flags: uninsneveruninstall

[Files]
Source: "{#MyExeDir}PMS.NEXO30.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}PMS.COMMON.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}PMS.NEXOSALE30.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}nexoSaleTest.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyUserdocs}nexosale.settings.json"; DestDir: "{userdocs}\{#MyAppKey}"; Flags: ignoreversion
Source: "{#MySimulatorDir}nexoSimulator30.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MySimulatorDir}nexoBuilder30.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDelphiDir}PMS.NEXO30.CEGID.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDelphiDir}nexoDSaleTest.exe"; DestDir: "{app}"; Flags: ignoreversion

Source: "{#MyExeDelphiDir}{#MySettingsFileName}"; DestDir: "{commonappdata}\{#MyAppKey}\{#MySettings}"; Flags: onlyifdoesntexist
Source: "{#MySimulatorDir}nexo.simulator.json"; DestDir: "{commonappdata}\{#MyAppKey}\{#MySimulator}"; Flags: onlyifdoesntexist
Source: "{#MySimulatorDir}nexo.simulator.response.*.json"; DestDir: "{commonappdata}\{#MyAppKey}\{#MySimulator}"; Flags: onlyifdoesntexist
Source: "*.pdf"; DestDir: "{commonappdata}\{#MyAppKey}\{#MyDoc}"; Flags: onlyifdoesntexist

[Run]
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.COMMON.dll /codebase"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Registering component PMS.COMMON"
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.NEXO30.dll /codebase"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Registering component PMS.NEXO30"
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.NEXOSALE30.dll /codebase"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Registering component PMS.NEXOSALE30"
; register the driver inside the Y2 system
Filename: {code:CPOSDllManagerDir}\CPOS_DllManager.exe;  Parameters: "-reg PMS.NEXO30.CEGID.dll"; WorkingDir: "{app}"; Flags: runhidden runascurrentuser; StatusMsg: "Registering PMS.NEXO30.CEGID driver";  Check: IsCPOSDllManagerPresent

[UninstallRun]
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.COMMON.dll /unregister"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Unregistering component PMS.COMMON"
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.NEXO30.dll /unregister"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Unregistering component PMS.NEXO30"
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.NEXOSALE30.dll /unregister"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Unregistering component PMS.NEXOSALE30"
; unregister the driver from the Y2 system
Filename: {code:CPOSDllManagerDir}\CPOS_DllManager.exe;  Parameters: "-unreg PMS.NEXO30.CEGID"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Unregistering PMS.NEXO30.CEGID driver";  Check: IsCPOSDllManagerPresent

[Registry]
Root: HKCU; Subkey: "{#MyRegistry}"; ValueName: "{#MyRegistryKey}"; ValueType: string; ValueData: "{commonappdata}\{#MyAppKey}\{#MySettings}\{#MySettingsFileName}"; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCU; Subkey: "{#MySimulatorRegistry}"; ValueName: "{#MySimulatorRegistryKey}"; ValueType: string; ValueData: "{commonappdata}\{#MyAppKey}\{#MySimulator}\nexo.simulator.json"; Flags: createvalueifdoesntexist uninsdeletekey
											 
[Code]
var
  DirFound: string;
 
function FindInDir(const dir: string; const file: string): boolean;
var
  search: string;
  FindRec: TFindRec;
begin
  result := false;
  search := dir + '\*';
  if FindFirst(search, FindRec) then
  begin
    try
      repeat
        // on oublie "." et ".."
        if (FindRec.Name <> '.') and (FindRec.Name <> '..') then
        begin
          // si c'est un r�pertoire alors on l'ouvre et on cherche dedans
          if 0 <> (FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY) then
          begin
            result := FindInDir(dir + '\' + FindRec.Name, file);
          end
          // sinon on regarde si on trouve le fichier cherch�
          else 
          begin
            Log(dir + '\' + FindRec.Name);
            if 0 = CompareText(FindRec.Name, file) then
            begin
              // le fichier a �t� trouv� on va s'arr�ter
              result := true;
              DirFound := dir;
            end;
          end;
        end;
      until (result) or (not FindNext(FindRec));
    finally
      FindClose(FindRec);
    end;
  end;
end;
 
function IsCPOSDllManagerPresent(): boolean;
var
	fdir: string;
	fname: string;
begin
  DirFound := '';
	fdir := ExpandConstant('{pf}\CEGID');
	fname := 'CPOS_DllManager'
  result := FindInDir(fdir, fname + '.exe');
  if not result then MsgBox(fname + ' hasn''t been not found in ' + fdir + ' and sub-directories. The driver could not be processed (registered/unregistered), please proceed manually.', mbError, MB_OK);
end;

function CPOSDllManagerDir(const Param: string): string;
begin
  result := DirFound;
end;

function HasCPOSDllManagerDirBeenFound(): boolean;
begin
  result := DirFound <> ''
end;