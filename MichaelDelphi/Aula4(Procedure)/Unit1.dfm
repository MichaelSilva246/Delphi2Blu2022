object frmProceduresFunctions: TfrmProceduresFunctions
  Left = 0
  Top = 0
  Caption = 'frmProceduresFunctions'
  ClientHeight = 437
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnProcedure: TButton
    Left = 24
    Top = 40
    Width = 106
    Height = 25
    Caption = 'Procedure'
    TabOrder = 0
    OnClick = btnProcedureClick
  end
  object btnFunction: TButton
    Left = 136
    Top = 40
    Width = 106
    Height = 25
    Caption = 'Function'
    TabOrder = 1
    OnClick = btnFunctionClick
  end
  object btnParametroRef: TButton
    Left = 24
    Top = 71
    Width = 218
    Height = 26
    Caption = 'Parametro Referencia'
    TabOrder = 2
    OnClick = btnParametroRefClick
  end
  object btnParamertoConstante: TButton
    Left = 24
    Top = 104
    Width = 218
    Height = 25
    Caption = 'Parametro Constante'
    TabOrder = 3
    OnClick = btnParamertoConstanteClick
  end
  object btnArrayAberto: TButton
    Left = 264
    Top = 104
    Width = 217
    Height = 26
    Caption = 'Array Aberto'
    TabOrder = 4
    OnClick = btnArrayAbertoClick
  end
  object btnVariant: TButton
    Left = 264
    Top = 40
    Width = 217
    Height = 25
    Caption = 'Array Aberto Variant'
    TabOrder = 5
    OnClick = btnVariantClick
  end
  object btnExemplos: TButton
    Left = 264
    Top = 71
    Width = 217
    Height = 27
    Caption = 'Format Exemplos'
    TabOrder = 6
    OnClick = btnExemplosClick
  end
  object btnData: TButton
    Left = 264
    Top = 136
    Width = 217
    Height = 25
    Caption = 'Data Formatada'
    TabOrder = 7
    OnClick = btnDataClick
  end
  object btnSobrecarga: TButton
    Left = 264
    Top = 168
    Width = 217
    Height = 25
    Caption = 'Sobrecara de funcoes'
    TabOrder = 8
    OnClick = btnSobrecargaClick
  end
  object Button1: TButton
    Left = 24
    Top = 136
    Width = 218
    Height = 25
    Caption = 'Parametros Default'
    TabOrder = 9
    OnClick = Button1Click
  end
  object btnForward: TButton
    Left = 24
    Top = 167
    Width = 218
    Height = 26
    Caption = 'Declaracao Forward'
    TabOrder = 10
    OnClick = btnForwardClick
  end
end
