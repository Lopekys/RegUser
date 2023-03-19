object Form1: TForm1
  Left = 666
  Top = 196
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RegUser'
  ClientHeight = 421
  ClientWidth = 393
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 32
    Width = 236
    Height = 45
    Alignment = taCenter
    Caption = 'Create account'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 88
    Width = 176
    Height = 20
    Caption = 'Already have an account?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Malgun Gothic'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 263
    Top = 87
    Width = 57
    Height = 22
    Cursor = crHandPoint
    Caption = 'Sign in'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object EditUserName: TEdit
    Left = 24
    Top = 128
    Width = 345
    Height = 28
    AutoSelect = False
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 0
    Text = 'User name'
  end
  object EditFirstName: TEdit
    Left = 24
    Top = 176
    Width = 169
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
    Text = 'First name'
  end
  object EditLastName: TEdit
    Left = 200
    Top = 176
    Width = 169
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 2
    Text = 'Last name'
  end
  object EditEmail: TEdit
    Left = 24
    Top = 224
    Width = 345
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 3
    Text = 'E-mail'
  end
  object RadioButton1: TRadioButton
    Left = 24
    Top = 368
    Width = 297
    Height = 17
    Caption = 'I have read and agree to the Terms of Service'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object ButtonSignUp: TButton
    Left = 24
    Top = 320
    Width = 345
    Height = 28
    Cursor = crHandPoint
    Caption = 'Sign up'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = ButtonSignUpClick
  end
  object EditPassword: TEdit
    Left = 24
    Top = 272
    Width = 345
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 6
    Text = 'Password'
  end
  object UniConnection1: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'postgres'
    Username = 'user1'
    Server = '127.0.0.1'
    LoginPrompt = False
    EncryptedPassword = '93FF9EFF8FFF96FF9CFF8AFF8CFF'
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 40
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 80
  end
end
