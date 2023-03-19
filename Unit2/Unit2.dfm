object Form2: TForm2
  Left = 679
  Top = 309
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 287
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
    Left = 152
    Top = 32
    Width = 99
    Height = 45
    Alignment = taCenter
    Caption = 'Log in'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 80
    Width = 84
    Height = 20
    Caption = 'no account?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Malgun Gothic'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 221
    Top = 79
    Width = 57
    Height = 22
    Cursor = crHandPoint
    Caption = 'register'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Edit1: TEdit
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
  object Edit4: TEdit
    Left = 24
    Top = 176
    Width = 345
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
    Text = 'Password'
  end
  object Button1: TButton
    Left = 24
    Top = 224
    Width = 345
    Height = 28
    Cursor = crHandPoint
    Caption = 'Sign in'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
