object ScriptDelphiForm: TScriptDelphiForm
  Left = 0
  Top = 0
  ClientHeight = 510
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  DesignSize = (
    957
    510)
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 941
    Height = 456
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitWidth = 963
    ExplicitHeight = 234
  end
  object btnExecutar: TcxButton
    Left = 8
    Top = 470
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Execute'
    LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 1
    OnClick = btnExecutarClick
    ExplicitTop = 248
  end
end
