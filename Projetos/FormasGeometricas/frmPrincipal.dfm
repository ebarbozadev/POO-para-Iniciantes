﻿object Formas_Geométricas: TFormas_Geométricas
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FGeom'#233'tricas'
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
    ExplicitWidth = 246
    ExplicitHeight = 149
    object Label1: TLabel
      Left = 48
      Top = 47
      Width = 142
      Height = 15
      Caption = 'Calcular Per'#237'metro ou '#193'rea'
    end
    object Label2: TLabel
      Left = 32
      Top = 60
      Width = 173
      Height = 15
      Caption = 'C'#237'rculo; Ret'#226'ngulo  ou  Tri'#226'ngulo'
    end
  end
  object MainMenu1: TMainMenu
    Top = 136
    object Permetro1: TMenuItem
      Caption = 'Calcular'
      object Permetro2: TMenuItem
        Caption = 'Per'#237'metro'
        OnClick = Permetro2Click
      end
      object rea1: TMenuItem
        Caption = #193'rea'
      end
    end
  end
end
