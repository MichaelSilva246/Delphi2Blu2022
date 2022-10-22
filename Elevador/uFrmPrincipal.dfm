object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 630
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbAndares: TLabel
    Left = 191
    Top = 288
    Width = 136
    Height = 16
    Caption = 'QtdAndares : Andar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbCapacidade: TLabel
    Left = 191
    Top = 216
    Width = 66
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rdElevador: TRadioGroup
    Left = 8
    Top = 152
    Width = 169
    Height = 201
    Caption = 'Elevador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'AddPessoa(s)'
      'RemovePessoa(s)'
      'Sobe'
      'Desce')
    ParentFont = False
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 191
    Top = 117
    Width = 145
    Height = 41
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btnOKClick
  end
  object edtValor: TEdit
    Left = 8
    Top = 117
    Width = 169
    Height = 21
    TabOrder = 0
  end
end
