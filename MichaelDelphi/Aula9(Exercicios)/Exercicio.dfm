object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 657
  ClientWidth = 713
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
    Left = 176
    Top = 335
    Width = 7
    Height = 17
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 321
    Top = 338
    Width = 92
    Height = 17
    Caption = 'Combustivel'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 161
    Top = 338
    Width = 74
    Height = 17
    Caption = 'Distancia'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbResultado: TLabel
    Left = 101
    Top = 156
    Width = 356
    Height = 173
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 176
    Top = 34
    Width = 57
    Height = 17
    Caption = 'Valor 1'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 321
    Top = 34
    Width = 61
    Height = 17
    Caption = 'Valor 2'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtUm: TEdit
    Left = 152
    Top = 65
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtDois: TEdit
    Left = 306
    Top = 65
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnSOMA: TButton
    Left = 152
    Top = 114
    Width = 121
    Height = 36
    Caption = 'Exercicio Soma'
    TabOrder = 2
    OnClick = btnSOMAClick
  end
  object btnCalculos: TButton
    Left = 305
    Top = 114
    Width = 122
    Height = 36
    Caption = 'Exercicio Calculos'
    TabOrder = 3
    OnClick = btnCalculosClick
  end
  object btnMedia: TButton
    Left = 216
    Top = 397
    Width = 138
    Height = 36
    Caption = 'Media Combustivel'
    TabOrder = 4
    OnClick = btnMediaClick
  end
  object edtKm: TEdit
    Left = 152
    Top = 370
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtLitros: TEdit
    Left = 306
    Top = 370
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
