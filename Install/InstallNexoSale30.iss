; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

;#define MyLibName "NEXOSale"
;#define MyExeName "PMS\NEXOSale"
#define MyAppName "PMS.NEXOSALE 3.0"
#define MyAppKey "PMS.NEXOSALE30"
#define MySettings "Settings"
#define MyLog "Log"
#define MyDoc "Doc"
#define MySimulator "Simulator"
#define MyLibVersion GetVersionNumbersString("..\Bin\PMS.NEXOSALE30.dll")
#define MyDriverVersion GetDateTimeString('yyyy/mm/dd', '-', ':');
#define MyExeDir "..\bin"
#define MySimulatorDir "..\..\Nexo\bin\net47"
#define MyDelphiExeDir "..\NEXOD\bin"
#define MyDelphiCodeDir "..\NEXOD\nexodsaletest"
#define MyAppPublisher "PMS"
#define MyRegistry "Software\PMS\NexoSale\"
#define MySimulatorRegistry "Software\PMS\NEXO\Simulator"
#define MyRegistryKey "SettingsFileName"
#define MySimulatorRegistryKey "Settings"
#define MyUserdocs "..\..\.."
#define MyNexoSaleFolder "nexoSale"
#define MyPDFToAdd "..\PMS.NEXOSALE*.pdf"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{84982B21-D40A-4A13-A16C-07F08265A768}
AppName={#MyAppName}
AppVersion={#MyLibVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
DefaultDirName={commonpf}\{#MyAppKey}
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
Name: "{app}"; Flags: uninsalwaysuninstall
Name: "{commonappdata}\{#MyAppKey}\{#MySettings}"; Flags: uninsneveruninstall
Name: "{commonappdata}\{#MyAppKey}\{#MyLog}"; Flags: uninsneveruninstall
Name: "{commonappdata}\{#MyAppKey}\{#MyDoc}"; Flags: uninsalwaysuninstall
Name: "{commonappdata}\{#MyAppKey}\{#MySimulator}"; Flags: uninsalwaysuninstall

[Files]
Source: "{#MyExeDir}\PMS.NEXO30.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}\PMS.COMMON.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}\PMS.HPDF.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}\libhpdf.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "{#MyExeDir}\PMS.NEXOSALE30.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}\fr\PMS.NEXOSALE30.*.dll"; DestDir: "{app}\fr"; Flags: ignoreversion

;Source: "{#MyExeDir}\System.*.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#MyExeDir}\Microsoft.*.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#MyExeDir}\netstandard.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "{#MyExeDir}\nexoSaleTest.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyExeDir}\fr\nexoSaleTest.*.dll"; DestDir: "{app}\fr"; Flags: ignoreversion

Source: "{#MyUserdocs}\{#MyNexoSaleFolder}\nexosale.settings.json"; DestDir: "{userdocs}\{#MyNexoSaleFolder}"; Flags: ignoreversion
Source: "{#MySimulatorDir}\nexoSimulator30.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MySimulatorDir}\nexoBuilder30.exe"; DestDir: "{app}"; Flags: ignoreversion

Source: "{#MyDelphiExeDir}\nexodsaletest.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyDelphiCodeDir}\*.*"; DestDir: "{app}\nexodsaletest"; Flags: recursesubdirs ignoreversion

Source: "{#MySimulatorDir}\nexo.simulator.json"; DestDir: "{commonappdata}\{#MyAppKey}\{#MySimulator}"; Flags: onlyifdoesntexist
Source: "{#MySimulatorDir}\nexo.simulator.response.*.json"; DestDir: "{commonappdata}\{#MyAppKey}\{#MySimulator}"; Flags: onlyifdoesntexist
Source: "{#MyPDFToAdd}"; DestDir: "{commonappdata}\{#MyAppKey}\{#MyDoc}"; Flags: onlyifdoesntexist

[Run]
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.COMMON.dll /tlb /codebase"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Registering component PMS.COMMON"
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.NEXO30.dll /tlb /codebase"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Registering component PMS.NEXO30"
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.NEXOSALE30.dll /tlb /codebase"; WorkingDir: "{app}"; Flags: runhidden; StatusMsg: "Registering component PMS.NEXOSALE30"

[UninstallRun]
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.COMMON.dll /unregister"; WorkingDir: "{app}"; Flags: runhidden; RunOnceId: "UnregisteringPMSCOMMON"
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.NEXO30.dll /unregister"; WorkingDir: "{app}"; Flags: runhidden; RunOnceId: "UnregisteringPMSNEXO30"
Filename: {dotnet40}\Regasm.exe;    Parameters: "PMS.NEXOSALE30.dll /unregister"; WorkingDir: "{app}"; Flags: runhidden; RunOnceId: "UnregisteringPMSNEXOSALE30"

[Registry]
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
	fdir := ExpandConstant('{commonpf}\CEGID');
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