object perTriangulo: TperTriangulo
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'perTriangulo'
  ClientHeight = 85
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 85
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 135
      Top = 49
      Width = 115
      Height = 12
      Caption = 'F'#243'rmula: (a x b) / 2'
    end
    object edtA: TEdit
      Left = 16
      Top = 16
      Width = 49
      Height = 23
      TabOrder = 0
    end
    object edtB: TEdit
      Left = 71
      Top = 16
      Width = 49
      Height = 23
      TabOrder = 1
    end
    object edtResultado: TEdit
      Left = 126
      Top = 16
      Width = 115
      Height = 23
      TabOrder = 2
    end
  end
  object Button1: TButton
    Left = 16
    Top = 45
    Width = 49
    Height = 25
    Caption = 'Ver'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 71
    Top = 45
    Width = 49
    Height = 25
    Caption = 'Voltar'
    TabOrder = 2
  end
end
