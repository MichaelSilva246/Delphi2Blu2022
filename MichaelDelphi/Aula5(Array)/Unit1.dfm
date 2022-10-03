object btnConsultar: TbtnConsultar
  Left = 0
  Top = 0
  Caption = 'Consultar'
  ClientHeight = 606
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnGravar: TButton
    Left = 264
    Top = 69
    Width = 121
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object Button2: TButton
    Left = 264
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Consultar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object mmHistorico: TMemo
    Left = 112
    Top = 210
    Width = 257
    Height = 145
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object edtDia: TEdit
    Left = 104
    Top = 71
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object edtTemperatura: TEdit
    Left = 104
    Top = 122
    Width = 121
    Height = 23
    TabOrder = 4
  end
end
