object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 479
  ClientWidth = 687
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
    Left = 256
    Top = 64
    Width = 56
    Height = 13
    Caption = 'lbResultado'
  end
  object mmValores: TMemo
    Left = 32
    Top = 72
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object btnCompr: TButton
    Left = 256
    Top = 224
    Width = 107
    Height = 41
    Caption = 'Carango Velho'
    TabOrder = 1
    OnClick = btnComprClick
  end
end
