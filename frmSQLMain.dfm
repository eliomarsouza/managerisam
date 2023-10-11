object SQLForm: TSQLForm
  Left = 0
  Top = 0
  Caption = 'SQL Manager - DBISAM - An'#225'lise 3X - Vs.: 1.0'
  ClientHeight = 777
  ClientWidth = 1299
  Color = clBtnFace
  Constraints.MinWidth = 1315
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  DesignSize = (
    1299
    777)
  TextHeight = 13
  object cxLabel2: TcxLabel
    Left = 925
    Top = 750
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = 'cxLabel2'
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    Properties.Alignment.Horz = taRightJustify
    Transparent = True
    Height = 17
    Width = 368
    AnchorX = 1293
  end
  object TreeView1: TTreeView
    Left = 416
    Top = 477
    Width = 121
    Height = 97
    Indent = 19
    TabOrder = 1
    Visible = False
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 154
    Width = 1299
    Height = 623
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.ScrollbarMode = sbmClassic
    OnChange = cxPageControl1Change
    ClientRectBottom = 619
    ClientRectLeft = 4
    ClientRectRight = 1295
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = ' Dados '
      ImageIndex = 0
      object cxTab3: TcxTabControl
        Left = 0
        Top = 471
        Width = 1291
        Height = 124
        Align = alClient
        Constraints.MinHeight = 82
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.ScrollbarMode = sbmClassic
        DesignSize = (
          1291
          124)
        ClientRectBottom = 120
        ClientRectLeft = 4
        ClientRectRight = 1287
        ClientRectTop = 4
        object labBase3: TcxLabel
          Left = 3
          Top = 3
          AutoSize = False
          Caption = '[Z99].Gihbens'
          Style.LookAndFeel.ScrollbarMode = sbmClassic
          StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
          StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
          StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
          Transparent = True
          Height = 17
          Width = 555
        end
        object DBGrid3: TDBGrid
          Left = 3
          Top = 27
          Width = 1286
          Height = 96
          Anchors = [akLeft, akTop, akRight, akBottom]
          Constraints.MaxHeight = 300
          DataSource = DataSource3
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
        end
        object lab3: TcxLabel
          Left = 564
          Top = 4
          Caption = 'lab3'
          Style.LookAndFeel.ScrollbarMode = sbmClassic
          StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
          StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
          StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
          Transparent = True
        end
        object Button6: TButton
          Left = 1121
          Top = 3
          Width = 160
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'Consulta SQL R'#225'pida'
          TabOrder = 3
          OnClick = Button6Click
        end
      end
      object cxTab1_2: TcxTabControl
        Left = 0
        Top = 0
        Width = 1291
        Height = 463
        Align = alTop
        Constraints.MaxHeight = 500
        TabOrder = 1
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.ScrollbarMode = sbmClassic
        ClientRectBottom = 459
        ClientRectLeft = 4
        ClientRectRight = 1287
        ClientRectTop = 4
        object cxTab1: TcxTabControl
          Left = 4
          Top = 4
          Width = 1283
          Height = 202
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Constraints.MaxHeight = 300
          Constraints.MinHeight = 78
          TabOrder = 0
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.ScrollbarMode = sbmClassic
          DesignSize = (
            1283
            202)
          ClientRectBottom = 198
          ClientRectLeft = 4
          ClientRectRight = 1279
          ClientRectTop = 4
          object DBGrid1: TDBGrid
            Left = 3
            Top = 26
            Width = 1274
            Height = 170
            Anchors = [akLeft, akTop, akRight, akBottom]
            Constraints.MaxHeight = 300
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid1DblClick
          end
          object labBase1: TcxLabel
            Left = 3
            Top = 3
            AutoSize = False
            Caption = '[DRI].GiCampos'
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            Transparent = True
            Height = 17
            Width = 553
          end
          object lab1: TcxLabel
            Left = 562
            Top = 3
            Caption = 'lab1'
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            Transparent = True
          end
          object Button5: TButton
            Left = 1118
            Top = 3
            Width = 160
            Height = 20
            Anchors = [akTop, akRight]
            Caption = 'Consulta SQL R'#225'pida'
            TabOrder = 3
            OnClick = Button5Click
          end
        end
        object cxTab2: TcxTabControl
          Left = 4
          Top = 214
          Width = 1283
          Height = 245
          Align = alClient
          Constraints.MaxHeight = 253
          Constraints.MinHeight = 77
          TabOrder = 1
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.ScrollbarMode = sbmClassic
          DesignSize = (
            1283
            245)
          ClientRectBottom = 241
          ClientRectLeft = 4
          ClientRectRight = 1279
          ClientRectTop = 4
          object DBGrid2: TDBGrid
            Left = 3
            Top = 23
            Width = 1280
            Height = 216
            Anchors = [akLeft, akTop, akRight, akBottom]
            Constraints.MaxHeight = 300
            DataSource = DataSource2
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid2DblClick
          end
          object labBase2: TcxLabel
            Left = 3
            Top = 3
            AutoSize = False
            Caption = '[Z99].Gifbens'
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            Transparent = True
            Height = 17
            Width = 553
          end
          object lab2: TcxLabel
            Left = 562
            Top = 2
            Caption = 'lab2'
            Style.LookAndFeel.ScrollbarMode = sbmClassic
            StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
            StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
            StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
            Transparent = True
          end
          object Button1: TButton
            Left = 1116
            Top = 1
            Width = 160
            Height = 20
            Anchors = [akTop, akRight]
            Caption = 'Consulta SQL R'#225'pida'
            TabOrder = 3
            OnClick = Button1Click
          end
        end
        object cxSplitter2: TcxSplitter
          Left = 4
          Top = 206
          Width = 1283
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          AutoPosition = False
          InvertDirection = True
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 463
        Width = 1291
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salTop
        InvertDirection = True
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = ' Campos '
      ImageIndex = 1
      DesignSize = (
        1291
        595)
      object DBGrid4: TDBGrid
        Left = 2
        Top = 18
        Width = 1205
        Height = 180
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsCampos1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 50
            Visible = True
          end
          item
            Color = 13553407
            Expanded = False
            FieldName = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 208
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tamanho'
            Width = 52
            Visible = True
          end>
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 204
        Width = 1205
        Height = 180
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsCampos2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = 13553407
            Expanded = False
            FieldName = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 49
            Visible = True
          end
          item
            Color = 13553407
            Expanded = False
            FieldName = 'Nome'
            Width = 194
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tamanho'
            Width = 55
            Visible = True
          end>
      end
      object DBGrid6: TDBGrid
        Left = 2
        Top = 390
        Width = 1204
        Height = 200
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsCampos3
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 49
            Visible = True
          end
          item
            Color = 13553407
            Expanded = False
            FieldName = 'Nome'
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tamanho'
            Width = 60
            Visible = True
          end>
      end
      object Button2: TButton
        Left = 1211
        Top = 18
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Script'
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 1211
        Top = 263
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Script'
        TabOrder = 4
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 1211
        Top = 508
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Script'
        TabOrder = 5
        OnClick = Button4Click
      end
    end
  end
  object cxTabCab: TcxTabControl
    Left = 0
    Top = 0
    Width = 1299
    Height = 146
    Align = alTop
    Constraints.MinHeight = 101
    TabOrder = 3
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.ScrollbarMode = sbmClassic
    DesignSize = (
      1299
      146)
    ClientRectBottom = 142
    ClientRectLeft = 4
    ClientRectRight = 1295
    ClientRectTop = 4
    object ImageFilosoft: TImage
      Left = 3
      Top = 3
      Width = 182
      Height = 43
      Center = True
      IncrementalDisplay = True
      Proportional = True
      Transparent = True
    end
    object cbxTabela: TcxComboBox
      Left = 384
      Top = 21
      Properties.DropDownRows = 15
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 3
      Width = 153
    end
    object cxLabel1: TcxLabel
      Left = 385
      Top = 1
      Caption = 'Table'
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      Transparent = True
    end
    object cbxBase: TcxComboBox
      Left = 192
      Top = 21
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        'Base')
      Properties.OnChange = cbxBasePropertiesChange
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 5
      Width = 153
    end
    object cxLabel3: TcxLabel
      Left = 193
      Top = 1
      Caption = 'Base Name'
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      Transparent = True
    end
    object brnCadastroBases: TButton
      Left = 346
      Top = 21
      Width = 32
      Height = 21
      Caption = '+'
      TabOrder = 7
      OnClick = brnCadastroBasesClick
    end
    object btnExecutar: TcxButton
      Left = 1218
      Top = 17
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Execute'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 8
      OnClick = btnExecutarClick
    end
    object cbCampo: TCheckBox
      Left = 543
      Top = 22
      Width = 76
      Height = 17
      Caption = 'Show Fields'
      TabOrder = 9
    end
    object btnMostraCampos: TBitBtn
      Left = 1032
      Top = -2
      Width = 97
      Height = 25
      Caption = 'mostra campos'
      TabOrder = 10
      Visible = False
      OnClick = btnMostraCamposClick
    end
    object memSQL1: TcxMemo
      Left = 2
      Top = 48
      Anchors = [akTop, akBottom]
      Constraints.MaxWidth = 650
      Constraints.MinWidth = 420
      Properties.ScrollBars = ssVertical
      Properties.WantTabs = True
      Properties.WordWrap = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 0
      OnKeyUp = memSQL1KeyUp
      Height = 66
      Width = 425
    end
    object cxButton1: TcxButton
      Left = 705
      Top = 17
      Width = 194
      Height = 25
      Caption = '+ Ver Base de dados configuradas'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 11
      OnClick = cxButton1Click
    end
    object memSQL2: TcxMemo
      Left = 434
      Top = 48
      Anchors = [akTop, akBottom]
      Constraints.MinWidth = 427
      Properties.ScrollBars = ssVertical
      Properties.WantTabs = True
      Properties.WordWrap = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 1
      OnKeyUp = memSQL1KeyUp
      Height = 66
      Width = 427
    end
    object memSQL3: TcxMemo
      Left = 867
      Top = 48
      Anchors = [akTop, akBottom]
      Properties.ScrollBars = ssVertical
      Properties.WantTabs = True
      Properties.WordWrap = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 2
      OnKeyUp = memSQL1KeyUp
      Height = 66
      Width = 427
    end
    object DBGrid7: TDBGrid
      Left = 705
      Top = 42
      Width = 229
      Height = 31
      DataSource = DScdsConfiguracao
      ReadOnly = True
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      Columns = <
        item
          Expanded = False
          FieldName = 'numbase'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Base'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tabela'
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Directory'
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SQL'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ComCampos'
          Width = 71
          Visible = True
        end>
    end
    object btnAdd: TcxButton
      Left = 2
      Top = 115
      Width = 33
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Add'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 13
      OnClick = btnAddClick
    end
    object btnClear: TcxButton
      Left = 41
      Top = 115
      Width = 33
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Novo'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 14
      OnClick = btnClearClick
    end
    object btnAdd2: TcxButton
      Left = 434
      Top = 115
      Width = 33
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Add'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 15
      OnClick = btnAdd2Click
    end
    object btnClear2: TcxButton
      Left = 473
      Top = 115
      Width = 33
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Novo'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 16
      OnClick = btnClear2Click
    end
    object btnClear3: TcxButton
      Left = 905
      Top = 115
      Width = 33
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Novo'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 17
      OnClick = btnClear3Click
    end
    object btnAdd3: TcxButton
      Left = 866
      Top = 115
      Width = 33
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Add'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 18
      OnClick = btnAdd3Click
    end
    object ckbBloqueado3: TCheckBox
      Left = 952
      Top = 120
      Width = 97
      Height = 17
      Anchors = [akRight, akBottom]
      Caption = 'Bloqueado'
      TabOrder = 19
      OnClick = ckbBloqueado3Click
    end
    object ckbBloqueado2: TCheckBox
      Left = 512
      Top = 121
      Width = 97
      Height = 17
      Anchors = [akRight, akBottom]
      Caption = 'Bloqueado'
      TabOrder = 20
      OnClick = ckbBloqueado2Click
    end
    object ckbBloqueado1: TCheckBox
      Left = 88
      Top = 120
      Width = 97
      Height = 17
      Anchors = [akRight, akBottom]
      Caption = 'Bloqueado'
      TabOrder = 21
      OnClick = ckbBloqueado1Click
    end
    object btnGuardar1: TcxButton
      Left = 353
      Top = 115
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Guardar'
      DropDownMenu = PopupMenu
      Kind = cxbkDropDownButton
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 22
      OnClick = btnGuardar1Click
    end
    object btnApagarTag1: TcxButton
      Left = 256
      Top = 115
      Width = 91
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Apagar nada'
      LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 23
      OnClick = btnApagarTag1Click
    end
  end
  object cxSplitter3: TcxSplitter
    Left = 0
    Top = 146
    Width = 1299
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salTop
    AutoPosition = False
    InvertDirection = True
  end
  object DBISAMDatabase1: TDBISAMDatabase
    EngineVersion = '4.40 Build 1'
    DatabaseName = 'Base1'
    Directory = 'C:\Filosoft.32\Emp001\Ano2023'
    SessionName = 'Default'
    Left = 544
    Top = 80
  end
  object DBISAMTable1: TDBISAMTable
    DatabaseName = 'Base'
    EngineVersion = '4.40 Build 1'
    Left = 352
    Top = 136
  end
  object BaseSession: TDBISAMSession
    EngineVersion = '4.40 Build 1'
    Active = True
    PrivateDir = 'C:\Windows\Temp'
    SessionName = 'BaseSession'
    RemoteEncryptionPassword = 'elevatesoft'
    RemoteAddress = '127.0.0.2'
    RemotePort = 12001
    Left = 142
    Top = 112
  end
  object DBISAMQuery1: TDBISAMQuery
    DatabaseName = 'Base1'
    SessionName = 'Default'
    EngineVersion = '4.40 Build 1'
    SQL.Strings = (
      'Select c.ProduDescri'
      '--,SUM(c.Quantidade) as TOTAL --, TotalBase, Total '
      'from FTDASHVD AS c'
      'Where (c.Tipo='#39'PROD'#39') '
      'GROUP BY c.ProduDescri'
      'ORDER BY c.ProduDescri')
    Params = <>
    Left = 672
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = DBISAMQuery1
    Left = 776
    Top = 80
  end
  object ActionList1: TActionList
    Left = 440
    Top = 256
    object Action1: TAction
      Caption = 'Executar'
      ShortCut = 16453
      OnExecute = Action1Execute
    end
  end
  object cdsConfigBase: TClientDataSet
    PersistDataPacket.Data = {
      730000009619E0BD010000001800000004000000000003000000730006436F64
      69676F0400010000000000044261736501004900000001000557494454480200
      020064000450617468020049000000010005574944544802000200FF00035061
      6901004900000001000557494454480200020064000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Base'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Path'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Pai'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'ClientDataSet1Index1'
        Fields = 'Base'
      end>
    IndexName = 'ClientDataSet1Index1'
    Params = <>
    StoreDefs = True
    Left = 361
    Top = 72
    object cdsConfigBaseCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdsConfigBaseBase: TStringField
      FieldName = 'Base'
      Size = 100
    end
    object cdsConfigBasePath: TStringField
      FieldName = 'Path'
      Size = 255
    end
    object cdsConfigBasePai: TStringField
      FieldName = 'Pai'
      Size = 100
    end
  end
  object DBISAMQuery2: TDBISAMQuery
    DatabaseName = 'Base2'
    SessionName = 'Default'
    EngineVersion = '4.40 Build 1'
    Params = <>
    Left = 672
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = DBISAMQuery2
    Left = 776
    Top = 144
  end
  object DBISAMQuery3: TDBISAMQuery
    DatabaseName = 'Base3'
    SessionName = 'Default'
    EngineVersion = '4.40 Build 1'
    Params = <>
    Left = 672
    Top = 216
  end
  object DataSource3: TDataSource
    DataSet = DBISAMQuery3
    Left = 776
    Top = 216
  end
  object DBISAMDatabase2: TDBISAMDatabase
    EngineVersion = '4.40 Build 1'
    DatabaseName = 'Base2'
    Directory = 'C:\Filosoft.32\Eliomar'
    SessionName = 'Default'
    Left = 544
    Top = 142
  end
  object DBISAMDatabase3: TDBISAMDatabase
    EngineVersion = '4.40 Build 1'
    DatabaseName = 'Base3'
    Directory = 'C:\Filosoft.32\Eliomar'
    SessionName = 'Default'
    Left = 544
    Top = 216
  end
  object DBISAMDatabase0: TDBISAMDatabase
    EngineVersion = '4.40 Build 1'
    DatabaseName = 'Basecfg'
    Directory = 'C:\Segest\EMP001'
    SessionName = 'BaseSession'
    Left = 168
    Top = 56
  end
  object QAux1: TDBISAMQuery
    DatabaseName = 'Base1'
    SessionName = 'Default'
    EngineVersion = '4.40 Build 1'
    RequestLive = True
    Params = <>
    Left = 352
    Top = 200
  end
  object dsCampos1: TDataSource
    DataSet = cdsCampos1
    Left = 376
    Top = 384
  end
  object cdsCampos1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 305
    Top = 370
    object cdsCampos1Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdsCampos1Nome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object cdsCampos1Tamanho: TIntegerField
      FieldName = 'Tamanho'
    end
    object cdsCampos1Tipo: TStringField
      FieldName = 'Tipo'
      Size = 150
    end
  end
  object cdsCampos2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 416
    object cdsCampos2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdsCampos2Nome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object cdsCampos2Tamanho: TIntegerField
      FieldName = 'Tamanho'
    end
    object cdsCampos2Tipo: TStringField
      FieldName = 'Tipo'
      Size = 150
    end
  end
  object dsCampos2: TDataSource
    DataSet = cdsCampos2
    Left = 392
    Top = 440
  end
  object cdsCampos3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 512
    object cdsCampos3Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdsCampos3Nome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object cdsCampos3Tamanho: TIntegerField
      FieldName = 'Tamanho'
    end
    object cdsCampos3Tipo: TStringField
      FieldName = 'Tipo'
      Size = 150
    end
  end
  object dsCampos3: TDataSource
    DataSet = cdsCampos3
    Left = 376
    Top = 512
  end
  object MainMenu1: TMainMenu
    Left = 77
    Top = 2
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Open1: TMenuItem
        Caption = 'Open'
        OnClick = Open1Click
      end
      object OpenDefault1: TMenuItem
        Caption = 'Open SQL.xml Default'
        OnClick = OpenDefault1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Salvar1: TMenuItem
        Caption = 'Save Default'
        OnClick = Salvar1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As'
        OnClick = SaveAs1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Resetnajabela1: TMenuItem
        Caption = 'Reset na janela'
        OnClick = Resetnajabela1Click
      end
      object Fechar1: TMenuItem
        Caption = 'Close'
        OnClick = Fechar1Click
      end
    end
  end
  object cdsConfiguracao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 171
    Top = 219
    object cdsConfiguracaoBase: TStringField
      FieldName = 'Base'
      Size = 25
    end
    object cdsConfiguracaotabela: TStringField
      FieldName = 'tabela'
      Size = 50
    end
    object cdsConfiguracaoDirectory: TStringField
      FieldName = 'Directory'
      Size = 255
    end
    object cdsConfiguracaoSQL: TMemoField
      FieldName = 'SQL'
      BlobType = ftMemo
      Size = 500
    end
    object cdsConfiguracaoComCampos: TBooleanField
      FieldName = 'ComCampos'
    end
    object cdsConfiguracaonumbase: TIntegerField
      FieldName = 'numbase'
    end
    object cdsConfiguracaockbBloqueado1: TBooleanField
      FieldName = 'ckbBloqueado1'
    end
    object cdsConfiguracaockbBloqueado3: TBooleanField
      FieldName = 'ckbBloqueado3'
    end
    object cdsConfiguracaockbBloqueado2: TBooleanField
      FieldName = 'ckbBloqueado2'
    end
  end
  object DScdsConfiguracao: TDataSource
    DataSet = cdsConfiguracao
    Left = 266
    Top = 264
  end
  object DBISAMTable2: TDBISAMTable
    DatabaseName = 'Base1'
    SessionName = 'BaseSession'
    EngineVersion = '4.40 Build 1'
    TableName = 'SEGBAN'
    Left = 696
    Top = 464
  end
  object DBISAMQuery4: TDBISAMQuery
    DatabaseName = 'Base1'
    SessionName = 'BaseSession'
    EngineVersion = '4.40 Build 1'
    RequestLive = True
    SQL.Strings = (
      'SELECT * from SEGBAN')
    Params = <>
    Left = 776
    Top = 448
  end
  object Storage: TFormStorage
    Active = False
    UseRegistry = False
    StoredProps.Strings = (
      'cxTabCab.Height'
      'cxTab1_2.Height'
      'cxTab1.Height')
    StoredValues = <>
    Left = 1174
    Top = 72
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Documento XML|*.xml'
    Left = 656
    Top = 376
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'Documento XML|*.xml'
    Left = 732
    Top = 379
  end
  object PopupMenu1: TPopupMenu
    Left = 1186
    Top = 201
    object NtfEsc11: TMenuItem
      Caption = 'NtfEsc1'
      object FindKey1: TMenuItem
        Caption = 'FindKey'
      end
    end
    object NtfEsc21: TMenuItem
      Caption = 'NtfEsc2'
      object FindKey2: TMenuItem
        Caption = 'FindKey'
      end
    end
  end
  object DBISAMQuery5: TDBISAMQuery
    DatabaseName = 'Base1'
    EngineVersion = '4.40 Build 1'
    SQL.Strings = (
      'Select c.ProduDescri'
      '--,SUM(c.Quantidade) as TOTAL --, TotalBase, Total '
      'from FTDASHVD AS c'
      'Where (c.Tipo='#39'PROD'#39') '
      'GROUP BY c.ProduDescri'
      'ORDER BY c.ProduDescri')
    Params = <>
    Left = 560
    Top = 466
  end
  object cdsMenuSQL: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 278
    object cdsMenuSQLObjeto: TIntegerField
      FieldName = 'Objeto'
    end
    object cdsMenuSQLSQL: TMemoField
      FieldName = 'SQL'
      BlobType = ftMemo
      Size = 500
    end
    object cdsMenuSQLTag: TIntegerField
      FieldName = 'Tag'
    end
  end
  object PopupMenu: TPopupMenu
    Left = 120
    Top = 328
  end
end
