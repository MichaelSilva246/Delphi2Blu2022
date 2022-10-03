object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 522
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnInsere: TButton
    Left = 96
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Reajuste'
    TabOrder = 0
    OnClick = btnInsereClick
  end
  object btnExibe: TButton
    Left = 248
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Exibe'
    TabOrder = 1
    OnClick = btnExibeClick
  end
  object mmInformacoes: TMemo
    Left = 74
    Top = 143
    Width = 287
    Height = 225
    Lines.Strings = (
      'mmInformacoes')
    TabOrder = 2
  end
end
