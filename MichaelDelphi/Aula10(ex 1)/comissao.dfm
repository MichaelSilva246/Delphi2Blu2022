object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 697
  ClientWidth = 726
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
    Left = 72
    Top = 66
    Width = 122
    Height = 16
    Caption = 'Nome do Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 125
    Width = 72
    Height = 16
    Caption = 'Sal'#225'rio Fixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 73
    Top = 189
    Width = 153
    Height = 16
    Caption = 'Total Vendas Efetuadas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 72
    Top = 88
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object btnCalculo: TButton
    Left = 400
    Top = 82
    Width = 145
    Height = 33
    Caption = 'Calculo'
    TabOrder = 1
    OnClick = btnCalculoClick
  end
  object edtSalario: TEdit
    Left = 72
    Top = 147
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object edtVendas: TEdit
    Left = 73
    Top = 211
    Width = 216
    Height = 21
    TabOrder = 3
  end
  object tmComissao: TMemo
    Left = 320
    Top = 135
    Width = 297
    Height = 97
    Lines.Strings = (
      '')
    TabOrder = 4
  end
end
