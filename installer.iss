#define MyAppName "Maarey"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Maarey"
#define MyAppExeName "maarey.exe"

[Setup]
AppId={{8A7B4B18-1234-4567-8901-MAAREY2026}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}

DefaultDirName={autopf}\Maarey
DefaultGroupName=Maarey

OutputDir=installer_output
OutputBaseFilename=Maarey_Setup

Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Files]
Source: "build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs ignoreversion

[Icons]
Name: "{autoprograms}\Maarey"; Filename: "{app}\{#MyAppExeName}"

Name: "{autodesktop}\Maarey"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Créer un raccourci sur le bureau"; GroupDescription: "Options supplémentaires:"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Lancer Maarey"; Flags: nowait postinstall skipifsilent