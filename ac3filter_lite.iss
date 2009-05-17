[Setup]
AppName=AC3Filter Lite
AppID=AC3Filter
AppVerName=AC3Filter {#appver}
AppPublisher=Alexander Vigovsky
AppPublisherURL=http://ac3filter.net
AppCopyright=Copyright (c) 2002-2009 by Alexander Vigovsky
DefaultDirName={pf}\AC3Filter
DefaultGroupName=AC3Filter
SolidCompression=yes
LanguageDetectionMethod=locale

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"
Name: eu; MessagesFile: "compiler:Languages\Basque.isl"
Name: pt_br; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: ca; MessagesFile: "compiler:Languages\Catalan.isl"
Name: cs; MessagesFile: "compiler:Languages\Czech.isl"
Name: da; MessagesFile: "compiler:Languages\Danish.isl"
Name: nl; MessagesFile: "compiler:Languages\Dutch.isl"
Name: fi; MessagesFile: "compiler:Languages\Finnish.isl"
Name: fr; MessagesFile: "compiler:Languages\French.isl"
Name: de; MessagesFile: "compiler:Languages\German.isl"
Name: he; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: hu; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: it; MessagesFile: "compiler:Languages\Italian.isl"
Name: nn; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: pl; MessagesFile: "compiler:Languages\Polish.isl"
Name: pt; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: ru; MessagesFile: "compiler:Languages\Russian.isl"
Name: sk; MessagesFile: "compiler:Languages\Slovak.isl"
Name: sl; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: es; MessagesFile: "compiler:Languages\Spanish.isl"

[Components]
Name: "prog";          Description: "Program files:"; Types: full compact
Name: "prog\filter32"; Description: "AC3Filter (32bit)"; Types: full compact

[Files]
Source: "filter\Release\ac3filter.ax";             DestDir: "{app}"; Components: prog\filter32; Flags: 32bit Regserver RestartReplace UninsRestartDelete
Source: "tools\ac3config\Release\ac3config.exe";   DestDir: "{app}"; Components: prog\filter32; Flags: 32bit RestartReplace UninsRestartDelete
Source: "tools\spdif_test\Release\spdif_test.exe"; DestDir: "{app}"; Components: prog\filter32; Flags: 32bit RestartReplace UninsRestartDelete

Source: "reg\*.reg";   DestDir: "{app}"
Source: "Readme.txt";  DestDir: "{app}"
Source: "Changes.txt"; DestDir: "{app}"
Source: "GPL.txt";     DestDir: "{app}"

[Icons]
Name: "{group}\AC3Filter home"; Filename: "http://ac3filter.net"
Name: "{group}\AC3Config"; Filename: "{app}\ac3config.exe"; Components: prog\filter32
Name: "{group}\SPDIF test (32bit)"; Filename: "{app}\spdif_test.exe"; Components: prog\filter32

Name: "{group}\Reset to defaults"; Filename: "{app}\Reset to defaults.reg"
Name: "{group}\Default presets"; Filename: "{app}\Presets.reg"
Name: "{group}\Readme"; Filename: "{app}\Readme.txt"
Name: "{group}\Uninstall AC3Filter"; Filename: "{uninstallexe}"

[Registry]
Root: HKCU; Subkey: "Software\AC3Filter"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\AC3Filter"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[Run]
Filename: "regedit"; Parameters: "/s ""{app}\Presets.reg""";
Filename: "regedit"; Parameters: "/s ""{app}\Reset to defaults.reg""";

