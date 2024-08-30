unit mxeemain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  ExtCtrls, ComCtrls, ExtendedTabControls, Process, formhelp, IniFiles, Clipbrd;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bevel3: TBevel;
    Bevel7: TBevel;
    Button1: TButton;
    btn_ini_save: TButton;
    btn_toggle: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    btn_guessuser: TButton;
    Button8: TButton;
    Button9: TButton;
    checkbox_admin: TCheckBox;
    combo_sex: TComboBox;
    edit_house: TEdit;
    edit_street: TEdit;
    edit_postcode: TEdit;
    edit_country: TEdit;
    edit_tax: TEdit;
    edit_company: TEdit;
    edit_fullname: TEdit;
    edit_contact_cell: TEdit;
    edit_user_email: TEdit;
    edit_blackbook_bash: TEdit;
    edit_workspace: TEdit;
    edit_console: TEdit;
    edit_ssh_private_key_filename: TEdit;
    edit_user: TEdit;
    edit_admin: TEdit;
    edit_email: TEdit;
    edit_user2: TEdit;
    edit_user3: TEdit;
    edit_user4: TEdit;
    edit_email_password: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Fullname: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lb_busy: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    menu_misc_noise_rain_1: TMenuItem;
    menu_software_external_drawio: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    menu_software_external_chrome: TMenuItem;
    menu_software_external_vscode: TMenuItem;
    menu_software_external_brew: TMenuItem;
    menu_software_external_docker: TMenuItem;
    menu_software_external_thunderbird: TMenuItem;
    menu_software_external_firefox: TMenuItem;
    menu_software_external_sublimetext: TMenuItem;
    menu_software_external_sublimemerge: TMenuItem;
    menu_software_external_phpstorm: TMenuItem;
    menu_software_external_lazarus: TMenuItem;
    MenuItem60: TMenuItem;
    MenuItem61: TMenuItem;
    MenuItem62: TMenuItem;
    MenuItem63: TMenuItem;
    menu_tt_15: TMenuItem;
    menu_tt_30: TMenuItem;
    menu_tt_60: TMenuItem;
    menu_tt_120: TMenuItem;
    menu_tt_240: TMenuItem;
    menu_tt_480: TMenuItem;
    menu_tt_add: TMenuItem;
    menu_tt: TMenuItem;
    menu_tt_edit: TMenuItem;
    menu_tt_reload: TMenuItem;
    menu_bookmarks: TMenuItem;
    menu_update_venv: TMenuItem;
    menu_update_homebrew: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    menu_org_console: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem38: TMenuItem;
    menu_override_xlsx_excel: TMenuItem;
    menu_override_xlsx_libre: TMenuItem;
    menu_tweak_sudo_touchid: TMenuItem;
    menu_override_browser_default: TMenuItem;
    menu_override_browser_chrome: TMenuItem;
    menu_override_browser_firefox: TMenuItem;
    menu_override_browser_safari: TMenuItem;
    menu_toggle: TMenuItem;
    menu_quit_now: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    pb_busy: TProgressBar;
    PopupMenu_Tray: TPopupMenu;
    selectdir_workspace: TSelectDirectoryDialog;
    Separator1: TMenuItem;
    Separator10: TMenuItem;
    Separator11: TMenuItem;
    Separator12: TMenuItem;
    Separator13: TMenuItem;
    Separator14: TMenuItem;
    Separator2: TMenuItem;
    Separator3: TMenuItem;
    Separator4: TMenuItem;
    Separator6: TMenuItem;
    Separator7: TMenuItem;
    Separator8: TMenuItem;
    Separator9: TMenuItem;
    StatusBar1: TStatusBar;
    timer_cron: TTimer;
    TimerHider: TTimer;
    timer_busy: TTimer;
    TheTray: TTrayIcon;

    procedure MenuItem37Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem50Click(Sender: TObject);
    procedure MenuItem51Click(Sender: TObject);
    procedure MenuItem53Click(Sender: TObject);
    procedure MenuItem55Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure menu_misc_noise_rain_1Click(Sender: TObject);
    procedure menu_software_external_chromeClick(Sender: TObject);
    procedure menu_software_external_dockerClick(Sender: TObject);
    procedure menu_software_external_drawioClick(Sender: TObject);
    procedure menu_software_external_brewClick(Sender: TObject);
    procedure MenuItem63Click(Sender: TObject);
    procedure menu_software_external_firefoxClick(Sender: TObject);
    procedure menu_software_external_lazarusClick(Sender: TObject);
    procedure menu_software_external_phpstormClick(Sender: TObject);
    procedure menu_software_external_sublimemergeClick(Sender: TObject);
    procedure menu_software_external_sublimetextClick(Sender: TObject);
    procedure menu_software_external_thunderbirdClick(Sender: TObject);
    procedure menu_software_external_vscodeClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure timetracker(Sender: TObject);
    procedure bookmarker(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem34Click(Sender: TObject);
    procedure MenuItem35Click(Sender: TObject);
    procedure MenuItem49Click(Sender: TObject);
    procedure MenuItem60Click(Sender: TObject);
    procedure menu_tt_editClick(Sender: TObject);
    procedure menu_tt_reloadClick(Sender: TObject);
    procedure rebuild_bookmark_menu();

    procedure btn_guessuserClick(Sender: TObject);
    procedure btn_ini_saveClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_toggleClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure checkbox_adminChange(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of string);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem31Click(Sender: TObject);
    procedure MenuItem39Click(Sender: TObject);
    procedure MenuItem42Click(Sender: TObject);
    procedure MenuItem43Click(Sender: TObject);
    procedure MenuItem44Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure menu_mxee_consoleClick(Sender: TObject);
    procedure menu_org_consoleClick(Sender: TObject);
    procedure menu_override_browser_chromeClick(Sender: TObject);
    procedure menu_override_browser_defaultClick(Sender: TObject);
    procedure menu_override_browser_firefoxClick(Sender: TObject);
    procedure menu_override_browser_safariClick(Sender: TObject);
    procedure menu_toggleClick(Sender: TObject);
    procedure menu_quit_nowClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure menu_testClick(Sender: TObject);
    procedure menu_tweak_sudo_touchidClick(Sender: TObject);
    procedure menu_update_homebrewClick(Sender: TObject);
    procedure menu_update_venvClick(Sender: TObject);
    procedure PopupMenu_TrayPopup(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure StatusBar1DblClick(Sender: TObject);
    procedure TheTrayClick(Sender: TObject);
    procedure TheTrayDblClick(Sender: TObject);
    procedure TimerHiderTimer(Sender: TObject);
    procedure timer_busyTimer(Sender: TObject);

    procedure overrideable_url_show(url_string: String);
    procedure macos_say(text_en: String);
    procedure timer_cronTimer(Sender: TObject);

  private
    procedure busy_on();
    procedure busy_off();
    procedure ini_load();
    procedure ini_save();
    procedure ini_save_override_browser();
  public
    procedure BashDetached(line:String);

    procedure bash_window(cmd_actual: String);
    procedure stat1(txt: String);

  end;

var
  Form1: TForm1;
  application_version: string;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.stat1(txt: String);
begin
  StatusBar1.Panels[1].Text:=txt;
end;

procedure TForm1.busy_on();
begin
  pb_busy.Min:=0;
  pb_busy.Max:=10;
  pb_busy.Position:=0;

  self.timer_busy.Enabled:=True;
  self.lb_busy.Caption := 'Wait...';

end;

procedure TForm1.busy_off();
begin
  self.timer_busy.Enabled:=False;
  self.lb_busy.Caption := 'Ready';
  pb_busy.Min:=0;
  pb_busy.Max:=10;
  pb_busy.Position:=0;

end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  stat1('Loading...');
  self.ini_load();
  stat1('Loading... done');
end;

procedure TForm1.btn_toggleClick(Sender: TObject);
begin
  if (self.Height = 343) then
  begin
    self.Height:= btn_toggle.Height+2;
  end
  else
  begin
    self.Height:= 343;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  self.top := 0;
end;

procedure TForm1.btn_guessuserClick(Sender: TObject);
var
  s:string;
  cols: TStringArray;
begin
  s := GetUserDir();
  cols := s.Split('/', TStringSplitOptions.ExcludeEmpty);
  edit_user.Text:= cols[Length(cols)-1];
end;

procedure TForm1.btn_ini_saveClick(Sender: TObject);
begin
  stat1('Saving...');
  self.ini_save();
  stat1('Saving... done');
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
    self.Left:=screen.Width - self.Width;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  self.bash_window('sudo ADM');
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
    self.top := 0;
    self.Left:=screen.Width - self.Width;

end;


procedure TForm1.rebuild_bookmark_menu();
var
  mi: TMenuItem;
  linedata: string;
  lines: TStringArray;
  i: integer;
begin

  if edit_console.Text <> '' then
  begin
    RunCommand('/bin/bash -c ". ~/venv/bin/activate && python -m '+edit_console.Text+' --bookmarks"', linedata);
    linedata:=linedata.Trim();
    lines := linedata.Split(#10);
    menu_bookmarks.Clear;

    for i := 0 to length(lines)-1 do
      begin
        mi := TMenuItem.Create(menu_bookmarks);
        mi.Caption:='     ' + lines[i];
        mi.OnClick:=@bookmarker;
        menu_bookmarks.Add(mi);
      end;

  end;

end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  if selectdir_workspace.Execute then
  begin
    edit_workspace.Text:= selectdir_workspace.FileName;
  end;
end;

procedure TForm1.bookmarker(Sender: TObject);
var
  the_url: string;
  cols: TStringArray;
begin
  cols := trim((Sender as TMenuItem).Caption).Split(' ');
  the_url := cols[length(cols)-1];
  //stat1('link "' + the_url + '"');
  overrideable_url_show(the_url);
end;

procedure TForm1.timetracker(Sender: TObject);
var
  the_url: string;
  //cols: TStringArray;
  minutes: integer;
  tag_s: string;
  day_s: string;
  filename: string;
  lines: TStringList;

begin
  filename := GetUserDir() + '/mxee/timetracking_times.txt';
  lines := TStringList.Create();
  if FileExists(filename) then
  begin
    lines.LoadFromFile(filename);
  end;

  //cols := trim((Sender as TMenuItem).Caption).Split(' ');
  tag_s := trim((Sender as TMenuItem).Caption);
  day_s := FormatDateTime('YYYY-MM-DD', Now());
  minutes := 0;

  if menu_tt_15.Checked then
  begin
   minutes := 15;
  end;

  if menu_tt_30.Checked then
  begin
   minutes := 30;
  end;

  if menu_tt_60.Checked then
  begin
   minutes := 60;
  end;

  if menu_tt_120.Checked then
  begin
   minutes := 120;
  end;

  if menu_tt_240.Checked then
  begin
   minutes := 240;
  end;

  if menu_tt_480.Checked then
  begin
   minutes := 480;
  end;

  stat1('Project ['+tag_s+'] added ['+inttostr(minutes)+'] minutes for ['+day_s+']');
  lines.Append(day_s + ' ' + tag_s + ' ' + IntToStr(minutes));
  lines.SaveToFile(filename);
  lines.Free();
end;

procedure TForm1.MenuItem63Click(Sender: TObject);
begin
  bash_window('nano ~/mxee/timetracking_times.txt');
end;

procedure TForm1.menu_software_external_firefoxClick(Sender: TObject);
begin
  overrideable_url_show('https://www.mozilla.org/en-US/firefox/');
end;

procedure TForm1.menu_software_external_lazarusClick(Sender: TObject);
begin
  overrideable_url_show('https://www.lazarus-ide.org/');
end;

procedure TForm1.menu_software_external_phpstormClick(Sender: TObject);
begin
  overrideable_url_show('https://www.jetbrains.com/phpstorm/');
end;

procedure TForm1.menu_software_external_sublimemergeClick(Sender: TObject);
begin
  overrideable_url_show('https://www.sublimemerge.com/');
end;

procedure TForm1.menu_software_external_sublimetextClick(Sender: TObject);
begin
  overrideable_url_show('https://www.sublimetext.com/');
end;

procedure TForm1.menu_software_external_thunderbirdClick(Sender: TObject);
begin
  overrideable_url_show('https://www.thunderbird.net/');
end;

procedure TForm1.menu_software_external_vscodeClick(Sender: TObject);
begin
  overrideable_url_show('https://code.visualstudio.com/');
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.menu_software_external_brewClick(Sender: TObject);
begin
  overrideable_url_show('https://brew.sh/');
end;

procedure TForm1.menu_software_external_drawioClick(Sender: TObject);
begin
  overrideable_url_show('https://github.com/jgraph/drawio-desktop/releases/');
end;

procedure TForm1.menu_software_external_chromeClick(Sender: TObject);
begin
  overrideable_url_show('https://www.google.com/chrome/');
end;

procedure TForm1.menu_software_external_dockerClick(Sender: TObject);
begin
  overrideable_url_show('https://www.docker.com/');
end;

procedure TForm1.MenuItem37Click(Sender: TObject);
begin
  bash_window('softwareupdate -l');
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
    bash_window('sudo bash');

end;

procedure TForm1.MenuItem50Click(Sender: TObject);
begin
  bash_window('xcode-select --install');
end;

procedure TForm1.MenuItem51Click(Sender: TObject);
begin
  bash_window('softwareupdate --install-rosetta');
end;

procedure TForm1.MenuItem53Click(Sender: TObject);
begin
  overrideable_url_show('https://www.heise.de/security/');
end;

procedure TForm1.MenuItem55Click(Sender: TObject);
var
  s:string;
begin
  Clipboard().AsText:='chrome://browser/content/aboutDialog.xhtml';
  RunCommand('/bin/bash -c ''open -a "Firefox"''', s);
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  bash_window('');
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
    bash_window('. ~/venv/bin/activate');

end;

procedure TForm1.menu_misc_noise_rain_1Click(Sender: TObject);
begin
  overrideable_url_show('https://www.youtube.com/watch?v=qGfYoWt74ps');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  stat1('Started!');
end;

procedure TForm1.MenuItem34Click(Sender: TObject);
var
  s:string;
  the_id: TGuid;
begin
  CreateGUID(the_id);
  s:=GUIDToString(the_id);
  s := s.Replace('{', ' ').Replace('}', ' ').Trim().ToLower();
  Clipboard().AsText:=s;
  stat1('''' + s + ''' copied');
end;

procedure TForm1.MenuItem35Click(Sender: TObject);
var
  s:string;
  the_id: TGuid;
begin
  CreateGUID(the_id);
  s:=GUIDToString(the_id);
  s := s.Replace('{', ' ').Replace('}', ' ').Trim();
  Clipboard().AsText:=s;
  stat1('''' + s + ''' copied');
end;

procedure TForm1.MenuItem49Click(Sender: TObject);
begin
  if checkbox_admin.Checked then
  begin
   bash_window('#sudo su -l ' + edit_admin.Text + ' /opt/homebrew/bin/brew install ');
  end
  else
  begin
    bash_window('#brew install ');
  end;
end;

procedure TForm1.MenuItem60Click(Sender: TObject);
var s:string;
begin
  RunCommand('/bin/bash -c "' + edit_blackbook_bash.Text + ' &"', s);
  stat1('Balckbook command run!');
end;

procedure TForm1.menu_tt_editClick(Sender: TObject);
begin
  bash_window('nano ~/mxee/timetracking_tags.txt');
end;

procedure TForm1.menu_tt_reloadClick(Sender: TObject);
var
  mi: TMenuItem;
  linedata: string;
  lines: TStringArray;
  i: integer;
  tags: TStringList;
  filename: string;
  tags_s: string;
  ends_with_underscore: Boolean;
begin
  filename := GetUserDir() + '/mxee/timetracking_tags.txt';

  if FileExists(filename) then
  begin
    menu_tt_add.Clear;
    tags := TStringList.Create();
    tags.LoadFromFile(filename);
    tags.Sort();
    tags_s := ''+tags.GetText();
    tags_s := tags_s.Trim();
    lines := tags_s.Split(#10, TStringSplitOptions.ExcludeEmpty);

    for i := 0 to length(lines)-1 do
      begin

        mi := TMenuItem.Create(menu_tt_add);
         mi.Caption:='     ' + lines[i];
         mi.OnClick:=@timetracker;
         menu_tt_add.Add(mi);
      end;

    tags.Free;
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if (FormHelpText = Nil) then
  begin
    FormHelpText := TFormHelpText.Create(nil);
  end;
FormHelpText.Show();
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  //self.Top:= Screen.WorkAreaHeight - self.Height; // with !bsNone
  self.Top:= Screen.Height - self.Height;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  self.Left:=0;
end;

procedure TForm1.checkbox_adminChange(Sender: TObject);
begin

end;

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of string
  );
var
  i: Integer;
begin
    //todo
    for i := 0 to Length(FileNames)-1 do
    begin
stat1(FileNames[i]);
    end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  self.Top:=0;
  self.Left:=screen.Width - self.Width;
  self.busy_off();
  self.ini_load();
  self.timer_cronTimer(nil);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
    menu_toggleClick(nil);


//  self.top := 0;
//  self.Left:=screen.Width - self.Width;

end;

procedure TForm1.Image1DblClick(Sender: TObject);
begin
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  //offlinehelp
  if (FormHelpText = Nil) then
  begin
    FormHelpText := TFormHelpText.Create(nil);
  end;
FormHelpText.Show();
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  bash_window('. ~/venv/bin/activate && pip list --outdated | tail -n +3 | awk \\{\\ print\\ \\$1\\ \\} > ~/mxee/pkgu; cat ~/mxee/pkgu; cat ~/mxee/pkgu | wc -l');

end;

procedure TForm1.macos_say(text_en: String);
var
  s: string;
begin
    RunCommand('/bin/bash -c ''say -v tessa "'+text_en+'"''', s);
end;

procedure TForm1.timer_cronTimer(Sender: TObject);
var
  s:string;
  stz:string;
  h, m: longint;
  offset: longint;
begin
  offset:=GetLocalTimeOffset();
  if offset >= 0 then
  begin
      stz := '+';
  end
  else
  begin
    stz := '-';
    offset := (-1)*offset;
  end;

  m := offset mod 60;
  h := offset div 60;

  stz := stz + Format('%0.2d:%0.2d', [h, m]);
  //macos_say('test');
  //s := DateTimeToStr(Now);
  s := FormatDateTime('YYYY-MM-DD', Now()) + 'T' + FormatDateTime('HH:mm:ss', Now()) + stz;
  StatusBar1.Panels[0].Text:=s;
end;


procedure TForm1.overrideable_url_show(url_string: String);
var
  s: string;
  s2: String;
begin
  if menu_override_browser_default.Checked = True then
  begin
    RunCommand('/bin/bash -c ''open "'+url_string+'"''', s);
  end;

  if menu_override_browser_chrome.Checked = True then
  begin
    s2 :=        '/bin/bash -c ''open -a "Google Chrome" "'+url_string+'"''';
    self.Caption:=s2;;
    RunCommand(s2, s);
  end;

  if menu_override_browser_firefox.Checked = True then
  begin
    RunCommand('/bin/bash -c ''open -a "Firefox" "'+url_string+'"''', s);
  end;

  if menu_override_browser_safari.Checked = True then
  begin
    RunCommand('/bin/bash -c ''open -a "Safari" "'+url_string+'"''', s);
  end;


end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  overrideable_url_show('https://github.com/turbo-bert/mxee-ce');
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
var
  lines: TStringList;
begin
  lines := TStringList.Create();
  lines.LoadFromFile('/etc/hosts');
  Clipboard().AsText:=lines.GetText();
  lines.Free();
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  bash_window('sudo nano /etc/hosts');
end;

procedure TForm1.MenuItem28Click(Sender: TObject);
begin
    bash_window('. ~/venv/bin/activate && nano ~/mxee/pkgu');

end;

procedure TForm1.MenuItem31Click(Sender: TObject);
begin
    if (FormHelpText = Nil) then
  begin
    FormHelpText := TFormHelpText.Create(nil);
  end;
FormHelpText.Show();

end;

procedure TForm1.MenuItem39Click(Sender: TObject);
begin
  bash_window('. ~/venv/bin/activate && for X in $(cat ~/mxee/pkgu); do pip install --upgrade $X ; done');
end;

procedure TForm1.MenuItem42Click(Sender: TObject);
begin
  overrideable_url_show('https://www.swr3.de/');
end;

procedure TForm1.MenuItem43Click(Sender: TObject);
begin
    overrideable_url_show('https://www1.wdr.de/radio/wdr2/index.html');
end;

procedure TForm1.MenuItem44Click(Sender: TObject);
var
  s: string;
begin
  RunCommand('open -a "Google Chrome" "chrome://settings/help"', s);
end;

procedure TForm1.MenuItem46Click(Sender: TObject);
var
  s:string;
begin
  RunCommand('open /System/Library/PreferencePanes/Displays.prefPane', s);
end;

procedure TForm1.menu_mxee_consoleClick(Sender: TObject);
begin

end;

procedure TForm1.menu_org_consoleClick(Sender: TObject);
begin
  bash_window('. ~/venv/bin/activate && python -m ' + edit_console.Text);
end;

procedure TForm1.menu_override_browser_chromeClick(Sender: TObject);
begin
  menu_override_browser_chrome.Checked:=True;
  self.ini_save_override_browser();
end;

procedure TForm1.menu_override_browser_defaultClick(Sender: TObject);
begin
  menu_override_browser_default.Checked:=True;
  self.ini_save_override_browser();
end;

procedure TForm1.menu_override_browser_firefoxClick(Sender: TObject);
begin
  menu_override_browser_firefox.Checked:=True;
  self.ini_save_override_browser();
end;

procedure TForm1.menu_override_browser_safariClick(Sender: TObject);
begin
  menu_override_browser_safari.Checked:=True;
  self.ini_save_override_browser();
end;

procedure TForm1.menu_toggleClick(Sender: TObject);
begin
  if (self.Visible) then begin
    self.Visible:=False;
    menu_toggle.Checked:=False;
  end
    else begin
                            self.Visible:=True;
                            menu_toggle.Checked:=True;
  end;
end;

procedure TForm1.menu_quit_nowClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
           Application.Terminate;
end;

procedure TForm1.BashDetached(line:String);
var
  p: TProcess;
  i:Integer;
  opts:TStringList;
  e: String;
begin
  e:= '/bin/bash';
  opts := TStringList.Create();
  opts.Add('-l');
  opts.Add('-c');
  opts.Add(line);
  p := TProcess.Create(nil);
  p.InheritHandles:=False;
  p.Options:=[];
  p.ShowWindow:=swoHIDE;
  p.Executable:=e;
  p.Parameters := opts;
  p.Execute;
  p.Free;
  opts.Free;
end;

procedure TForm1.bash_window(cmd_actual: String);
var
  res: String;
begin
  self.BashDetached('osascript -e ''tell app "Terminal" to do script "'+cmd_actual+'"''');
  Sleep(500);
  //self.BashDetached('osascript -e ''tell application "Terminal" to set position of front window to {0, 200}''');
  //Sleep(500);
  self.BashDetached('osascript -e ''tell app "Terminal" to activate''');
  Sleep(500);

  //RunCommand('/bin/bash', ['-l', '-c', 'osascript -e ''tell application "Terminal" to set position of front window to {0, 0}'''], res);
  //Sleep(500);
  //RunCommand('/bin/bash', ['-l', '-c', 'osascript -e ''tell app "Terminal" to do script "'+cmd_actual+'"'''], res);
  //Sleep(500);
  //RunCommand('/bin/bash', ['-l', '-c', 'osascript -e ''tell app "Terminal" to activate'''], res);

end;

procedure TForm1.ini_save_override_browser();
var
  ini_filename: string;
  inif: TIniFile;
begin
  ini_filename := GetUserDir() + '.mxee.ini';
  inif := TIniFile.Create(ini_filename);

  if menu_override_browser_default.Checked = True then
  begin
   inif.WriteString('override', 'browser', 'default');
  end;

  if menu_override_browser_chrome.Checked = True then
  begin
   inif.WriteString('override', 'browser', 'chrome');
  end;

  if menu_override_browser_firefox.Checked = True then
  begin
   inif.WriteString('override', 'browser', 'firefox');
  end;

  if menu_override_browser_safari.Checked = True then
  begin
   inif.WriteString('override', 'browser', 'safari');
  end;


  inif.Free;

end;

procedure TForm1.ini_save();
var
  ini_filename: string;
  inif: TIniFile;
  rcinc: TStringList;
  rcincfilename: String;
begin
  rcincfilename:= GetUserDir() + '.mxeerc';
  rcinc := TStringList.Create();

  ini_filename := GetUserDir() + '.mxee.ini';
  inif := TIniFile.Create(ini_filename);

  rcinc.Append('# this file is generated from ~/.mxee.ini');
  rcinc.Append('# use it: ". ~/.mxeerc"');
  rcinc.Append('');


  inif.WriteString('contact', 'fullname', edit_fullname.Text);
  rcinc.Append('export MXEE_CONTACT_FULLNAME="' + edit_fullname.Text + '"');

  inif.WriteString('contact', 'country', edit_country.Text);
  rcinc.Append('export MXEE_CONTACT_COUNTRY="' + edit_country.Text + '"');

  inif.WriteString('contact', 'postcode', edit_postcode.Text);
  rcinc.Append('export MXEE_CONTACT_POSTCODE="' + edit_postcode.Text + '"');


  inif.WriteString('contact', 'house', edit_house.Text);
  rcinc.Append('export MXEE_CONTACT_HOUSE="' + edit_house.Text + '"');

  inif.WriteString('contact', 'street', edit_street.Text);
  rcinc.Append('export MXEE_CONTACT_STREET="' + edit_street.Text + '"');


  inif.WriteString('contact', 'sex', combo_sex.Text);
  rcinc.Append('export MXEE_CONTACT_SEX="' + combo_sex.Text + '"');


  inif.WriteString('contact', 'tax', edit_tax.Text);
  rcinc.Append('export MXEE_CONTACT_TAX="' + edit_tax.Text + '"');

  inif.WriteString('contact', 'company', edit_company.Text);
  rcinc.Append('export MXEE_CONTACT_COMPANY="' + edit_company.Text + '"');


  inif.WriteString('contact', 'cell', edit_contact_cell.Text);
  rcinc.Append('export MXEE_CONTACT_CELL="' + edit_contact_cell.Text + '"');

  inif.WriteString('contact', 'mail', edit_user_email.Text);
  rcinc.Append('export MXEE_CONTACT_MAIL="' + edit_user_email.Text + '"');

  inif.WriteString('main', 'user', edit_user.Text);
  rcinc.Append('export MXEE_USER="' + edit_user.Text + '"');

  inif.WriteString('main', 'blackbook_bash_cmd', edit_blackbook_bash.Text);
  rcinc.Append('export MXEE_BLACKBOOK_BASH_CMD="' + edit_blackbook_bash.Text + '"');



  inif.WriteString('main', 'admin', edit_admin.Text);
  rcinc.Append('export MXEE_ADMIN="' + edit_admin.Text + '"');


  if self.checkbox_admin.Checked=False then
    begin
      inif.WriteString('main', 'dedicated_admin', 'no');
      rcinc.Append('export MXEE_DEDICATED_ADMIN="no"');
    end
  else
    begin
      inif.WriteString('main', 'dedicated_admin', 'yes');
      rcinc.Append('export MXEE_DEDICATED_ADMIN="yes"');
    end;


    inif.WriteString('main', 'console', edit_console.Text);
    rcinc.Append('export MXEE_CONSOLE="' + edit_console.Text + '"');


    inif.WriteString('main', 'workspace', edit_workspace.Text);
    rcinc.Append('export MXEE_WORKSPACE="' + edit_workspace.Text + '"');

    inif.Free;
  rcinc.Append('');
  rcinc.Append('# eof');
  rcinc.SaveToFile(rcincfilename);
  rcinc.Free;
end;

procedure TForm1.ini_load();
var
  ini_filename: string;
  inif: TIniFile;
  override_browser: string;
  bindir: string;
  basedir: string;
  dedicated_admin: string;
begin
  menu_quit_now.Caption:='     Quit (Version ' + application_version + ')';
  bindir := GetUserDir() + 'bin-mxee';
  basedir := GetUserDir() + 'mxee';

  if (DirectoryExists(bindir)= False) then
  begin
       CreateDir(bindir);
  end;
  if (DirectoryExists(basedir)= False) then
  begin
       CreateDir(basedir);
  end;

  ini_filename := GetUserDir() + '.mxee.ini';
  if (FileExists(ini_filename)) then
  begin
    inif := TIniFile.Create(ini_filename);

   combo_sex.Text:= inif.ReadString('contact', 'sex', '');

    edit_fullname.Text:= inif.ReadString('contact', 'fullname', '');
    edit_company.Text:= inif.ReadString('contact', 'company', '');
    edit_country.Text:= inif.ReadString('contact', 'country', '');
    edit_postcode.Text:= inif.ReadString('contact', 'postcode', '');
    edit_house.Text:= inif.ReadString('contact', 'house', '');
    edit_street.Text:= inif.ReadString('contact', 'street', '');
    edit_user_email.Text := inif.ReadString('contact', 'mail', '');
    edit_tax.Text := inif.ReadString('contact', 'tax', '');

    edit_contact_cell.Text := inif.ReadString('contact', 'cell', '');

    edit_blackbook_bash.Text := inif.ReadString('main', 'blackbook_bash_cmd', '');


    edit_user.Text := inif.ReadString('main', 'user', '');
    edit_admin.Text := inif.ReadString('main', 'admin', '');
      override_browser := inif.ReadString('override', 'browser', '');

      edit_console.Text:=inif.ReadString('main', 'console', '');

      edit_workspace.Text := inif.ReadString('main', 'workspace', '');


    if override_browser = '' then
    begin
     menu_override_browser_default.Checked:=True;
    end;

   if override_browser = 'safari' then
      begin
        menu_override_browser_safari.Checked:=True;
      end;

   if override_browser = 'firefox' then
      begin
        menu_override_browser_firefox.Checked:=True;
      end;

   if override_browser = 'chrome' then
      begin
        menu_override_browser_chrome.Checked:=True;
      end;


   dedicated_admin := inif.ReadString('main', 'dedicated_admin', 'no');
   if dedicated_admin = 'no' then
      begin
       self.checkbox_admin.Checked:=False;
      end
   else
      begin
        self.checkbox_admin.Checked:=True;
      end;


    inif.Free;

    rebuild_bookmark_menu();
    menu_tt_reloadClick(nil);
  end;
end;


procedure TForm1.menu_testClick(Sender: TObject);
begin
  //self.busy_on();
  //self.bash_window('. ~/venv/bin/activate && pip list --outdated');
  //self.busy_off();

end;

procedure TForm1.menu_tweak_sudo_touchidClick(Sender: TObject);
var
  lines: TStringList;
  line: string;
  i: integer;
  found_tid : Boolean;
  the_pos: integer;
begin
  lines := TStringList.Create();
  lines.LoadFromFile('/etc/pam.d/sudo');

  found_tid:=False;
  for i := 0 to lines.Count-1 do
  begin
    line := lines[i];
    the_pos:= pos('_tid', line);
    if the_pos > 0 then
       begin
        found_tid:=True;
       end;
    //MessageDlg('', IntToStr(the_pos),mtInformation, [mbOK], 0);

  end;

  if found_tid then
     begin
      MessageDlg('Nothing to do', 'Seems already configured.', mtInformation, [mbOK], 0);
     end
  else
    begin
      MessageDlg('TODO', 'After this you will find a config line in your clipboard and a terminal with an editor. Paste that line below the ''sufficient smartcard'' line and save by pressing (ctrl x), (y), (enter)', mtInformation, [mbOK], 0);
      Clipboard().AsText:='auth       sufficient     pam_tid.so';
      bash_window('sudo nano /etc/pam.d/sudo');
    end;


  lines.Free();
end;

procedure TForm1.menu_update_homebrewClick(Sender: TObject);
var
  dedicated_cmd: String;
begin
  if checkbox_admin.Checked then
  begin
     dedicated_cmd:='sudo su -l ' + edit_admin.Text + ' /opt/homebrew/bin/brew update && sudo su -l ' + edit_admin.Text + ' /opt/homebrew/bin/brew upgrade';
     bash_window(dedicated_cmd);
//    MessageDlg('Note', dedicated_cmd, mtInformation, [mbOK], 0);
  end
  else
  begin
    bash_window('brew update && brew upgrade');
  end;
end;

procedure TForm1.menu_update_venvClick(Sender: TObject);
begin
  //bash_window('. ~/venv/bin/activate && pip freeze');
end;

procedure TForm1.PopupMenu_TrayPopup(Sender: TObject);
begin
//  self.menu_toggleClick(nil);
end;

procedure TForm1.StatusBar1Click(Sender: TObject);
begin
  Clipboard().AsText:=StatusBar1.Panels[0].Text;
    stat1('Timestamp ''' + StatusBar1.Panels[0].Text + '''copied');

end;

procedure TForm1.StatusBar1DblClick(Sender: TObject);
begin
end;

procedure TForm1.TheTrayClick(Sender: TObject);
begin

end;

procedure TForm1.TheTrayDblClick(Sender: TObject);
begin
  //doubleclick
//self.menu_toggleClick(nil);
end;

procedure TForm1.TimerHiderTimer(Sender: TObject);
begin
  TimerHider.Enabled:=False;
  //self.Visible:=False;
  //menu_toggle.Checked:=False;
end;

procedure TForm1.timer_busyTimer(Sender: TObject);
begin
  if (self.pb_busy.Position < self.pb_busy.Max) then
  begin
    self.pb_busy.Position := self.pb_busy.Position+1;
  end
  else
  begin
    self.pb_busy.Position := self.pb_busy.Min;
  end;
end;

begin
application_version:='0.0.6'; //constversionstringhook
end.

