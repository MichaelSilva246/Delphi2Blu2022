object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 456
  ClientWidth = 695
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
    Left = 52
    Top = 41
    Width = 144
    Height = 17
    Caption = 'Custo Fabrica'#231#227'o'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Technic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 52
    Top = 101
    Width = 69
    Height = 17
    Caption = 'Impostos'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Technic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 52
    Top = 157
    Width = 144
    Height = 17
    Caption = 'Percentual Lucro'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Technic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbPrecoFinal: TLabel
    Left = 232
    Top = 127
    Width = 145
    Height = 74
  end
  object edtCustoFab: TEdit
    Left = 52
    Top = 68
    Width = 157
    Height = 21
    TabOrder = 0
  end
  object edtImpostos: TEdit
    Left = 52
    Top = 124
    Width = 157
    Height = 21
    TabOrder = 1
  end
  object edtLucro: TEdit
    Left = 52
    Top = 180
    Width = 157
    Height = 21
    TabOrder = 2
  end
  object btnCalculo: TButton
    Left = 232
    Top = 60
    Width = 145
    Height = 37
    Caption = 'Calculo'
    TabOrder = 3
    OnClick = btnCalculoClick
  end
end
