object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Calculadora'
  ClientHeight = 405
  ClientWidth = 270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = Temas
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 90
    Height = 15
    Caption = 'Primeiro n'#250'mero'
  end
  object Label2: TLabel
    Left = 56
    Top = 88
    Width = 92
    Height = 15
    Caption = 'Segundo n'#250'mero'
  end
  object Label3: TLabel
    Left = 56
    Top = 184
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object btsom: TButton
    Left = 56
    Top = 138
    Width = 25
    Height = 25
    Caption = '+'
    Enabled = False
    TabOrder = 0
    OnClick = btsomClick
  end
  object txtnum1: TEdit
    Left = 56
    Top = 53
    Width = 161
    Height = 23
    TabOrder = 1
    OnChange = txtnum1Change
  end
  object txtnum2: TEdit
    Left = 56
    Top = 109
    Width = 161
    Height = 23
    TabOrder = 2
    OnChange = txtnum1Change
  end
  object txtres: TEdit
    Left = 56
    Top = 205
    Width = 161
    Height = 23
    Enabled = False
    TabOrder = 3
  end
  object btmul: TButton
    Left = 145
    Top = 138
    Width = 25
    Height = 25
    Caption = '*'
    Enabled = False
    TabOrder = 4
    OnClick = btmulClick
  end
  object btdiv: TButton
    Left = 192
    Top = 138
    Width = 25
    Height = 25
    Caption = '/'
    Enabled = False
    TabOrder = 5
    OnClick = btdivClick
  end
  object btsub: TButton
    Left = 103
    Top = 138
    Width = 25
    Height = 25
    Caption = '-'
    Enabled = False
    TabOrder = 6
    OnClick = btsubClick
  end
  object reset: TButton
    Left = 56
    Top = 250
    Width = 161
    Height = 25
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = resetClick
  end
  object Temas: TMainMenu
    object emas1: TMenuItem
      Caption = 'Temas'
      object WindowsClassic1: TMenuItem
        Caption = 'Windows Classic'
        OnClick = WindowsClassic1Click
      end
      object WindowsClassic2: TMenuItem
        Caption = 'Glow'
        OnClick = WindowsClassic2Click
      end
      object AquaLightSlate1: TMenuItem
        Caption = 'Aqua Light Slate'
        OnClick = AquaLightSlate1Click
      end
    end
  end
end
