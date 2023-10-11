object BaseForm: TBaseForm
  Left = 0
  Top = 0
  Caption = 'BaseForm'
  ClientHeight = 183
  ClientWidth = 532
  Color = clBtnFace
  Constraints.MinHeight = 222
  Constraints.MinWidth = 548
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ediCodigo: TcxDBMaskEdit
    Left = 106
    Top = 23
    DataBinding.DataField = 'Codigo'
    DataBinding.DataSource = DataSource1
    Enabled = False
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 0
    Width = 137
  end
  object ediPath: TcxDBMaskEdit
    Left = 106
    Top = 77
    DataBinding.DataField = 'Path'
    DataBinding.DataSource = DataSource1
    Properties.ReadOnly = True
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 1
    Width = 401
  end
  object LabBase: TcxLabel
    Left = 9
    Top = 50
    Caption = 'Descri'#231#227'o da Base'
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 33
    Top = 78
    Caption = 'Path da Base'
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    Transparent = True
  end
  object btnGravar: TcxButton
    Left = 359
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Gravar'
    Enabled = False
    LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 4
    OnClick = btnGravarClick
  end
  object cxButton2: TcxButton
    Left = 278
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Novo'
    LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 5
    OnClick = cxButton2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 276
    Top = 8
    Width = 231
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbCancel, nbRefresh]
    TabOrder = 6
  end
  object cxLabel1: TcxLabel
    Left = 63
    Top = 24
    Caption = 'C'#243'digo'
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    Transparent = True
  end
  object edibase: TcxDBMaskEdit
    Left = 106
    Top = 50
    DataBinding.DataField = 'Base'
    DataBinding.DataSource = DataSource1
    Properties.ReadOnly = True
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 8
    Width = 137
  end
  object cxButton1: TcxButton
    Left = 449
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Terminar'
    LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 9
    OnClick = cxButton1Click
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    OnStateChange = DataSource1StateChange
    Left = 256
    Top = 128
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      730000009619E0BD010000001800000004000000000003000000730006436F64
      69676F0400010000000000044261736501004900000001000557494454480200
      020064000450617468020049000000010005574944544802000200FF00035061
      6901004900000001000557494454480200020064000000}
    Active = True
    Aggregates = <>
    Params = <>
    BeforeInsert = ClientDataSet1BeforeInsert
    AfterDelete = ClientDataSet1AfterDelete
    Left = 160
    Top = 128
    object ClientDataSet1Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ClientDataSet1Base: TStringField
      FieldName = 'Base'
      Size = 100
    end
    object ClientDataSet1Path: TStringField
      FieldName = 'Path'
      Size = 255
    end
    object ClientDataSet1Pai: TStringField
      FieldName = 'Pai'
      Size = 100
    end
  end
end
