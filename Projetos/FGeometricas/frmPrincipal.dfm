object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FGeometricas'
  ClientHeight = 150
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 150
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 56
      Top = 48
      Width = 134
      Height = 15
      Caption = 'Calcular Per'#237'metro e '#193'rea'
    end
    object Label2: TLabel
      Left = 48
      Top = 69
      Width = 159
      Height = 15
      Caption = 'C'#237'rculo, Tri'#226'ngulo e Ret'#226'ngulo'
    end
  end
  object MainMenu1: TMainMenu
    Left = 65528
    Top = 128
    object Calcular1: TMenuItem
      Caption = 'Calcular'
      object Permetro1: TMenuItem
        Caption = 'Perimetro'
        object Crculo1: TMenuItem
          Caption = 'Circulo'
        end
        object ringulo1: TMenuItem
          Caption = 'Triangulo'
          OnClick = ringulo1Click
        end
        object Retngulo1: TMenuItem
          Caption = 'Ret'#226'ngulo'
        end
      end
      object rea1: TMenuItem
        Caption = #193'rea'
      end
    end
  end
end
