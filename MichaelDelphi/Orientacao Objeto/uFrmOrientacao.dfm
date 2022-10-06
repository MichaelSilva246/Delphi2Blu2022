object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 589
  ClientWidth = 690
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
    Left = 114
    Top = 121
    Width = 13
    Height = 16
    Caption = 'a:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 116
    Top = 193
    Width = 13
    Height = 16
    Caption = 'd:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 273
    Top = 193
    Width = 13
    Height = 16
    Caption = 'e:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 269
    Top = 121
    Width = 13
    Height = 16
    Caption = 'b:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 426
    Top = 121
    Width = 12
    Height = 16
    Caption = 'c:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 425
    Top = 193
    Width = 10
    Height = 16
    Caption = 'f:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTrianguloX: TLabel
    Left = 116
    Top = 336
    Width = 106
    Height = 16
    Caption = 'Triango X Area :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTrianguloY: TLabel
    Left = 116
    Top = 355
    Width = 102
    Height = 16
    Caption = 'Triango Y Area:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbResultado: TLabel
    Left = 128
    Top = 390
    Width = 65
    Height = 16
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 294
    Top = 72
    Width = 110
    Height = 23
    Caption = 'Triangulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 294
    Top = 156
    Width = 110
    Height = 23
    Caption = 'Triangulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object edtF: TEdit
    Left = 444
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtC: TEdit
    Left = 444
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtA: TEdit
    Left = 132
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtB: TEdit
    Left = 292
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtE: TEdit
    Left = 292
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtD: TEdit
    Left = 132
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 375
    Top = 264
    Width = 122
    Height = 33
    Caption = 'Calcular OOP'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 207
    Top = 264
    Width = 122
    Height = 33
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = Button2Click
  end
end
