object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 416
  ClientWidth = 571
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
    Left = 24
    Top = 15
    Width = 142
    Height = 19
    Caption = 'Numero da Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 71
    Width = 110
    Height = 19
    Caption = 'Nome Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 135
    Width = 45
    Height = 19
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 45
    Top = 288
    Width = 72
    Height = 19
    Caption = 'Deposito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 67
    Top = 362
    Width = 50
    Height = 19
    Caption = 'Saque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 356
    Top = 42
    Width = 125
    Height = 19
    Caption = 'Historico Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 288
    Top = 357
    Width = 249
    Height = 51
    Caption = 'Alterar Nome'
    TabOrder = 0
  end
  object Button6: TButton
    Left = 184
    Top = 37
    Width = 73
    Height = 140
    Caption = 'Criar Conta'
    TabOrder = 1
  end
  object mmSaldo: TMemo
    Left = 264
    Top = 96
    Width = 299
    Height = 225
    TabOrder = 2
  end
  object Button3: TButton
    Left = 189
    Top = 288
    Width = 69
    Height = 120
    Caption = 'Ok'
    TabOrder = 3
  end
  object edtConta: TEdit
    Left = 24
    Top = 40
    Width = 142
    Height = 21
    TabOrder = 4
  end
  object edtNome: TEdit
    Left = 24
    Top = 96
    Width = 142
    Height = 21
    TabOrder = 5
  end
  object edtSaldo: TEdit
    Left = 24
    Top = 160
    Width = 142
    Height = 21
    TabOrder = 6
  end
  object edtDeposito: TEdit
    Left = 24
    Top = 387
    Width = 142
    Height = 21
    TabOrder = 7
  end
  object edtSaque: TEdit
    Left = 24
    Top = 313
    Width = 142
    Height = 21
    TabOrder = 8
  end
end
