object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 543
  ClientWidth = 722
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
    Left = 111
    Top = 56
    Width = 48
    Height = 13
    Caption = 'Variavel A'
  end
  object Label2: TLabel
    Left = 112
    Top = 111
    Width = 47
    Height = 13
    Caption = 'Variavel B'
  end
  object lbShowVar: TLabel
    Left = 80
    Top = 192
    Width = 249
    Height = 73
    Caption = 'lbShowVar'
  end
  object btnVar1: TEdit
    Left = 80
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnVar2: TEdit
    Left = 81
    Top = 130
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 215
    Top = 86
    Width = 122
    Height = 38
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
