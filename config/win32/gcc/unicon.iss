; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!


; The include file is generated by the top-level Makefile
; It should look like this:
; #define PkgName "unicon"
; #define AppVersion "13.2"
; #define AppRevision "6192-69ae5230"

#include "unicon_version.iss"
#define AppName "Unicon"
#define AppPublisher "unicon.org"
#define AppURL "http://unicon.org/"
#define AppExeName "Unicon.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; To generate a new GUID, click Tools | Generate GUID inside the IDE.
AppId={{869E8A4F-95DA-4132-B83B-41EFDCBE7BF9}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
DefaultDirName=C:\{#AppName}
DefaultGroupName={#AppName}

;VersionInfoVersion=13.0.0.0
AllowNoIcons=yes
OutputBaseFilename=setup-{#PkgName}_{#AppVersion}~{#AppRevision}(64-bit)
Compression=lzma2/ultra
SolidCompression=yes
Uninstallable=yes
SetupIconFile=config\win32\gcc\setup.ico
WizardImageFile=config\win32\gcc\setupbig.bmp
WizardSmallImageFile=config\win32\gcc\setupsmall.bmp

;Prevent installer from being run multiple times in parallel
SetupMutex=SetupMutex{#SetupSetting("AppId")}


; uncomment the following line if you want your installation to run on NT 3.51 too.
; MinVersion=4,3.51

; This eliminates the need for restart for the new PATH to be effective
ChangesEnvironment=yes
ShowLanguageDialog=yes

; top dir level to unicon.iss
SourceDir=.\..\..\..\

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; MinVersion: 4,4

[Files]
Source: "config\win32\gcc\uninstall.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "config\win32\gcc\internet.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\*.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
;Source: "bin\*.dll"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "rt\lib\*.*"; DestDir: "{app}\rt\lib"; Flags: ignoreversion
Source: "rt\include\*.h"; DestDir: "{app}\rt\include"; Flags: ignoreversion
Source: "rt\include\uri\*.h"; DestDir: "{app}\rt\include\uri"; Flags: ignoreversion
Source: "rt\include\openssl\*.h"; DestDir: "{app}\rt\include\openssl"; Flags: ignoreversion skipifsourcedoesntexist
Source: "COPYING"; DestDir: "{app}"; DestName: "COPYING.txt"; Flags: ignoreversion

; Documentation
Source: "doc\*.gif"; DestDir: "{app}\doc"; Flags: ignoreversion
Source: "doc\icon\*.*"; DestDir: "{app}\doc\icon"; Flags: ignoreversion
Source: "doc\icon\faq_files\*.*"; DestDir: "{app}\doc\icon\fag_files"; Flags: ignoreversion

Source: "doc\utr\*.*"; DestDir: "{app}\doc\utr"; Flags: ignoreversion
Source: "doc\utr\utr6\*.*"; DestDir: "{app}\doc\utr\utr6"; Flags: ignoreversion
Source: "doc\utr\utr7\*.*"; DestDir: "{app}\doc\utr\utr7"; Flags: ignoreversion
Source: "doc\utr\utr12\*.*"; DestDir: "{app}\doc\utr\utr12"; Flags: ignoreversion

Source: "doc\unicon\*.*"; DestDir: "{app}\doc\unicon"; Flags: ignoreversion
Source: "doc\unicon\utr1\*.*"; DestDir: "{app}\doc\unicon\utr1"; Flags: ignoreversion
Source: "doc\unicon\utr6\*.*"; DestDir: "{app}\doc\unicon\utr6"; Flags: ignoreversion

Source: "doc\udb\*.html"; DestDir: "{app}\doc\udb"; Flags: ignoreversion
Source: "doc\udb\*.pdf"; DestDir: "{app}\doc\udb"; Flags: ignoreversion

Source: "doc\book\ub.pdf"; DestDir: "{app}\doc\book"; Flags: ignoreversion skipifsourcedoesntexist

;IPL
Source: "ipl\cfuncs\*.*"; DestDir: "{app}\ipl\cfuncs"; Flags: ignoreversion
Source: "ipl\packs\*.*"; DestDir: "{app}\ipl\packs"; Flags: ignoreversion
Source: "ipl\procs\*.*"; DestDir: "{app}\ipl\procs"; Flags: ignoreversion
Source: "ipl\progs\*.*"; DestDir: "{app}\ipl\progs"; Flags: ignoreversion
Source: "ipl\incl\*.*"; DestDir: "{app}\ipl\incl"; Flags: ignoreversion
Source: "ipl\data\*.*"; DestDir: "{app}\ipl\data"; Flags: ignoreversion
Source: "ipl\docs\*.*"; DestDir: "{app}\ipl\docs"; Flags: ignoreversion
Source: "ipl\gpacks\*.*"; DestDir: "{app}\ipl\gpacks"; Flags: ignoreversion
Source: "ipl\gprocs\*.*"; DestDir: "{app}\ipl\gprocs"; Flags: ignoreversion
Source: "ipl\gprogs\*.*"; DestDir: "{app}\ipl\gprogs"; Flags: ignoreversion
Source: "ipl\gincl\*.*"; DestDir: "{app}\ipl\gincl"; Flags: ignoreversion
Source: "ipl\gdata\*.*"; DestDir: "{app}\ipl\gdata"; Flags: ignoreversion
Source: "ipl\gdocs\*.*"; DestDir: "{app}\ipl\gdocs"; Flags: ignoreversion
Source: "ipl\mpacks\*.*"; DestDir: "{app}\ipl\mpacks"; Flags: ignoreversion
Source: "ipl\mprocs\*.*"; DestDir: "{app}\ipl\mprocs"; Flags: ignoreversion
Source: "ipl\mprogs\*.*"; DestDir: "{app}\ipl\mprogs"; Flags: ignoreversion
Source: "ipl\mincl\*.*"; DestDir: "{app}\ipl\mincl"; Flags: ignoreversion
Source: "ipl\mdata\*.*"; DestDir: "{app}\ipl\mdata"; Flags: ignoreversion
Source: "ipl\mdocs\*.*"; DestDir: "{app}\ipl\mdocs"; Flags: ignoreversion
Source: "ipl\lib\*.*"; DestDir: "{app}\ipl\lib"; Flags: ignoreversion

; uni misc
Source: "Makedefs.uni"; DestDir: "{app}\uni\"; Flags: ignoreversion
Source: "uni\lib\*.*"; DestDir: "{app}\uni\lib"; Flags: ignoreversion
Source: "uni\xml\*.icn"; DestDir: "{app}\uni\xml"; Flags: ignoreversion
Source: "uni\xml\*.u"; DestDir: "{app}\uni\xml"; Flags: ignoreversion
Source: "uni\xml\Makefile"; DestDir: "{app}\uni\xml"; Flags: ignoreversion
Source: "uni\util\*.icn"; DestDir: "{app}\uni\util"; Flags: ignoreversion
Source: "uni\util\Makefile"; DestDir: "{app}\uni\util"; Flags: ignoreversion
Source: "uni\progs\Makefile"; DestDir: "{app}\uni\progs"; Flags: ignoreversion
Source: "uni\progs\*.icn"; DestDir: "{app}\uni\progs"; Flags: ignoreversion

; GUI library
Source: "uni\gui\*.icn"; DestDir: "{app}\uni\gui"; Flags: ignoreversion
Source: "uni\gui\*.u"; DestDir: "{app}\uni\gui"; Flags: ignoreversion
Source: "uni\gui\uniclass.*"; DestDir: "{app}\uni\gui"; Flags: ignoreversion
Source: "uni\gui\Makefile"; DestDir: "{app}\uni\gui"; Flags: ignoreversion

Source: "uni\gui\guidemos\*.icn"; DestDir: "{app}\uni\gui\guidemos"; Flags: ignoreversion
Source: "uni\gui\guidemos\Makefile"; DestDir: "{app}\uni\gui\guidemos"; Flags: ignoreversion

; IVIB
Source: "uni\gui\ivib\*.icn"; DestDir: "{app}\uni\gui\ivib"; Flags: ignoreversion
Source: "uni\gui\ivib\Makefile"; DestDir: "{app}\uni\gui\ivib"; Flags: ignoreversion
Source: "uni\gui\ivib\icon\*.icon"; DestDir: "{app}\uni\gui\ivib\icon"; Flags: ignoreversion
Source: "uni\gui\ivib\icon\*.xpm"; DestDir: "{app}\uni\gui\ivib\icon"; Flags: ignoreversion
Source: "uni\gui\ivib\icon\icon.gif"; DestDir: "{app}\uni\gui\ivib\icon"; Flags: ignoreversion
Source: "uni\gui\ivib\icon\xpmtoims.icn"; DestDir: "{app}\uni\gui\ivib\icon"; Flags: ignoreversion

; The old IVIB 
; NOTE: The old ivib was dropped from sources in early 2014.
Source: "uni\ivib\README"; DestDir: "{app}\uni\ivib"; Flags: ignoreversion

; IDE
Source: "uni\ide\*.icn"; DestDir: "{app}\uni\ide"; Flags: ignoreversion
Source: "uni\ide\Makefile"; DestDir: "{app}\uni\ide"; Flags: ignoreversion

; UDB
Source: "uni\udb\*.icn"; DestDir: "{app}\uni\udb"; Flags: ignoreversion
Source: "uni\udb\auto.y"; DestDir: "{app}\uni\udb"; Flags: ignoreversion
Source: "uni\udb\Makefile"; DestDir: "{app}\uni\udb"; Flags: ignoreversion
Source: "uni\udb\dta\*.icn"; DestDir: "{app}\uni\udb\dta"; Flags: ignoreversion
Source: "uni\udb\dta\Makefile"; DestDir: "{app}\uni\udb\dta"; Flags: ignoreversion
Source: "uni\udb\lib\*.icn"; DestDir: "{app}\uni\udb\lib"; Flags: ignoreversion
Source: "uni\udb\lib\Makefile"; DestDir: "{app}\uni\udb\lib"; Flags: ignoreversion

; Unicon!
Source: "uni\unicon\*.icn"; DestDir: "{app}\uni\unicon"; Flags: ignoreversion
Source: "uni\unicon\idol.u"; DestDir: "{app}\uni\unicon"; Flags: ignoreversion
Source: "uni\unicon\unigram.u"; DestDir: "{app}\uni\unicon"; Flags: ignoreversion
Source: "uni\unicon\Makefile"; DestDir: "{app}\uni\unicon"; Flags: ignoreversion

; 3D Library
Source: "uni\3d\*.icn"; DestDir: "{app}\uni\3d"; Flags: ignoreversion
Source: "uni\3d\*.u"; DestDir: "{app}\uni\3d"; Flags: ignoreversion
Source: "uni\3d\uniclass.*"; DestDir: "{app}\uni\3d"; Flags: ignoreversion
Source: "uni\3d\viewer\*.icn"; DestDir: "{app}\uni\3d\viewer"; Flags: ignoreversion
Source: "uni\3d\viewer\Makefile"; DestDir: "{app}\uni\3d\viewer"; Flags: ignoreversion
Source: "uni\3d\models\*.*"; DestDir: "{app}\uni\3d\models"; Flags: ignoreversion

; tests
Source: "tests\Makefile"; DestDir: "{app}\tests"; Flags: ignoreversion
Source: "tests\Makefile.test"; DestDir: "{app}\tests"; Flags: ignoreversion

; general tests
Source: "tests\general\*.icn"; DestDir: "{app}\tests\general"; Flags: ignoreversion
Source: "tests\general\foo.baz"; DestDir: "{app}\tests\general"; Flags: ignoreversion
Source: "tests\general\stand\*.std"; DestDir: "{app}\tests\general"; Flags: ignoreversion
Source: "tests\general\README"; DestDir: "{app}\tests\general"; Flags: ignoreversion
Source: "tests\general\Makefile"; DestDir: "{app}\tests\general"; Flags: ignoreversion

; posix tests
Source: "tests\posix\*.icn"; DestDir: "{app}\tests\posix"; Flags: ignoreversion
Source: "tests\posix\stand\*.std"; DestDir: "{app}\tests\posix"; Flags: ignoreversion
Source: "tests\posix\Makefile"; DestDir: "{app}\tests\posix"; Flags: ignoreversion


; Thread tests
Source: "tests\thread\*.icn"; DestDir: "{app}\tests\thread"; Flags: ignoreversion
Source: "tests\thread\stand\*.std"; DestDir: "{app}\tests\thread"; Flags: ignoreversion
Source: "tests\thread\README"; DestDir: "{app}\tests\thread"; Flags: ignoreversion
Source: "tests\thread\Makefile"; DestDir: "{app}\tests\thread"; Flags: ignoreversion

; Bench
Source: "tests\bench\*.icn"; DestDir: "{app}\tests\bench"; Flags: ignoreversion
Source: "tests\bench\*.dat"; DestDir: "{app}\tests\bench"; Flags: ignoreversion
Source: "tests\bench\*.c"; DestDir: "{app}\tests\bench"; Flags: ignoreversion
Source: "tests\bench\*.test"; DestDir: "{app}\tests\bench"; Flags: ignoreversion
Source: "tests\bench\README"; DestDir: "{app}\tests\bench"; Flags: ignoreversion
Source: "tests\bench\Makefile"; DestDir: "{app}\tests\bench"; Flags: ignoreversion
Source: "tests\bench\icon\*.*"; DestDir: "{app}\tests\bench\icon"; Flags: ignoreversion


[INI]
Filename: "{app}\WU.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://unicon.org"

[Icons]
Name: {group}\{cm:UninstallProgram,Windows Unicon}; Filename: {uninstallexe};IconFilename: "{app}\uninstall.ico"
Name: "{group}\Windows Unicon on the Web"; Filename: "{app}\WU.url" ;IconFilename: "{app}\internet.ico"
Name: "{group}\Windows Unicon"; Filename: "{app}\bin\UI.EXE"
Name: "{group}\Programming with Unicon"; Filename: "{app}\doc\book\ub.pdf"
Name: "{group}\Unicon Software License"; Filename: "{app}\COPYING.txt" ;IconFilename: "{app}\internet.ico"
Name: "{userdesktop}\Windows Unicon"; Filename: "{app}\bin\UI.EXE"; MinVersion: 4,4; Tasks: desktopicon


[Run]
;Filename: "{app}\bin\patchstr.EXE"; Parameters: "-DPatchStringHere {app}\bin\iconx.exe"; Flags: postinstall
Filename: "{app}\bin\UI.EXE"; Description: "Launch Windows Unicon"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\WU.url"

[Registry]
; Add unicon\bin to the path (current user only)
;Root: HKCU; Subkey: "Environment"; ValueName: "Path"; ValueType: "string"; ValueData: "{app}\bin;{olddata}";  Flags: preservestringtype;

; Add unicon\bin to the path (all users)
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Session Manager\Environment"; ValueName: "Path"; ValueType: "string"; ValueData: "{app}\bin;{olddata}"; Check: NotOnAllUsersPathAlready(); Flags: preservestringtype;


[Code]
function NotOnPathAlready(): Boolean;
var
  BinDir, Path: String;
begin
  Log('Checking if unicon\bin dir is already on the %PATH%');
  if RegQueryStringValue(HKEY_CURRENT_USER, 'Environment', 'Path', Path) then
  begin // Successfully read the value
    Log('HKCU\Environment\PATH = ' + Path);
    BinDir := ExpandConstant('{app}\bin');
    Log('Looking for unicon\bin dir in %PATH%: ' + BinDir + ' in ' + Path);
    if Pos(LowerCase(BinDir), Lowercase(Path)) = 0 then
    begin
      Log('Did not find unicon\bin dir in %PATH% so will add it');
      Result := True;
    end
    else
    begin
      Log('Found unicon\bin dir in %PATH% so will not add it again');
      Result := False;
    end
  end
  else // The key probably doesn't exist
  begin
    Log('Could not access HKCU\Environment\PATH so assume it is ok to add it');
    Result := True;
  end;
end;

function NotOnAllUsersPathAlready(): Boolean;
var
  BinDir, Path: String;
begin
  Log('Checking if unicon\bin dir is already on the %PATH%');
  if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SYSTEM\ControlSet001\Control\Session Manager\Environment', 'Path', Path) then
  begin // Successfully read the value
    Log('HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment\PATH = ' + Path);
    BinDir := ExpandConstant('{app}\bin');
    Log('Looking for unicon\bin dir in %PATH%: ' + BinDir + ' in ' + Path);
    if Pos(LowerCase(BinDir), Lowercase(Path)) = 0 then
    begin
      Log('Did not find unicon\bin dir in %PATH% so will add it');
      Result := True;
    end
    else
    begin
      Log('Found unicon\bin dir in %PATH% so will not add it again');
      Result := False;
    end
  end
  else // The key probably doesn't exist
  begin
    Log('Could not access HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment\PATH so assume it is ok to add it');
    Result := True;
  end;
end;

function PatchExe(const arg: string): Integer;
var
  PatchStr : string;
  ResultCode: Integer;
begin
  PatchStr := ExpandConstant('{app}\bin\patchstr.exe');
  if Exec(PatchStr, arg, ExpandConstant('{app}\bin'),
          SW_HIDE, ewWaitUntilTerminated, ResultCode)
  then
    // return 1 on success
    Result  := 1
  else
    // otherwise show error msg
    SysErrorMessage(ResultCode);

  Result := 0;
end;

function PostInstall( ): Integer;
var
  FindRec: TFindRec;
  iconx: string;
begin
  // initialize result to 0 processed files
  Result := 0;
  // expand the path to patchstr

  // check if the patchstr exists; if not then exit...
  if not FileExists(ExpandConstant('{app}\bin\patchstr.exe')) then
  begin
    MsgBox('patchstr.exe not found!' + #13#10, mbError, MB_OK);
    Exit;
  end;
  // if we've found a *.exed file in the specified folder, then...
  if FindFirst(ExpandConstant('{app}\bin\*.exe'), FindRec) then
  try
    // repeat loop for every *.exe file in the specified folder
    repeat
      // if the iterated item is not a directory named like Dir.exe
      if FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY = 0 then
      begin
        if (FindRec.Name = 'icont.exe') or (FindRec.Name = 'wicont.exe') then

        begin
          if FindRec.Name = 'icont.exe' then
            iconx := 'iconx.exe'
          else
            iconx := 'wiconx.exe';

          Result := Result + PatchExe(' -DPatchStringHere ' +  FindRec.Name + ' ' +
                              ExpandConstant('{app}\bin\'+ iconx));

          Result := Result + PatchExe(' -DPatchUnirotHere ' +  FindRec.Name + ' ' +
                            ExpandConstant('{app}'));
        end
        else
        if FindRec.Name <> 'patchstr.exe' then
        begin
          Result := Result + PatchExe(' -DPatchStringHere ' +  FindRec.Name + ' ' +
                            ExpandConstant('{app}\bin\'));

          Result := Result + PatchExe(' -DPatchUnirotHere ' +  FindRec.Name + ' ' +
                            ExpandConstant('{app}'));
        end
      end;
    until
      // when there no next file item, the loop ends
      not FindNext(FindRec);
  finally
    // release the allocated search resources
    FindClose(FindRec);
  end;
end;

//show a "marquee" (= infinite) progress bar
procedure SetMarqueeProgress(Marquee: Boolean);
begin
  if Marquee then
  begin
    WizardForm.ProgressGauge.Style := npbstMarquee;
  end
    else
  begin
    WizardForm.ProgressGauge.Style := npbstNormal;
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then
  begin
    Log('Post install');
    SetMarqueeProgress(True)
    PostInstall();
    SetMarqueeProgress(False)
  end;
end;
