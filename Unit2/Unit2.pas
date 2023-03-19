unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
Form1.Show;
Form2.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.UniQuery1.SQL.Text := 'SELECT * FROM users WHERE username=:username AND password=:password';
  Form1.UniQuery1.ParamByName('username').AsString := Edit1.Text;
  Form1.UniQuery1.ParamByName('password').AsString := Edit4.Text;
  Form1.UniQuery1.Open;
  if Form1.UniQuery1.IsEmpty then
      MessageDlg('Check login\password', mtError, [mbOK], 0)
  else
      Form3.ShowModal;
end;

end.
