object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 695
  ClientWidth = 721
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
    Left = 234
    Top = 16
    Width = 119
    Height = 18
    Caption = 'Nome Do Aluno'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 117
    Top = 75
    Width = 45
    Height = 18
    Caption = 'Nota1'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 270
    Top = 75
    Width = 49
    Height = 18
    Caption = 'Nota2'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 420
    Top = 75
    Width = 49
    Height = 18
    Caption = 'Nota3'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 208
    Top = 208
    Width = 159
    Height = 18
    Caption = 'Media E informa'#231#227'o'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'TechnicBold'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 152
    Top = 40
    Width = 297
    Height = 21
    TabOrder = 0
  end
  object edtNota1: TEdit
    Left = 80
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtNota2: TEdit
    Left = 232
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtNota3: TEdit
    Left = 384
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object tmMedia: TMemo
    Left = 152
    Top = 248
    Width = 297
    Height = 105
    TabOrder = 4
  end
  object btnCalcula: TButton
    Left = 117
    Top = 144
    Width = 167
    Height = 41
    Caption = 'Calcula Media'
    TabOrder = 5
    OnClick = btnCalculaClick
  end
  object btnLimpaTela: TButton
    Left = 344
    Top = 144
    Width = 153
    Height = 41
    Caption = 'Limpa tela'
    TabOrder = 6
    OnClick = btnLimpaTelaClick
  end
end
