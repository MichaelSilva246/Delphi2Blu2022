object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 564
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbResultadoMedia: TLabel
    Left = 120
    Top = 120
    Width = 7
    Height = 17
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Technic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbProdutos: TLabel
    Left = 112
    Top = 327
    Width = 7
    Height = 17
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Technic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnProdutos: TButton
    Left = 224
    Top = 40
    Width = 185
    Height = 41
    Caption = 'Insere Produtos'
    TabOrder = 0
    OnClick = btnProdutosClick
  end
end
