unit formhelp;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, appcons, base64;

type

  { TFormHelpText }

  TFormHelpText = class(TForm)
    memo_help: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  FormHelpText: TFormHelpText;

implementation

{$R *.lfm}

{ TFormHelpText }

procedure TFormHelpText.FormCreate(Sender: TObject);
begin

end;

procedure TFormHelpText.FormShow(Sender: TObject);
begin
     memo_help.Text:=DecodeStringBase64(appcons_gethelp());
end;

end.

