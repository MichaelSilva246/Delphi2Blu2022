object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 453
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbResultado: TLabel
    Left = 312
    Top = 94
    Width = 193
    Height = 103
  end
  object Label2: TLabel
    Left = 128
    Top = 64
    Width = 147
    Height = 16
    Caption = 'Digite Primeiro Numero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 128
    Top = 147
    Width = 150
    Height = 16
    Caption = 'Digite Segundo Numero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 328
    Top = 64
    Width = 113
    Height = 24
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNum1: TEdit
    Left = 128
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edtNum2: TEdit
    Left = 128
    Top = 176
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object btnComparaNum: TButton
    Left = 216
    Top = 240
    Width = 147
    Height = 49
    Caption = 'Compara Numeros'
    TabOrder = 2
    OnClick = btnComparaNumClick
  end
end
