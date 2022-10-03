object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 688
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbReal: TLabel
    Left = 160
    Top = 176
    Width = 121
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 14
    Top = 72
    Width = 112
    Height = 16
    Caption = 'Quantidade Dolar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 166
    Top = 72
    Width = 91
    Height = 16
    Caption = 'Cotacao Dolar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 166
    Top = 144
    Width = 91
    Height = 16
    Caption = 'Valor em Real'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object edtCotacao: TEdit
    Left = 160
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtDolar: TEdit
    Left = 8
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnCalculo: TButton
    Left = 8
    Top = 155
    Width = 121
    Height = 25
    Caption = 'btnCalculo'
    TabOrder = 2
    OnClick = btnCalculoClick
  end
end
