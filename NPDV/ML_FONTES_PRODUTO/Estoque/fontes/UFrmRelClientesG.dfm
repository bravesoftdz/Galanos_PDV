object FrmRelClassifica: TFrmRelClassifica
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Estoque Master - Relat'#243'rio de Classifica'#231#227'o de Clientes'
  ClientHeight = 115
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 324
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object Rdg: TRadioGroup
      Left = 2
      Top = 2
      Width = 320
      Height = 53
      Align = alClient
      Caption = 'Ordem de Impress'#227'o'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Nome')
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 324
    Height = 39
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object BtnVis: TButton
      Left = 28
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 0
      OnClick = BtnVisClick
    end
    object BtnImp: TButton
      Left = 128
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
    end
    object BtnSair: TButton
      Left = 228
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 96
    Width = 324
    Height = 19
    Panels = <>
  end
end
