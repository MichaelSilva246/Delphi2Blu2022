object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 482
  ClientWidth = 590
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
    Left = 112
    Top = 8
    Width = 336
    Height = 23
    Caption = 'Esse numero est'#225' entre 100 e 200?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbResultado: TLabel
    Left = 128
    Top = 144
    Width = 185
    Height = 41
  end
  object edtNumero: TEdit
    Left = 56
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnTeste: TButton
    Left = 216
    Top = 64
    Width = 115
    Height = 49
    Caption = 'Testa Numero'
    TabOrder = 1
    OnClick = btnTesteClick
  end
end
