object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 704
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'System'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 264
    Top = 40
    Width = 204
    Height = 25
    Caption = 'Que animal sou eu?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object mmHistorico: TMemo
    Left = 264
    Top = 176
    Width = 204
    Height = 154
    Color = clAqua
    TabOrder = 0
  end
  object btnProcessar: TButton
    Left = 264
    Top = 120
    Width = 204
    Height = 33
    Caption = 'Processar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnProcessarClick
  end
  object cmbAnimal: TComboBox
    Left = 264
    Top = 80
    Width = 204
    Height = 24
    TabOrder = 2
    Text = 'Selecione o Animal'
    Items.Strings = (
      'Cachorro'
      'P'#225'ssaro'
      'Gato'
      'Peixe')
  end
end
