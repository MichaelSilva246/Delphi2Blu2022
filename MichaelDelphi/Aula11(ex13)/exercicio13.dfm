object btnMaior: TbtnMaior
  Left = 0
  Top = 0
  Caption = 'btnMaior'
  ClientHeight = 566
  ClientWidth = 707
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
    Left = 88
    Top = 112
    Width = 121
    Height = 25
  end
  object edtNumero: TEdit
    Left = 88
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 248
    Top = 80
    Width = 97
    Height = 25
    Caption = 'Maior que 10?'
    TabOrder = 1
    OnClick = Button1Click
  end
end
