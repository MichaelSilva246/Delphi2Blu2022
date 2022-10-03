object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 436
  ClientWidth = 652
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
    Top = 25
    Width = 369
    Height = 25
    Caption = 'Comandos Condicionais - IF e CASE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 8
    Top = 72
    Width = 240
    Height = 21
    TabOrder = 0
  end
  object btnCase: TButton
    Left = 135
    Top = 120
    Width = 113
    Height = 34
    Caption = 'Case'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnCaseClick
  end
  object rdoNivel: TRadioGroup
    Left = 274
    Top = 72
    Width = 271
    Height = 162
    Caption = 'N'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Estagi'#225'rio'
      'Junior'
      'Pleno'
      'Senior')
    ParentFont = False
    TabOrder = 2
  end
  object btnIF: TButton
    Left = 8
    Top = 121
    Width = 115
    Height = 33
    Caption = 'IF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnIFClick
  end
end
