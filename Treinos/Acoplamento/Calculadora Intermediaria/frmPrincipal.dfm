object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 214
  ClientWidth = 238
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 156
    Top = 53
    Width = 68
    Height = 148
    Caption = '+'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edtValor1: TEdit
    Left = 8
    Top = 16
    Width = 41
    Height = 23
    TabOrder = 1
  end
  object edtValor2: TEdit
    Left = 64
    Top = 16
    Width = 41
    Height = 23
    TabOrder = 2
  end
  object edtResultado: TEdit
    Left = 126
    Top = 16
    Width = 98
    Height = 23
    TabOrder = 3
  end
  object Button2: TButton
    Left = 82
    Top = 53
    Width = 68
    Height = 68
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 133
    Width = 68
    Height = 68
    Caption = '/'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 82
    Top = 133
    Width = 68
    Height = 68
    Caption = 'mod'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 53
    Width = 68
    Height = 68
    Caption = '*'
    TabOrder = 7
    OnClick = Button5Click
  end
end
