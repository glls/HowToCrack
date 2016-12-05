unit unitMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormMain }

  TFormMain = class(TForm)
    ButtonPressMe: TButton;
    LabelPress: TLabel;
    Memo1: TMemo;
    procedure ButtonPressMeClick(Sender: TObject);
    procedure ButtonPressMeMouseEnter(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

{ TFormMain }

procedure TFormMain.ButtonPressMeClick(Sender: TObject);
begin
  ShowMessage('Button pressed, riddle solved!');
end;

procedure TFormMain.ButtonPressMeMouseEnter(Sender: TObject);
begin
  ButtonPressMe.Enabled := False;
end;

end.

