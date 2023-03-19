unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, UniProvider, PostgreSQLUniProvider, DB,
  MemDS, DBAccess, Uni;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditUserName: TEdit;
    EditFirstName: TEdit;
    EditLastName: TEdit;
    EditEmail: TEdit;
    RadioButton1: TRadioButton;
    SpeedButton1: TSpeedButton;
    ButtonSignUp: TButton;
    EditPassword: TEdit;
    UniConnection1: TUniConnection;
    UniQuery1: TUniQuery;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ButtonSignUpClick(Sender: TObject);

  private
   user_name, password, email, first_name, last_name: string;

  public
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.ButtonSignUpClick(Sender: TObject);
begin
  user_name := EditUserName.Text;
  first_name := EditFirstName.Text;
  last_name := EditLastName.Text;
  email := EditEmail.Text;
  password := EditPassword.Text;

  UniConnection1.Server := '7.tcp.eu.ngrok.io';  //сервер запущен у меня на компе. Если ошибка - значит комп я выключил))
  UniConnection1.Port := 14298;
  UniConnection1.Username := 'user1';
  UniConnection1.Password := 'lapicus';
  UniConnection1.Database := 'postgres';
  UniConnection1.ProviderName := 'PostgreSQL';


  try
    UniConnection1.Connect;
  except
    ShowMessage('Unable to connect to the database');
    Exit;
  end;

  UniQuery1.SQL.Text := 'SELECT COUNT(*) FROM users WHERE email = :email';
  UniQuery1.ParamByName('email').AsString := email;
  UniQuery1.Open;

  if UniQuery1.Fields[0].AsInteger > 0 then
     begin
     MessageDlg('Email address is already in use', mtError, [mbOK], 0);
     UniQuery1.Close;
  UniConnection1.Disconnect;
  Exit;
  end;
  UniQuery1.Close;


  UniQuery1.SQL.Text := 'INSERT INTO users (username, password, firstname, lastname, email) VALUES (:username, :password, :firstname, :lastname, :email)';
  UniQuery1.ParamByName('username').AsString := user_name;
  UniQuery1.ParamByName('password').AsString := password;
  UniQuery1.ParamByName('firstname').AsString := first_name;
  UniQuery1.ParamByName('lastname').AsString := last_name;
  UniQuery1.ParamByName('email').AsString := email;

  if RadioButton1.Checked then
  begin
  try
    UniQuery1.ExecSQL;
    MessageDlg('User registered successfully. Congrats!', mtInformation, [mbOK], 0);
  except
    MessageDlg('Unable to register user', mtError, [mbOK], 0);
  end;

  UniConnection1.Disconnect;
  end

  else
  begin
     MessageDlg('Please accept the agreement', mtInformation, [mbOK], 0)
  end

end;



end.

