object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 548
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
  object Label1: TLabel
    Left = 80
    Top = 32
    Width = 349
    Height = 35
    Caption = 'Comandos de Repeti'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Valor1: TLabel
    Left = 8
    Top = 203
    Width = 50
    Height = 18
    Caption = 'Valor1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Valor2: TLabel
    Left = 8
    Top = 254
    Width = 50
    Height = 18
    Caption = 'Valor2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 278
    Width = 584
    Height = 14
    Caption = 
      'Se o comando For, for selecionado, ele somara todos os numeros p' +
      'ares , entre valor 1 e valor 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 312
    Width = 603
    Height = 14
    Caption = 
      'Caso o Comando While, for o selecionado, ele dir'#225' quantos dias s' +
      'er'#227'o necess'#225'rio para zerar o caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 344
    Width = 681
    Height = 14
    Caption = 
      'E caso o comando Repeat, for o selecionado, ele ira dizer quanto' +
      's dias ser'#225' necessario para allcancar o objetivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtUM: TEdit
    Left = 72
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtDois: TEdit
    Left = 72
    Top = 251
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnExecutar: TButton
    Left = 215
    Top = 216
    Width = 114
    Height = 33
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btnExecutarClick
  end
  object rdoComando: TRadioGroup
    Left = 64
    Top = 73
    Width = 265
    Height = 105
    Caption = 'Comando'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold]
    Items.Strings = (
      'For'
      'While'
      'Repeat')
    ParentFont = False
    TabOrder = 3
  end
end
