object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 577
  ClientWidth = 681
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
    Left = 174
    Top = 146
    Width = 35
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 152
    Top = 217
    Width = 74
    Height = 16
    Caption = 'Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 298
    Width = 41
    Height = 16
    Caption = 'Altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbResultado: TLabel
    Left = 328
    Top = 296
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtNome: TEdit
    Left = 128
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNasc: TEdit
    Left = 128
    Top = 239
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtAltura: TEdit
    Left = 128
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnNascimento: TButton
    Left = 288
    Top = 168
    Width = 145
    Height = 81
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnNascimentoClick
  end
end
