unit unitmain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
    reg: boolean;
    procedure checkReg(s: string);
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add('You pressed Button1');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add('You pressed Button2');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add('You pressed Button3');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  s: string;
begin
  reg := False;

  if (reg = False) then
  begin
    s := InputBox('Please enter registration number',
      'Please enter Registration Number', '');
    Memo1.Lines.Add('you entered ' + s);
    checkReg(s);
  end;

end;

procedure TForm1.checkReg(s: string);
begin
  Memo1.Lines.Add('Checking registration number ' + s);
  if (s = 'valid') then
  begin
    reg := True;
    Caption := Caption + ' REGISTERED';
  end
  else
    Caption := Caption + ' NOT REGISTERED';

  Memo1.Lines.Add(Caption);
end;


end.
