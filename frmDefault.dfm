object DefaultForm: TDefaultForm
  Left = 0
  Top = 0
  Caption = 'Default - Funcionalidades Filosoft'
  ClientHeight = 715
  ClientWidth = 1460
  Color = clBtnFace
  Constraints.MinHeight = 716
  Constraints.MinWidth = 1476
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object TabControl1: TTabControl
    Left = 537
    Top = 272
    Width = 515
    Height = 346
    Constraints.MinHeight = 346
    Constraints.MinWidth = 515
    TabOrder = 0
    object cxGroupBox9: TcxGroupBox
      Left = 4
      Top = 6
      Align = alTop
      Caption = ' Impressora '
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 0
      Height = 104
      Width = 507
      object chkDataHora: TcxCheckBox
        Left = 295
        Top = 69
        Caption = 'Data/Hora'
        Properties.Alignment = taRightJustify
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 2
        Transparent = True
      end
      object chkLinhas: TcxCheckBox
        Left = 376
        Top = 69
        Caption = ' Linhas'
        Properties.Alignment = taRightJustify
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 3
        Transparent = True
      end
      object btnSetup: TcxButton
        Left = 375
        Top = 20
        Width = 91
        Height = 23
        Caption = '&Defini'#231#245'es ...'
        LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 4
      end
      object cbPrinters: TcxComboBox
        Left = 69
        Top = 20
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items.Strings = (
          'OneNote for Windows 10'
          'OneNote (Desktop)'
          'Microsoft XPS Document Writer'
          'Microsoft Print to PDF'
          'Fax'
          'Bullzip PDF Printer')
        Properties.PostPopupValueOnTab = True
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 0
        Text = 'Microsoft Print to PDF'
        Width = 300
      end
      object speCopias: TcxSpinEdit
        Left = 69
        Top = 70
        Properties.ImmediatePost = True
        Properties.MaxValue = 99.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 1
        Value = 1
        Width = 42
      end
      object lblPaperName: TcxLabel
        Left = 68
        Top = 47
        Caption = 'A4  -  ( Vertical )'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        Transparent = True
      end
      object cbDuplex: TcxComboBox
        Left = 173
        Top = 69
        Hint = 'Impress'#227'o Duplex (apenas impressoras suportadas)'
        Enabled = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items.Strings = (
          'Desligado'
          'Vertical'
          'Horizontal'
          'Ignorar')
        Properties.PostPopupValueOnTab = True
        ShowHint = True
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 6
        Text = 'Desligado'
        Width = 86
      end
      object cxLabel3: TcxLabel
        Left = 26
        Top = 22
        Margins.Bottom = 0
        Caption = 'Nome'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 63
      end
      object Label2: TcxLabel
        Left = 23
        Top = 71
        Margins.Bottom = 0
        Caption = 'C'#243'pias'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 63
      end
      object cxLabel4: TcxLabel
        Left = 126
        Top = 71
        Margins.Bottom = 0
        Caption = 'Duplex'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 167
      end
    end
    object cxGroupBox10: TcxGroupBox
      Left = 4
      Top = 110
      Align = alClient
      Caption = 'Par'#226'metros'
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 1
      Height = 174
      Width = 507
      object Label4: TLabel
        Left = 16
        Top = 144
        Width = 234
        Height = 15
        Caption = 'frmDlgImpInventario.DlgImpInventarioForm'
      end
      object CbOrdem: TcxComboBox
        Left = 113
        Top = 43
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items.Strings = (
          'Num'#233'rica'
          'Alfab'#233'tica')
        Properties.PostPopupValueOnTab = True
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 0
        Text = 'Num'#233'rica'
        Width = 154
      end
      object Label12: TcxLabel
        Left = 66
        Top = 44
        Margins.Bottom = 0
        Caption = 'Ordem'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 107
      end
      object CbAgrupa: TcxCheckBox
        Left = 96
        Top = 16
        TabStop = False
        AutoSize = False
        Caption = 'Agrupa por Grupo Homog'#233'neo'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 2
        Transparent = True
        Height = 21
        Width = 227
      end
    end
    object pb: TcxProgressBar
      Left = 4
      Top = 284
      Align = alBottom
      Properties.PeakSize = 1
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 2
      Width = 507
    end
    object cxTabControl2: TcxTabControl
      Left = 4
      Top = 307
      Width = 507
      Height = 35
      Align = alBottom
      Color = clBtnFace
      ParentColor = False
      TabOrder = 3
      TabStop = False
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.ScrollbarMode = sbmClassic
      ClientRectBottom = 35
      ClientRectRight = 507
      ClientRectTop = 0
      object btnVerAntes: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 90
        Height = 29
        Align = alLeft
        Caption = 'Ver &Antes'
        LookAndFeel.ScrollbarMode = sbmClassic
        OptionsImage.NumGlyphs = 2
        TabOrder = 0
        OnClick = btnVerAntesClick
      end
      object btnImprimir: TcxButton
        AlignWithMargins = True
        Left = 99
        Top = 3
        Width = 90
        Height = 29
        Align = alLeft
        Caption = '&Imprimir'
        LookAndFeel.ScrollbarMode = sbmClassic
        ModalResult = 1
        OptionsImage.NumGlyphs = 2
        TabOrder = 1
        OnClick = btnImprimirClick
      end
      object btnCancelar: TcxButton
        AlignWithMargins = True
        Left = 414
        Top = 3
        Width = 90
        Height = 29
        Align = alRight
        Cancel = True
        Caption = 'Cancelar'
        LookAndFeel.ScrollbarMode = sbmClassic
        ModalResult = 2
        OptionsImage.NumGlyphs = 2
        TabOrder = 2
      end
      object btnExportar: TcxButton
        AlignWithMargins = True
        Left = 195
        Top = 3
        Width = 90
        Height = 29
        Align = alLeft
        Caption = '&Exportar'
        LookAndFeel.ScrollbarMode = sbmClassic
        OptionsImage.NumGlyphs = 2
        TabOrder = 3
        OnClick = btnExportarClick
      end
    end
  end
  object cxRadioGroup1: TcxRadioGroup
    Left = 1098
    Top = 347
    Caption = 'cxRadioGroup1'
    Properties.Items = <>
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    TabOrder = 1
    Height = 105
    Width = 185
  end
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 25
    Width = 1460
    Height = 690
    Align = alClient
    Constraints.MinWidth = 515
    Focusable = False
    TabOrder = 6
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.ScrollbarMode = sbmClassic
    ClientRectBottom = 690
    ClientRectRight = 1460
    ClientRectTop = 26
    object cxTabSheet4: TcxTabSheet
      Caption = 'Delphi B'#225'sicos'
      ImageIndex = 2
      object cxGroupBox11: TcxGroupBox
        Left = 14
        Top = 3
        Alignment = alTopCenter
        Caption = 'API Windows - Delphi'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 0
        Height = 298
        Width = 192
        object cxButton16: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 53
          Width = 176
          Height = 25
          Caption = 'Repintar Ecr'#227
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          OnClick = cxButton16Click
        end
        object cxButton4: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 84
          Width = 176
          Height = 25
          Caption = 'GUID - SysUtils'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 1
          Visible = False
          WordWrap = True
          OnClick = cxButton4Click
        end
        object cxButton2: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 22
          Width = 176
          Height = 25
          Caption = 'ShellExecute'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 2
          Visible = False
          OnClick = cxButton2Click
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Delphi Avan'#231'ado'
      ImageIndex = 1
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Visuais Filosoft'
      ImageIndex = 1
      object cxGroupBox4: TcxGroupBox
        Left = 610
        Top = 85
        Caption = 'cxGroupBox'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 0
        Height = 34
        Width = 155
      end
      object Panel1: TPanel
        Left = 537
        Top = 213
        Width = 511
        Height = 59
        Caption = 'A preparar o mapa .....'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        object PnVazio: TPanel
          Left = 1
          Top = 1
          Width = 509
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          Caption = 'N'#227'o existem mapas para impress'#227'o...'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
      end
      object cxLabel8: TcxLabel
        Left = 3
        Top = 3
        Caption = 'MODELO PARA TABELA ABAIXO:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        Transparent = True
      end
      object TabControl2: TTabControl
        Left = 3
        Top = 27
        Width = 523
        Height = 346
        Constraints.MinHeight = 315
        Constraints.MinWidth = 523
        TabOrder = 3
        object cxPageControl1: TcxPageControl
          Left = 4
          Top = 6
          Width = 515
          Height = 301
          Align = alClient
          Constraints.MinWidth = 515
          Focusable = False
          TabOrder = 0
          Properties.ActivePage = tabFicha
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.ScrollbarMode = sbmClassic
          ClientRectBottom = 301
          ClientRectRight = 515
          ClientRectTop = 26
          object tabFicha: TcxTabSheet
            Caption = '&1 - Ficha'
            ImageIndex = 1
            DesignSize = (
              515
              275)
            object DBStatusLabel1: TDBStatusLabel
              Left = 233
              Top = 11
              Width = 91
              Height = 15
              DatasetName = 'Modo'
              Captions.Strings = (
                '1'
                'Consulta'
                'Altera'#231#227'o'
                'Inserir Novo'
                '3'
                '4')
              Transparent = True
            end
            object edtData: TcxDBDateEdit
              Left = 146
              Top = 119
              DataBinding.DataField = 'Data'
              Properties.AutoSelect = False
              Properties.ImmediatePost = True
              Properties.InputKind = ikMask
              Properties.MinDate = 18264.000000000000000000
              Properties.PostPopupValueOnTab = True
              Properties.SaveTime = False
              Properties.ShowTime = False
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 0
              Width = 121
            end
            object edtValor: TcxDBCurrencyEdit
              Left = 362
              Top = 148
              DataBinding.DataField = 'Valor'
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseThousandSeparator = True
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 2
              Width = 121
            end
            object cxLabel1: TcxLabel
              Left = 112
              Top = 120
              Caption = 'Data'
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 140
            end
            object cxLabel5: TcxLabel
              Left = 49
              Top = 149
              Caption = 'Esp'#233'cie do t'#237'tulo'
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 140
            end
            object cxLabel6: TcxLabel
              Left = 300
              Top = 149
              Caption = 'Montante'
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 356
            end
            object btnGravar: TcxButton
              Left = 325
              Top = 247
              Width = 90
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = '&Gravar'
              Enabled = False
              LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 6
              OnClick = btnGravarClick
            end
            object btnCancelar21: TcxButton
              Left = 421
              Top = 247
              Width = 90
              Height = 25
              Anchors = [akRight, akBottom]
              Cancel = True
              Caption = '&Cancelar'
              Enabled = False
              LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 7
              OnClick = btnCancelar21Click
            end
            object cxDBNavigator1: TcxDBNavigator
              Left = 233
              Top = 32
              Width = 92
              Height = 24
              Buttons.CustomButtons = <>
              Buttons.PriorPage.Visible = False
              Buttons.NextPage.Visible = False
              Buttons.Insert.Visible = False
              Buttons.Delete.Visible = False
              Buttons.Edit.Visible = False
              Buttons.Post.Visible = False
              Buttons.Cancel.Visible = False
              Buttons.SaveBookmark.Visible = False
              Buttons.GotoBookmark.Visible = False
              Buttons.Filter.Visible = False
              LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 8
            end
            object edtEspecie: TcxDBComboBox
              Left = 146
              Top = 148
              DataBinding.DataField = 'Especie'
              Properties.DropDownSizeable = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items.Strings = (
                'Letra'
                'Livran'#231'a'
                'Cheque')
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 1
              Width = 121
            end
            object Label3: TcxLabel
              Left = 98
              Top = 33
              Margins.Bottom = 0
              Caption = 'C'#243'digo'
              FocusControl = ediCodigo
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 141
            end
            object ediCodigo: TcxDBTextEdit
              Left = 147
              Top = 32
              DataBinding.DataField = 'Codigo'
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 10
              Width = 80
            end
            object Label1: TcxLabel
              Left = 86
              Top = 62
              Margins.Bottom = 0
              Caption = 'Descri'#231#227'o'
              FocusControl = ediDescricao
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 141
            end
            object ediDescricao: TcxDBTextEdit
              Left = 147
              Top = 61
              DataBinding.DataField = 'descricao'
              DataBinding.DataSource = DsTabela
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 12
              Width = 337
            end
            object cxLookupComboBox1: TcxLookupComboBox
              Left = 146
              Top = 177
              Properties.ListColumns = <>
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 13
              Width = 337
            end
            object cxLabel2: TcxLabel
              Left = 76
              Top = 178
              Caption = 'LookupBox'
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 140
            end
            object ckbAtivado: TcxDBCheckBox
              Left = 151
              Top = 213
              Caption = 'Ativado'
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              Style.TransparentBorder = False
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 15
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 118
              Top = 91
              Margins.Bottom = 0
              Caption = 'NIF'
              FocusControl = edtNIF
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 140
            end
            object edtNIF: TcxDBTextEdit
              Left = 146
              Top = 90
              DataBinding.DataField = 'descricao'
              DataBinding.DataSource = DsTabela
              Style.LookAndFeel.ScrollbarMode = sbmClassic
              StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
              StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
              StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 17
              Width = 337
            end
          end
          object tabLista: TcxTabSheet
            Caption = '&2 - Lista'
            ImageIndex = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 515
              Height = 275
              Align = alClient
              TabOrder = 0
              LookAndFeel.ScrollbarMode = sbmClassic
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Visible = True
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCellDblClick = cxGrid1DBTableView1CellDblClick
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.NavigatorOffset = 0
                OptionsView.ColumnAutoWidth = True
                object cxGrid1DBTableView1Codigo: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  Width = 78
                end
                object cxGrid1DBTableView1Descricao: TcxGridDBColumn
                  Caption = 'Descri'#231#227'o'
                  DataBinding.FieldName = 'Descricao'
                  Width = 337
                end
                object cxGrid1DBTableView1Tipo: TcxGridDBColumn
                  DataBinding.FieldName = 'Tipo'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.DropDownWidth = 100
                  Properties.KeyFieldNames = 'Codigo'
                  Properties.ListColumns = <
                    item
                      Caption = 'C'#243'digo'
                      FieldName = 'Codigo'
                    end
                    item
                      Caption = 'Descri'#231#227'o'
                      FieldName = 'Descricao'
                    end>
                  Properties.ListSource = DsTabela
                  Width = 82
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
          end
          object cxTabSheet1: TcxTabSheet
            Caption = '3 - GIMO'
            ImageIndex = 2
            DesignSize = (
              515
              275)
            object btnGuardar: TcxButton
              Left = 314
              Top = 236
              Width = 90
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = '&Guardar'
              Enabled = False
              LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 0
            end
            object cxButton7: TcxButton
              Left = 410
              Top = 236
              Width = 90
              Height = 25
              Anchors = [akRight, akBottom]
              Cancel = True
              Caption = 'Cancelar'
              Enabled = False
              LookAndFeel.ScrollbarMode = sbmClassic
              TabOrder = 1
            end
          end
        end
        object cxTabControl1: TcxTabControl
          Left = 4
          Top = 307
          Width = 515
          Height = 35
          Align = alBottom
          Constraints.MinWidth = 515
          TabOrder = 1
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.ScrollbarMode = sbmClassic
          ClientRectBottom = 35
          ClientRectRight = 515
          ClientRectTop = 0
          object btnApagar1: TcxButton
            AlignWithMargins = True
            Left = 195
            Top = 3
            Width = 90
            Height = 29
            Align = alLeft
            Caption = '&Apagar'
            LookAndFeel.ScrollbarMode = sbmClassic
            TabOrder = 0
            TabStop = False
            OnClick = btnApagar1Click
          end
          object btnEditar1: TcxButton
            AlignWithMargins = True
            Left = 99
            Top = 3
            Width = 90
            Height = 29
            Align = alLeft
            Caption = '&Editar'
            LookAndFeel.ScrollbarMode = sbmClassic
            TabOrder = 1
            OnClick = btnEditar1Click
          end
          object btnNovo1: TcxButton
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 90
            Height = 29
            Align = alLeft
            Caption = '&Novo'
            LookAndFeel.ScrollbarMode = sbmClassic
            TabOrder = 2
            OnClick = btnNovo1Click
          end
          object btnImprimir1: TcxButton
            AlignWithMargins = True
            Left = 291
            Top = 3
            Width = 90
            Height = 29
            Align = alLeft
            Caption = '&Imprimir'
            LookAndFeel.ScrollbarMode = sbmClassic
            TabOrder = 3
          end
          object BtnTerminar1: TcxButton
            AlignWithMargins = True
            Left = 422
            Top = 3
            Width = 90
            Height = 29
            Align = alRight
            Caption = '&Terminar'
            LookAndFeel.ScrollbarMode = sbmClassic
            TabOrder = 4
            OnClick = BtnTerminar1Click
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Filosoft - Coding'
      ImageIndex = 0
      object cxGroupBox6: TcxGroupBox
        Left = 3
        Top = 4
        Alignment = alTopCenter
        Caption = 'DBISAMTable - Dataset'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 0
        Height = 241
        Width = 309
        object btnSetRange: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 118
          Width = 294
          Height = 25
          Caption = 'set&Range'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          TabOrder = 0
          TabStop = False
          OnClick = btnSetRangeClick
        end
        object btnNovaSessao: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 25
          Width = 294
          Height = 25
          Caption = 'NOVA SESS'#195'O - DBISAMTable'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 1
          Visible = False
          OnClick = btnNovaSessaoClick
        end
        object btnMontaSQL: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 149
          Width = 294
          Height = 25
          Caption = 'SQL - Nova Sess'#227'o DBISAMQuery'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 2
          Visible = False
          OnClick = btnMontaSQLClick
        end
        object btnMemDbIsam: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 87
          Width = 294
          Height = 25
          Caption = 'Memory Tempor'#225'ria DBISAMTable "OpenMemTable"'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 3
          Visible = False
          OnClick = btnMemDbIsamClick
        end
        object btnNovaSessaoAno: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 56
          Width = 294
          Height = 25
          Caption = 'NOVA SESS'#195'O C/ DataBaseName Ano'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 4
          Visible = False
          OnClick = btnNovaSessaoAnoClick
        end
        object btnDbIsamTryExcept: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 180
          Width = 294
          Height = 25
          Caption = 'Try Except'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 5
          Visible = False
          OnClick = btnDbIsamTryExceptClick
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 3
        Top = 432
        Alignment = alTopCenter
        Caption = 'Templates e bloco de comando'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 1
        Height = 187
        Width = 309
        object cxButton10: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 24
          Width = 294
          Height = 25
          Caption = 'Try '
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          OnClick = cxButton10Click
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 756
        Top = 4
        Caption = 'Fun'#231#245'es Filosoft Comercial'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 2
        Height = 211
        Width = 165
        object btnChecarNIF: TcxButton
          AlignWithMargins = True
          Left = 6
          Top = 25
          Width = 152
          Height = 25
          Caption = 'Checar NIF'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          OnClick = btnChecarNIFClick
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 3
        Top = 251
        Alignment = alTopCenter
        Caption = 'Componentes - Delphi'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 3
        Height = 175
        Width = 309
        object cxButton5: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 25
          Width = 294
          Height = 25
          Caption = 'Show Form MDI'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          Visible = False
          OnClick = cxButton5Click
        end
        object cxButton6: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 56
          Width = 294
          Height = 25
          Caption = 'Progress - TcxProgressBar'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 1
          Visible = False
          OnClick = cxButton6Click
        end
        object cxButton12: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 87
          Width = 294
          Height = 25
          Caption = 'Dialogs Save'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 2
          Visible = False
          OnClick = cxButton12Click
        end
      end
      object cxGroupBox7: TcxGroupBox
        Left = 558
        Top = 4
        Alignment = alTopCenter
        Caption = 'Fun'#231#245'es Padr'#227'o Filosoft'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 4
        Height = 211
        Width = 192
        object cxButton8: TcxButton
          AlignWithMargins = True
          Left = 8
          Top = 87
          Width = 176
          Height = 25
          Caption = 'Variaveis Usu'#225'rio Logado'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          OnClick = cxButton8Click
        end
        object btnPastasDiretorios: TcxButton
          AlignWithMargins = True
          Left = 8
          Top = 118
          Width = 176
          Height = 42
          Caption = 'Pastas e Diret'#243'rios de Sistemas \temp\'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          TabOrder = 1
          WordWrap = True
          OnClick = btnPastasDiretoriosClick
        end
        object btnCreateFilosoft: TcxButton
          AlignWithMargins = True
          Left = 8
          Top = 25
          Width = 176
          Height = 25
          Caption = 'Create Form Model'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 2
          OnClick = btnCreateFilosoftClick
        end
        object btnMessageDlgEx: TcxButton
          AlignWithMargins = True
          Left = 8
          Top = 56
          Width = 176
          Height = 25
          Caption = 'MessageDlgEx'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 3
          Visible = False
          OnClick = btnMessageDlgExClick
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 318
        Top = 4
        Alignment = alTopCenter
        Caption = 'Fun'#231#245'es Delphi'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 5
        Height = 615
        Width = 234
        object Label5: TLabel
          Left = 3
          Top = 300
          Width = 231
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'String'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 1
          Top = 410
          Width = 231
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'Colletions'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton9: TcxButton
          AlignWithMargins = True
          Left = 8
          Top = 25
          Width = 218
          Height = 25
          Caption = 'Formatos de Datas'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          Visible = False
          OnClick = cxButton9Click
        end
        object cxButton1: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 61
          Width = 219
          Height = 40
          Caption = 'Type TClass Procedimento() do object; context'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 1
          WordWrap = True
          OnClick = cxButton1Click
        end
        object btnDecrypt: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 207
          Width = 219
          Height = 25
          Caption = 'Encrypt - Decrypt'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 2
          OnClick = btnDecryptClick
        end
        object cxButton3: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 324
          Width = 219
          Height = 25
          Caption = 'TIRA CARACTER INICIO E DO FIM'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 3
          OnClick = cxButton3Click
        end
        object btnBase64Decode: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 269
          Width = 219
          Height = 25
          Caption = 'Base 64 Decode'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 4
          OnClick = btnBase64DecodeClick
        end
        object btnBase64Encode: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 238
          Width = 219
          Height = 25
          Caption = 'Base 64 Encode'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 5
          OnClick = btnBase64EncodeClick
        end
        object cxButton11: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 434
          Width = 219
          Height = 25
          Caption = 'ObjectDictionary'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 6
          OnClick = cxButton11Click
        end
        object cxButton13: TcxButton
          AlignWithMargins = True
          Left = 8
          Top = 464
          Width = 219
          Height = 25
          Caption = 'DataSnap / Sess'#227'o / Outros'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 7
          OnClick = cxButton13Click
        end
        object cxButton14: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 107
          Width = 219
          Height = 39
          Caption = 
            '     {$if DEFINED(TESTE)}       {$ifend}           Se Compila tr' +
            'echo do c'#243'digo'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 8
          WordWrap = True
          OnClick = cxButton14Click
        end
        object btnIfThen: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 355
          Width = 219
          Height = 25
          Caption = 'IFthen'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 9
          OnClick = btnIfThenClick
        end
      end
      object cxGroupBox8: TcxGroupBox
        Left = 927
        Top = 4
        Caption = 'Componentes DevExpress'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 6
        Height = 312
        Width = 171
        object cxButton15: TcxButton
          AlignWithMargins = True
          Left = 5
          Top = 25
          Width = 158
          Height = 25
          Caption = 'Repositorios p/ combo'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          Visible = False
          OnClick = cxButton15Click
        end
        object cbxTipoCombustivel: TcxDBImageComboBox
          Left = 5
          Top = 56
          RepositoryItem = cxEditRepository1TipoCombustivel
          DataBinding.DataField = 'TipoCombustivel'
          DataBinding.DataSource = DsTabela
          Properties.Items = <>
          Style.LookAndFeel.ScrollbarMode = sbmClassic
          StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
          StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
          StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
          TabOrder = 1
          Width = 158
        end
      end
      object cxGroupBox12: TcxGroupBox
        Left = 876
        Top = 322
        Alignment = alTopCenter
        Caption = 'Modelo 1'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 7
        Height = 72
        Width = 205
        object cxButton17: TcxButton
          AlignWithMargins = True
          Left = 34
          Top = 23
          Width = 131
          Height = 30
          Caption = 'Modelo 1'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
        end
      end
      object cxGroupBox13: TcxGroupBox
        Left = 558
        Top = 221
        Alignment = alTopCenter
        Caption = 'JSON - TJSONObject'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 8
        Height = 202
        Width = 192
        object btnJSONValidade: TcxButton
          AlignWithMargins = True
          Left = 9
          Top = 58
          Width = 176
          Height = 30
          Caption = 'Validar um JSON'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          OnClick = btnJSONValidadeClick
        end
        object btnJsonSimples: TcxButton
          AlignWithMargins = True
          Left = 9
          Top = 22
          Width = 176
          Height = 30
          Caption = 'Ler Json Simples'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 1
          OnClick = btnJsonSimplesClick
        end
        object cxButton18: TcxButton
          AlignWithMargins = True
          Left = 9
          Top = 130
          Width = 176
          Height = 30
          Caption = 'Cria JSON com array / Fatura'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 2
          OnClick = cxButton18Click
        end
        object cxButton21: TcxButton
          AlignWithMargins = True
          Left = 9
          Top = 94
          Width = 176
          Height = 30
          Caption = 'Cria JSON Simples'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 3
          OnClick = cxButton21Click
        end
      end
      object cxGroupBox14: TcxGroupBox
        Left = 1087
        Top = 322
        Alignment = alTopCenter
        Caption = 'Modelo 1'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 9
        Height = 72
        Width = 205
        object cxButton19: TcxButton
          AlignWithMargins = True
          Left = 34
          Top = 23
          Width = 131
          Height = 30
          Caption = 'Servi'#231'os'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          OnClick = cxButton19Click
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Filosoft - Tabelas'
      ImageIndex = 4
      object cxGroupBox15: TcxGroupBox
        Left = 684
        Top = 58
        Alignment = alTopCenter
        Caption = 'Modelo 1'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 0
        Height = 72
        Width = 205
        object cxButton20: TcxButton
          AlignWithMargins = True
          Left = 34
          Top = 23
          Width = 131
          Height = 30
          Caption = 'Modelo 1'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
        end
      end
      object cxGroupBox16: TcxGroupBox
        Left = 3
        Top = 3
        Alignment = alTopCenter
        Caption = 'Artigos'
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        TabOrder = 1
        Height = 317
        Width = 205
        object btntblArtigo: TcxButton
          AlignWithMargins = True
          Left = 18
          Top = 61
          Width = 167
          Height = 30
          Caption = 'Findkey'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
          OnClick = btntblArtigoClick
        end
        object btnCreateTable: TcxButton
          AlignWithMargins = True
          Left = 18
          Top = 25
          Width = 167
          Height = 30
          Caption = 'Campos e Index'
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'UserSkin'
          OptionsImage.NumGlyphs = 2
          TabOrder = 1
          OnClick = btnCreateTableClick
        end
      end
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 352
    Top = 664
  end
  object PMLista: TPopupMenu
    Left = 535
    Top = 664
    object InserirNovo1: TMenuItem
      Caption = 'Inserir Novo Documento'
    end
    object Editar1: TMenuItem
      Caption = 'Editar Documento'
    end
    object AnularFicha1: TMenuItem
      Caption = 'Apagar Documento'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExportarlistapExcel2: TMenuItem
      Caption = 'Exportar lista p/Excel'
      OnClick = ExportarlistapExcel2Click
    end
    object ExportarlistapExcel1: TMenuItem
      Tag = 1
      Caption = 'Exportar lista p/Excel e Abrir'
      OnClick = ExportarlistapExcel2Click
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Ficheiros Excel|*.xls'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Guardar folha de Excel'
    Left = 587
    Top = 663
  end
  object DsTabela: TDataSource
    OnStateChange = DsTabelaStateChange
    Left = 280
    Top = 664
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.ScrollbarMode = sbmClassic
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 456
    Top = 664
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      25
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 842
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Ficheiros'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Abrir'
      Category = 0
      Hint = 'Abrir'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'mnuUtilizadores'
      Category = 0
      Hint = 'mnuUtilizadores'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Sair'
      Category = 0
      Hint = 'Sair'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Acessos'
      Category = 0
      Hint = 'Acessos'
      Visible = ivAlways
    end
  end
  object Storage: TFormStorage
    StoredValues = <>
    Left = 1331
    Top = 198
  end
  object memMap: TDBISAMTable
    DatabaseName = 'Memory'
    SessionName = 'Default'
    EngineVersion = '4.40 Build 1'
    TableName = 'memMap'
    Left = 664
    Top = 664
  end
  object cxEditRepository1: TcxEditRepository
    Left = 1344
    Top = 96
    PixelsPerInch = 96
    object cxEditRepositoryTipoImobPOC: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Corp'#243'reo'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Incorp'#243'reo'
          Value = 'I'
        end
        item
          Description = 'Financeiro'
          Value = 'F'
        end
        item
          Description = 'Em Curso'
          Value = 'E'
        end>
    end
    object cxEditRepositoryTipoImobSNC: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Tang'#237'vel'
          ImageIndex = 0
          Value = 'T'
        end
        item
          Description = 'Intang'#237'vel'
          Value = 'I'
        end
        item
          Description = 'Financeiro'
          Value = 'F'
        end
        item
          Description = 'Prop.Investimento'
          Value = 'P'
        end
        item
          Description = 'Em Curso'
          Value = 'E'
        end
        item
          Description = 'Biol'#243'gico (37)'
          Value = 'B'
        end
        item
          Description = 'Invent'#225'rios (32)'
          Value = 'V'
        end>
    end
    object cxEditRepository1TipoCombustivel: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Gasolina/Gas'#243'leo'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'H'#237'bridos Plug in'
          Value = 1
        end
        item
          Description = 'GNV/G'#225's'
          Value = 2
        end
        item
          Description = 'Ve'#237'culos 100% El'#233'tricos'
        end>
    end
  end
  object RpListaTabela: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Listagem de Reintegra'#231#245'es'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Tahoma'
    RTFSettings.DefaultFont.Style = []
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 952
    Top = 416
    Version = '21.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7000
        mmLeft = 500
        mmTop = 265
        mmWidth = 101620
        BandType = 0
        LayerName = Foreground
      end
      object LbFirma: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbFirma'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'LbFirma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4128
        mmLeft = 102394
        mmTop = 6085
        mmWidth = 87842
        BandType = 0
        LayerName = Foreground
      end
      object LbPostal: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbPostal'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'LbPostal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4064
        mmLeft = 102394
        mmTop = 10319
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object LbFiscal: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbFiscal'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'LbFiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 102394
        mmTop = 14288
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object LbEx: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbEx'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Exercicio de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4064
        mmLeft = 157957
        mmTop = 14288
        mmWidth = 20235
        BandType = 0
        LayerName = Foreground
      end
      object LbAno: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbAno'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'LbAno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4128
        mmLeft = 178594
        mmTop = 14317
        mmWidth = 11197
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 265
        mmTop = 25929
        mmWidth = 189177
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 18785
        mmWidth = 189177
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4585
        mmLeft = 519
        mmTop = 20550
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4585
        mmLeft = 23019
        mmTop = 20550
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLbGrupo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbGrupo'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4585
        mmLeft = 84402
        mmTop = 20550
        mmWidth = 9603
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4585
        mmLeft = 94986
        mmTop = 20550
        mmWidth = 9211
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'C.Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4585
        mmLeft = 117475
        mmTop = 20550
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Meses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3968
        mmLeft = 131802
        mmTop = 20550
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Valor Reintegra'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7741
        mmLeft = 149225
        mmTop = 18413
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor Actual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4585
        mmLeft = 171176
        mmTop = 20550
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Label3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 539
        mmTop = 11906
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        SaveOrder = 0
        Save = True
        Border.mmPadding = 0
        DataField = 'codigo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 529
        mmTop = 265
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        SaveOrder = 1
        Save = True
        Border.mmPadding = 0
        DataField = 'Descricao'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 23019
        mmTop = 265
        mmWidth = 60590
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        SaveOrder = 2
        Save = True
        Border.mmPadding = 0
        DataField = 'conta'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 94986
        mmTop = 265
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        SaveOrder = 3
        Save = True
        Border.mmPadding = 0
        DataField = 'vAmort'
        DataPipeline = ppDBPipeline1
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 146050
        mmTop = 265
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        SaveOrder = 4
        Save = True
        Border.mmPadding = 0
        DataField = 'meses'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 137584
        mmTop = 265
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        SaveOrder = 5
        Save = True
        Border.mmPadding = 0
        DataField = 'vactual'
        DataPipeline = ppDBPipeline1
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 168011
        mmTop = 265
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        SaveOrder = 6
        Save = True
        Border.mmPadding = 0
        DataField = 'ccusto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 117475
        mmTop = 265
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Style = psDot
        Visible = False
        Weight = 0.400000005960464500
        mmHeight = 265
        mmLeft = 265
        mmTop = 3969
        mmWidth = 189177
        BandType = 4
        LayerName = Foreground
      end
      object ppDbgrupo: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Dbgrupo'
        HyperlinkEnabled = False
        SaveOrder = 7
        Save = True
        Border.mmPadding = 0
        DataField = 'Grupo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 84402
        mmTop = 265
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object LbLicenca: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbLicenca'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Gimo 32 V.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3000
        mmLeft = 529
        mmTop = 6615
        mmWidth = 12700
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 265
        mmTop = 5556
        mmWidth = 189177
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'vAmort'
        DataPipeline = ppDBPipeline1
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4409
        mmLeft = 146080
        mmTop = 1148
        mmWidth = 20902
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 265
        mmWidth = 189177
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'vactual'
        DataPipeline = ppDBPipeline1
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4409
        mmLeft = 168599
        mmTop = 1148
        mmWidth = 20902
        BandType = 8
        LayerName = Foreground
      end
      object LbTotais: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbTotais'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'A Trans'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4409
        mmLeft = 4498
        mmTop = 1148
        mmWidth = 9864
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3000
        mmLeft = 170657
        mmTop = 6615
        mmWidth = 16510
        BandType = 8
        LayerName = Foreground
      end
      object LbData: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'LbData'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3000
        mmLeft = 137584
        mmTop = 6615
        mmWidth = 24130
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ccusto'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGr1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'vAmort'
          DataPipeline = ppDBPipeline1
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4409
          mmLeft = 146315
          mmTop = 1323
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'vactual'
          DataPipeline = ppDBPipeline1
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4409
          mmLeft = 168540
          mmTop = 1323
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 265
          mmTop = 265
          mmWidth = 189177
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = 'Total do Centro de Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4409
          mmLeft = 19050
          mmTop = 1323
          mmWidth = 31665
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsmemTabela
    UserName = 'DBPipeline1'
    Left = 856
    Top = 416
  end
  object prnSetup: TfscxRBPrnSetup
    aInfoLbl = lblPaperName
    Button = btnSetup
    cbPrinters = cbPrinters
    cbDuplex = cbDuplex
    ForceOrientation = foPortrait
    TextFileName = 'Lista_Amort'
    SignedPDF_UseCertFileStream = False
    SignedPDF_CertFileStreamFormat = 0
    SignedPDF_SignatureAutoPos = True
    SignedPDF_SignaturePosX = 0
    SignedPDF_SignaturePosY = 0
    SignedPDF_SignatureHeight = 0
    SignedPDF_SignatureWidth = 0
    SignedPDF_BackgroundJPG = False
    SignedPDF_UseImgFileStream = False
    Left = 840
    Top = 480
  end
  object memTabela: TDBISAMTable
    DatabaseName = 'Memory'
    SessionName = 'Default'
    EngineVersion = '4.40 Build 1'
    TableName = '_memTableName'
    Left = 984
    Top = 520
  end
  object DsmemTabela: TDataSource
    DataSet = memTabela
    Left = 928
    Top = 576
  end
  object dbEmpresaTeste: TDBISAMDatabase
    EngineVersion = '4.40 Build 1'
    DatabaseName = 'EmpresaTeste1'
    Directory = 'C:\Filosoft.32\Emp001\Ano2023'
    SessionName = 'Default'
    Left = 36
    Top = 664
  end
  object QueryTeste: TDBISAMQuery
    DatabaseName = 'EmpresaTeste1'
    EngineVersion = '4.40 Build 1'
    SQL.Strings = (
      'SELECT * FROM FTDASHVD '
      'Where (Tipo='#39'DOCU'#39') and Ano=2023 and mes=2 '
      'and Dia between 1 and 30 and DocSerie='#39'01'#39' and Doctipo='#39'__'#39)
    Params = <>
    Left = 115
    Top = 664
    object QueryTesteID: TAutoIncField
      FieldName = 'ID'
      Origin = 'FTDASHVD.ID'
    end
    object QueryTesteActualizado: TBooleanField
      FieldName = 'Actualizado'
      Origin = 'FTDASHVD.Actualizado'
    end
    object QueryTesteData: TDateTimeField
      FieldName = 'Data'
      Origin = 'FTDASHVD.Data'
    end
    object QueryTesteAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'FTDASHVD.Ano'
    end
    object QueryTesteMes: TIntegerField
      FieldName = 'Mes'
      Origin = 'FTDASHVD.Mes'
    end
    object QueryTesteSemana: TIntegerField
      FieldName = 'Semana'
      Origin = 'FTDASHVD.Semana'
    end
    object QueryTesteDia: TIntegerField
      FieldName = 'Dia'
      Origin = 'FTDASHVD.Dia'
    end
    object QueryTesteDiaSemana: TIntegerField
      FieldName = 'DiaSemana'
      Origin = 'FTDASHVD.DiaSemana'
    end
    object QueryTesteTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'FTDASHVD.Tipo'
      Size = 4
    end
    object QueryTesteDocTipo: TStringField
      FieldName = 'DocTipo'
      Origin = 'FTDASHVD.DocTipo'
      Size = 4
    end
    object QueryTesteDocSerie: TStringField
      FieldName = 'DocSerie'
      Origin = 'FTDASHVD.DocSerie'
      Size = 4
    end
    object QueryTesteProduArma: TStringField
      FieldName = 'ProduArma'
      Origin = 'FTDASHVD.ProduArma'
      Size = 3
    end
    object QueryTesteProduCodigo: TStringField
      FieldName = 'ProduCodigo'
      Origin = 'FTDASHVD.ProduCodigo'
    end
    object QueryTesteProduDescri: TStringField
      FieldName = 'ProduDescri'
      Origin = 'FTDASHVD.ProduDescri'
      Size = 80
    end
    object QueryTesteProduFamilia: TStringField
      FieldName = 'ProduFamilia'
      Origin = 'FTDASHVD.ProduFamilia'
      Size = 8
    end
    object QueryTesteQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'FTDASHVD.Quantidade'
    end
    object QueryTesteTotalBase: TFloatField
      FieldName = 'TotalBase'
      Origin = 'FTDASHVD.TotalBase'
    end
    object QueryTesteTotalImposto: TFloatField
      FieldName = 'TotalImposto'
      Origin = 'FTDASHVD.TotalImposto'
    end
    object QueryTesteTotalIRS: TFloatField
      FieldName = 'TotalIRS'
      Origin = 'FTDASHVD.TotalIRS'
    end
    object QueryTesteTotal: TFloatField
      FieldName = 'Total'
      Origin = 'FTDASHVD.Total'
    end
  end
  object DSQueryTeste: TDataSource
    DataSet = QueryTeste
    Left = 189
    Top = 664
  end
end
