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
    edit_ssh_private_key_filename: TEdit;
    edit_user: TEdit;
    edit_user1: TEdit;
    edit_email: TEdit;
    edit_user2: TEdit;
    edit_user3: TEdit;
    edit_user4: TEdit;
    edit_email_password: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    lb_busy: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    menu_mxee_console: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
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
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
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
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    menu_test: TMenuItem;
    pb_busy: TProgressBar;
    PopupMenu_Tray: TPopupMenu;
    Separator1: TMenuItem;
    Separator2: TMenuItem;
    Separator3: TMenuItem;
    Separator4: TMenuItem;
    Separator5: TMenuItem;
    Separator6: TMenuItem;
    Separator7: TMenuItem;
    Separator8: TMenuItem;
    StatusBar1: TStatusBar;
    timer_cron: TTimer;
    TimerHider: TTimer;
    timer_busy: TTimer;
    TheTray: TTrayIcon;


    procedure btn_guessuserClick(Sender: TObject);
    procedure btn_ini_saveClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
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
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem31Click(Sender: TObject);
    procedure menu_override_browser_chromeClick(Sender: TObject);
    procedure menu_override_browser_defaultClick(Sender: TObject);
    procedure menu_override_browser_firefoxClick(Sender: TObject);
    procedure menu_override_browser_safariClick(Sender: TObject);
    procedure menu_toggleClick(Sender: TObject);
    procedure menu_quit_nowClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure menu_testClick(Sender: TObject);
    procedure menu_tweak_sudo_touchidClick(Sender: TObject);
    procedure PopupMenu_TrayPopup(Sender: TObject);
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
  bash_window('sudo bash');
end;

procedure TForm1.macos_say(text_en: String);
var
  s: string;
begin
    RunCommand('/bin/bash -c ''say -v tessa "'+text_en+'"''', s);
end;

procedure TForm1.timer_cronTimer(Sender: TObject);
begin
  //macos_say('test');
  StatusBar1.Panels[0].Text:='-';
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
  bash_window('');
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  bash_window('. ~/venv/bin/activate');
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

procedure TForm1.MenuItem31Click(Sender: TObject);
begin
    if (FormHelpText = Nil) then
  begin
    FormHelpText := TFormHelpText.Create(nil);
  end;
FormHelpText.Show();

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
begin
  ini_filename := GetUserDir() + '.mxee.ini';
  inif := TIniFile.Create(ini_filename);
  inif.WriteString('main', 'user', edit_user.Text);


  if self.checkbox_admin.Checked=False then
    begin
      inif.WriteString('main', 'dedicated_admin', 'no');
    end
  else
    begin
      inif.WriteString('main', 'dedicated_admin', 'yes');
    end;



  inif.Free;
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

      edit_user.Text := inif.ReadString('main', 'user', '');
      override_browser := inif.ReadString('override', 'browser', '');

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

procedure TForm1.PopupMenu_TrayPopup(Sender: TObject);
begin
//  self.menu_toggleClick(nil);
end;

procedure TForm1.StatusBar1DblClick(Sender: TObject);
begin
  stat1('copied');
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
  self.Visible:=False;
  menu_toggle.Checked:=False;
//  macos_say('started');
StatusBar1.Panels[0].Text:='-';
StatusBar1.Panels[1].Text:='-';

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
application_version:='0.0.1'; //constversionstringhook
end.

