object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 602
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
  object lbResultado: TLabel
    Left = 272
    Top = 240
    Width = 249
    Height = 177
    Caption = 'Resultado'
  end
  object edtValor: TEdit
    Left = 272
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 415
    Top = 182
    Width = 124
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
