object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 405
  ClientWidth = 539
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
    Left = 200
    Top = 248
    Width = 225
    Height = 97
  end
  object Label2: TLabel
    Left = 72
    Top = 56
    Width = 95
    Height = 23
    Caption = 'Consumo '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 264
    Top = 207
    Width = 81
    Height = 23
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rdImovel: TRadioGroup
    Left = 216
    Top = 88
    Width = 185
    Height = 105
    Caption = 'Tipo de Imovel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Resid'#234'ncia'
      'Com'#233'rcio'
      'Ind'#250'stria')
    ParentFont = False
    TabOrder = 0
  end
  object edtConsumo: TEdit
    Left = 64
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 64
    Top = 160
    Width = 107
    Height = 33
    Caption = 'Calcula'
    TabOrder = 2
    OnClick = Button1Click
  end
end
