object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Calculadora'
  ClientHeight = 366
  ClientWidth = 270
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object resultado: TLabel
    Left = 2
    Top = 88
    Width = 260
    Height = 29
    Alignment = taRightJustify
    AutoSize = False
  end
  object sinal: TButton
    Left = 2
    Top = 323
    Width = 49
    Height = 34
    Caption = '+/-'
    TabOrder = 0
  end
  object elev: TButton
    Left = 73
    Top = 163
    Width = 49
    Height = 34
    Caption = 'x'#178
    TabOrder = 1
  end
  object eight: TButton
    Left = 73
    Top = 203
    Width = 49
    Height = 34
    Caption = '8'
    TabOrder = 2
  end
  object five: TButton
    Left = 73
    Top = 243
    Width = 49
    Height = 34
    Caption = '5'
    TabOrder = 3
  end
  object two: TButton
    Left = 73
    Top = 283
    Width = 49
    Height = 34
    Caption = '2'
    TabOrder = 4
  end
  object zero: TButton
    Left = 73
    Top = 323
    Width = 49
    Height = 34
    Caption = '0'
    TabOrder = 5
  end
  object raiz: TButton
    Left = 144
    Top = 163
    Width = 49
    Height = 34
    Caption = '2'#8730'x'
    TabOrder = 6
  end
  object nine: TButton
    Left = 144
    Top = 203
    Width = 49
    Height = 34
    Caption = '9'
    TabOrder = 7
  end
  object six: TButton
    Left = 144
    Top = 243
    Width = 49
    Height = 34
    Caption = '6'
    TabOrder = 8
  end
  object three: TButton
    Left = 144
    Top = 283
    Width = 49
    Height = 34
    Caption = '3'
    TabOrder = 9
  end
  object virg: TButton
    Left = 144
    Top = 323
    Width = 49
    Height = 34
    Caption = ','
    TabOrder = 10
  end
  object divi: TButton
    Left = 213
    Top = 163
    Width = 49
    Height = 34
    Caption = #247
    TabOrder = 11
  end
  object mul: TButton
    Left = 213
    Top = 203
    Width = 49
    Height = 34
    Caption = 'x'
    TabOrder = 12
  end
  object sub: TButton
    Left = 213
    Top = 243
    Width = 49
    Height = 34
    Caption = '-'
    TabOrder = 13
  end
  object som: TButton
    Left = 213
    Top = 283
    Width = 49
    Height = 34
    Caption = '+'
    TabOrder = 14
  end
  object res: TButton
    Left = 213
    Top = 323
    Width = 49
    Height = 34
    Caption = '='
    TabOrder = 15
  end
  object seven: TButton
    Left = 2
    Top = 203
    Width = 49
    Height = 34
    Caption = '7'
    TabOrder = 16
  end
  object four: TButton
    Left = 2
    Top = 243
    Width = 49
    Height = 34
    Caption = '4'
    TabOrder = 17
  end
  object one: TButton
    Left = 2
    Top = 283
    Width = 49
    Height = 34
    Caption = '1'
    TabOrder = 18
  end
  object porc: TButton
    Left = 2
    Top = 163
    Width = 49
    Height = 34
    Caption = '%'
    TabOrder = 19
  end
  object reset: TButton
    Left = 2
    Top = 123
    Width = 49
    Height = 34
    Caption = 'C'
    TabOrder = 20
  end
  object delet: TButton
    Left = 213
    Top = 123
    Width = 49
    Height = 34
    Caption = 'DEL'
    TabOrder = 21
  end
  object cx: TEdit
    Left = 2
    Top = 8
    Width = 260
    Height = 109
    Alignment = taRightJustify
    AutoSize = False
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 22
  end
end
