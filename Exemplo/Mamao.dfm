object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 487
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbPrestacao: TLabel
    Left = 256
    Top = 88
    Width = 121
    Height = 18
  end
  object Label2: TLabel
    Left = 120
    Top = 56
    Width = 82
    Height = 14
    Caption = 'Valor Compra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 264
    Top = 56
    Width = 95
    Height = 14
    Caption = 'Valor Presta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCompra: TEdit
    Left = 112
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnCalculaValor: TButton
    Left = 152
    Top = 128
    Width = 185
    Height = 25
    Caption = 'Calculo Prestacao'
    TabOrder = 1
    OnClick = btnCalculaValorClick
  end
end
