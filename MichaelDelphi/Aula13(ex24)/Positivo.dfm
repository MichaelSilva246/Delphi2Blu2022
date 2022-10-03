object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 544
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 105
    Top = 176
    Width = 73
    Height = 19
    Caption = 'Positivos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 246
    Top = 321
    Width = 50
    Height = 19
    Caption = 'ZERO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 363
    Top = 176
    Width = 81
    Height = 19
    Caption = 'Negativos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 192
    Top = 80
    Width = 185
    Height = 57
    Caption = 'Click Para Verificar os Numeros'
    TabOrder = 0
    OnClick = Button1Click
  end
  object mmPositivo: TMemo
    Left = 48
    Top = 201
    Width = 185
    Height = 104
    TabOrder = 1
  end
  object mmZero: TMemo
    Left = 168
    Top = 346
    Width = 185
    Height = 104
    TabOrder = 2
  end
  object mmNegativo: TMemo
    Left = 304
    Top = 201
    Width = 185
    Height = 104
    TabOrder = 3
  end
end
