object MemoForm: TMemoForm
  Left = 0
  Top = 0
  Caption = 'Campo'
  ClientHeight = 351
  ClientWidth = 544
  Color = clBtnFace
  Constraints.MinHeight = 322
  Constraints.MinWidth = 406
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  DesignSize = (
    544
    351)
  TextHeight = 15
  object cxMemo1: TcxMemo
    Left = 8
    Top = 8
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 0
    ExplicitWidth = 374
    ExplicitHeight = 267
    Height = 335
    Width = 528
  end
end
