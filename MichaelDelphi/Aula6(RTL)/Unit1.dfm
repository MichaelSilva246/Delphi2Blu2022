object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 472
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnRtl1: TButton
    Left = 40
    Top = 24
    Width = 121
    Height = 57
    Caption = 'btnRtl1'
    TabOrder = 0
    OnClick = btnRtl1Click
  end
  object btnRtl2: TButton
    Left = 208
    Top = 24
    Width = 121
    Height = 57
    Caption = 'btnRtl2'
    TabOrder = 1
    OnClick = btnRtl2Click
  end
  object btnString: TButton
    Left = 40
    Top = 112
    Width = 121
    Height = 57
    Caption = 'StringReplace'
    TabOrder = 2
    OnClick = btnStringClick
  end
  object btnTrim: TButton
    Left = 208
    Top = 112
    Width = 121
    Height = 57
    Caption = 'Trim'
    TabOrder = 3
    OnClick = btnTrimClick
  end
end
