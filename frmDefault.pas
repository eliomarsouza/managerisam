unit frmDefault;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.StdCtrls, JvComponentBase, JvDragDrop, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Menus, cxButtons, cxPC, cxContainer,
  cxEdit, cxGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxImageComboBox, cxDBLookupComboBox,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxDBEdit, cxDBNavigator, cxLabel, cxCurrencyEdit, cxMaskEdit, cxTextEdit,

  //Unit's do padrão Filosoft
  fsConsts, ufsForm, uForms, dbisamtb, fsFuncsDBISAM, fsAppInfo, uDialogs,
  //---------------------------------------------
  //Classes Utilitárias
  uDataModulo, Shellapi, fsFuncsFile, fsFuncsCheck, StrUtils,
  //Outros
  fsFuncsRegistry, fsFuncsDM,
  //Exportar o Excel
  cxGridExportLink,

  //--------------------
  RxCtrls, RxDBCtrl, cxProgressBar, dxBar,  RxPlacemnt, cxLookupEdit,
  cxDBLookupEdit, cxCheckBox, Vcl.ExtCtrls, cxEditRepositoryItems,

  cxSpinEdit, Vcl.ComCtrls, ppDB, ppDBPipe, ppParameter,
  ppDesignLayer, ppBands, ppClass, ppCtrls, ppPrnabl, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, fscxRBPrnSetup, cxRadioGroup,
  Generics.Collections, Datasnap.DSSession, fsLicencas;

 Type
    TExecutaAfterScrollContexto = procedure() of object;
    TTerminateContexto = procedure(Sender: TObject) of object;
    TTrataImpressaoReportContexto = procedure(ViasAImprimir: String; var NomeFicheiroPDF: String) of object;


type
  TDefaultForm = class(TfsForm)
    FDMemTable1: TFDMemTable;
    PMLista: TPopupMenu;
    InserirNovo1: TMenuItem;
    Editar1: TMenuItem;
    AnularFicha1: TMenuItem;
    N2: TMenuItem;
    ExportarlistapExcel2: TMenuItem;
    ExportarlistapExcel1: TMenuItem;
    SaveDlg: TSaveDialog;
    DsTabela: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    Storage: TFormStorage;
    memMap: TDBISAMTable;
    cxEditRepository1: TcxEditRepository;
    cxEditRepositoryTipoImobPOC: TcxEditRepositoryImageComboBoxItem;
    cxEditRepositoryTipoImobSNC: TcxEditRepositoryImageComboBoxItem;
    cxEditRepository1TipoCombustivel: TcxEditRepositoryImageComboBoxItem;
    TabControl1: TTabControl;
    cxGroupBox9: TcxGroupBox;
    chkDataHora: TcxCheckBox;
    chkLinhas: TcxCheckBox;
    btnSetup: TcxButton;
    cbPrinters: TcxComboBox;
    speCopias: TcxSpinEdit;
    lblPaperName: TcxLabel;
    cbDuplex: TcxComboBox;
    cxLabel3: TcxLabel;
    Label2: TcxLabel;
    cxLabel4: TcxLabel;
    cxGroupBox10: TcxGroupBox;
    CbOrdem: TcxComboBox;
    Label12: TcxLabel;
    pb: TcxProgressBar;
    cxTabControl2: TcxTabControl;
    btnVerAntes: TcxButton;
    btnImprimir: TcxButton;
    btnCancelar: TcxButton;
    btnExportar: TcxButton;
    RpListaTabela: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    LbFirma: TppLabel;
    LbPostal: TppLabel;
    LbFiscal: TppLabel;
    LbEx: TppLabel;
    LbAno: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLbGrupo: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine4: TppLine;
    ppDbgrupo: TppDBText;
    ppFooterBand1: TppFooterBand;
    LbLicenca: TppLabel;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppDBCalc3: TppDBCalc;
    LbTotais: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    LbData: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGr1: TppGroupFooterBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine6: TppLine;
    ppLabel9: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    prnSetup: TfscxRBPrnSetup;
    CbAgrupa: TcxCheckBox;
    memTabela: TDBISAMTable;
    DsmemTabela: TDataSource;
    Label4: TLabel;
    dbEmpresaTeste: TDBISAMDatabase;
    QueryTeste: TDBISAMQuery;
    QueryTesteID: TAutoIncField;
    QueryTesteActualizado: TBooleanField;
    QueryTesteData: TDateTimeField;
    QueryTesteAno: TIntegerField;
    QueryTesteMes: TIntegerField;
    QueryTesteSemana: TIntegerField;
    QueryTesteDia: TIntegerField;
    QueryTesteDiaSemana: TIntegerField;
    QueryTesteTipo: TStringField;
    QueryTesteDocTipo: TStringField;
    QueryTesteDocSerie: TStringField;
    QueryTesteProduArma: TStringField;
    QueryTesteProduCodigo: TStringField;
    QueryTesteProduDescri: TStringField;
    QueryTesteProduFamilia: TStringField;
    QueryTesteQuantidade: TFloatField;
    QueryTesteTotalBase: TFloatField;
    QueryTesteTotalImposto: TFloatField;
    QueryTesteTotalIRS: TFloatField;
    QueryTesteTotal: TFloatField;
    DSQueryTeste: TDataSource;
    cxRadioGroup1: TcxRadioGroup;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox6: TcxGroupBox;
    btnSetRange: TcxButton;
    btnNovaSessao: TcxButton;
    btnMontaSQL: TcxButton;
    btnMemDbIsam: TcxButton;
    btnNovaSessaoAno: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxButton10: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton12: TcxButton;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxButton9: TcxButton;
    cxButton1: TcxButton;
    btnDecrypt: TcxButton;
    cxButton3: TcxButton;
    cxGroupBox8: TcxGroupBox;
    cxButton15: TcxButton;
    cbxTipoCombustivel: TcxDBImageComboBox;
    cxGroupBox4: TcxGroupBox;
    Panel1: TPanel;
    PnVazio: TPanel;
    cxLabel8: TcxLabel;
    TabControl2: TTabControl;
    cxPageControl1: TcxPageControl;
    tabFicha: TcxTabSheet;
    DBStatusLabel1: TDBStatusLabel;
    edtData: TcxDBDateEdit;
    edtValor: TcxDBCurrencyEdit;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    btnGravar: TcxButton;
    btnCancelar21: TcxButton;
    cxDBNavigator1: TcxDBNavigator;
    edtEspecie: TcxDBComboBox;
    Label3: TcxLabel;
    ediCodigo: TcxDBTextEdit;
    Label1: TcxLabel;
    ediDescricao: TcxDBTextEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    ckbAtivado: TcxDBCheckBox;
    cxLabel7: TcxLabel;
    edtNIF: TcxDBTextEdit;
    tabLista: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet1: TcxTabSheet;
    btnGuardar: TcxButton;
    cxButton7: TcxButton;
    cxTabControl1: TcxTabControl;
    btnApagar1: TcxButton;
    btnEditar1: TcxButton;
    btnNovo1: TcxButton;
    btnImprimir1: TcxButton;
    BtnTerminar1: TcxButton;
    cxButton8: TcxButton;
    Label5: TLabel;
    btnBase64Decode: TcxButton;
    btnBase64Encode: TcxButton;
    cxButton11: TcxButton;
    Label7: TLabel;
    cxButton13: TcxButton;
    btnPastasDiretorios: TcxButton;
    btnCreateFilosoft: TcxButton;
    cxButton14: TcxButton;
    cxTabSheet4: TcxTabSheet;
    cxGroupBox11: TcxGroupBox;
    cxButton16: TcxButton;
    cxButton4: TcxButton;
    cxButton2: TcxButton;
    cxTabSheet5: TcxTabSheet;
    btnIfThen: TcxButton;
    cxGroupBox12: TcxGroupBox;
    cxGroupBox13: TcxGroupBox;
    btnJSONValidade: TcxButton;
    btnJsonSimples: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxGroupBox14: TcxGroupBox;
    cxButton19: TcxButton;
    btnDbIsamTryExcept: TcxButton;
    cxTabSheet6: TcxTabSheet;
    cxGroupBox15: TcxGroupBox;
    cxButton20: TcxButton;
    cxGroupBox16: TcxGroupBox;
    btntblArtigo: TcxButton;
    cxButton21: TcxButton;
    btnCreateTable: TcxButton;
    btnMessageDlgEx: TcxButton;
    btnChecarNIF: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMessageDlgExClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnNovaSessaoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelar21Click(Sender: TObject);
    procedure btnEditar1Click(Sender: TObject);
    procedure btnNovo1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure ExportarlistapExcel2Click(Sender: TObject);
    procedure btnApagar1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure btnPastasDiretoriosClick(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure btnSetRangeClick(Sender: TObject);
    procedure DsTabelaStateChange(Sender: TObject);
    procedure btnMontaSQLClick(Sender: TObject);
    procedure BtnTerminar1Click(Sender: TObject);
    procedure btnMemDbIsamClick(Sender: TObject);
    procedure btnChecarNIFClick(Sender: TObject);
    procedure btnNovaSessaoAnoClick(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure btnVerAntesClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnDecryptClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btnBase64DecodeClick(Sender: TObject);
    procedure btnBase64EncodeClick(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure btnCreateFilosoftClick(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure btnJSONValidadeClick(Sender: TObject);
    procedure btnJsonSimplesClick(Sender: TObject);
    procedure btnIfThenClick(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure btnDbIsamTryExceptClick(Sender: TObject);
    procedure btntblArtigoClick(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure btnCreateTableClick(Sender: TObject);
  private
    { Private declarations }
    fTableFinal : TDBISAMTable;
    fFicheiroDest: string;

    function getSaveDialog:string;
  public
    { Public declarations }
    codigo,nome,fiscal,Postal: string;

    class function NewInstance1(): String;
    constructor Create(AOwner: TComponent; FuncOutro: string); reintroduce;
    procedure CarregaDados;
    procedure OpenTemTables;
    procedure OpenMemoriaTerceiros(var Mem: TDBISAMTable);
    procedure ConfigReport(aReport: TppReport);
  end;

var
  DefaultForm: TDefaultForm;

implementation

uses fsApplicationConfig, System.NetEncoding;


{$R *.dfm}

class function TDefaultForm.NewInstance1(): String;
begin
  Result := 'Classe';
end;

constructor TDefaultForm.Create(AOwner: TComponent; FuncOutro: string);
begin
  inherited Create(AOwner);
end;

procedure TDefaultForm.FormCreate(Sender: TObject);
begin
  uForms_FixDPI(Self); //uForms
  Storage.IniFileName := GeralRegKey+GetVersionInfo('InternalName');
  Storage.IniSection  := Name;
  Storage.UseRegistry := True;

  //-- adic. E.S. 09-08-2022 --- para testes internos
  //if (DebugHook<>0) or IsSuporte(DM.Licenca,ApplicationNum) then
  if isSuporte(DM.Licenca, ApplicationNum) and (DM.Licenca.Serial='ME044548') then // fsLicencas.isSuporte
  begin
    btnMontaSQL.Enabled := true;
  end
  else
  begin
    btnMontaSQL.Enabled := false;
  end;
end;

procedure TDefaultForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Self.FormStyle = fsMDIChild) then
  begin
    Action := caFree;
    DefaultForm := nil;
  end;
end;

procedure TDefaultForm.btnApagar1Click(Sender: TObject);
begin
  if MessageDlgEx('    ATENÇÃO'#10'Deseja apagar este registo ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    //uLogs_AddDeletedEntry(FDMemTable1);
    FDMemTable1.Delete;
  end;
end;

procedure TDefaultForm.btnCancelar21Click(Sender: TObject);
begin
  FDMemTable1.Cancel;
end;

procedure TDefaultForm.btnEditar1Click(Sender: TObject);
begin
  FDMemTable1.Edit;
  if cxPageControl1.ActivePage=tabLista then
    cxPageControl1.ActivePage:= tabFicha;
  ediCodigo.SetFocus;
end;

procedure TDefaultForm.btnExportarClick(Sender: TObject);
begin
  carregaDados;
  ConfigReport(RpListaTabela);
  prnSetup.ExportReport(RpListaTabela);
end;

procedure TDefaultForm.btnGravarClick(Sender: TObject);
begin
  if ediCodigo.Text=''then
  begin
    MessageDlgEx('Codigo em branco ! ',mtError,[mbOk],0);
    ediCodigo.SetFocus;
    Exit;
  end;

  if ediDescricao.Text=''then
  begin
    MessageDlgEx('Descrição do Ato em branco ! ',mtError,[mbOk],0);
    ediDescricao.Setfocus;
    Exit;
  end;
  FDMemTable1.Post;
end;
// -----------------------------------------------------------------------------
procedure TDefaultForm.btnIfThenClick(Sender: TObject);
var _Condicao: string;
begin
  IfThen(_Condicao,'1','0'); //**  System.StrUtils
end;

procedure TDefaultForm.btnImprimirClick(Sender: TObject);
begin
  carregaDados;
  ConfigReport(RpListaTabela);
  RpListaTabela.ShowPrintDialog:=ReadUserConfig('ShowPrintDialog',False);
  RpListaTabela.DeviceType := 'Printer';
  RpListaTabela.Print;
end;
// -----------------------------------------------------------------------------
//
procedure TDefaultForm.ConfigReport(aReport: TppReport);
begin
  PrnSetup.ConfigReport(aReport, speCopias.Value);
  if chkLinhas.Checked then
    ppline4.Visible := True
  else
    ppline4.Visible := False;
  if chkDataHora.Checked then
    LbData.visible := True
  else
    LbData.visible := False;
  //LbLicenca.Text := reportFooterInfo;
end;

procedure TDefaultForm.btnNovo1Click(Sender: TObject);
begin
  FDMemTable1.Append;

  if cxPageControl1.ActivePage=tabLista then
    cxPageControl1.ActivePage:= tabFicha;
  ediCodigo.SetFocus;
end;

procedure TDefaultForm.CarregaDados;
var
  valido: boolean;
  TblFichas, TblHistor: TDBISAMTable;
begin
  //uDataModulo
  Codigo := DM.Firma.ReadString(BASESECTION,'Codigo','');
  Nome   := DM.Firma.ReadString(BASESECTION,'NomeAbrev','');
  Fiscal := DM.Firma.ReadString(BASESECTION,'Fiscal','');
  Postal := DM.Firma.ReadString(BASESECTION,'Postal','');

  LbFirma.Caption  := codigo + ' ' +Nome;
  LbAno.Caption    := IntToStr(Dm.AnoTrab);
  LbFiscal.Caption := Fiscal;
  LbPostal.Caption := Postal;

  OpenTemTables;
  // Falta filtrar o ficheiro

  pb.Properties.Max:=tblFichas.RecordCount;
  pb.Position:=0;
  TblFichas.first;
  while not tblFichas.Eof do
    begin
      pb.Position:=pb.Position+1;
      pb.Refresh;
      valido := True;
      if cbAgrupa.Checked then
      begin
        if memTabela.Locate('ccusto;conta;Grupo',VarArrayOf([tblFichas.fieldByName('CentroCusto').asString,
                                                             tblFichas.fieldByName('ContaSNC').asString,
                                                             tblFichas.fieldByName('Grupo').asString]),[loCaseInsensitive]) then
          memTabela.Edit
        else
          memTabela.Append;
      end
      else
      begin
         memTabela.Append;
      end;

      // Copiar os campos e gravar no ficheiro Mem
      if cbAgrupa.Checked then
      begin
        memTabela.FieldByName('codigo').AsString := tblFichas.fieldByName('Grupo').AsString;
        memTabela.FieldByName('Grupo').AsString  := tblFichas.fieldByName('Grupo').AsString;
      end
      else begin
        memTabela.FieldByName('codigo').AsString    := tblFichas.fieldByName('codigo').AsString;
        memTabela.FieldByName('Descricao').AsString := tblFichas.fieldByName('Descricao').AsString;
        memTabela.FieldByName('Grupo').AsString     := tblFichas.fieldByName('Grupo').AsString;
      end;
      memTabela.FieldByName('CCusto').AsString    := tblFichas.fieldByName('CentroCusto').AsString;
      memTabela.FieldByName('Conta').AsString     := tblFichas.fieldByName('').AsString;
      memTabela.FieldByName('Vactual').AsCurrency := memTabela.FieldByName('Vactual').AsCurrency
                                                   + tblFichas.fieldByName('ValorActual').AsCurrency;

      TblHistor.SetRange([tblFichas.fieldByName('codigo').asString,tblFichas.fieldByName('Subcod').asString,DM.AnoTrab],
                            [tblFichas.fieldByName('codigo').asString,tblFichas.fieldByName('Subcod').asString,DM.AnoTrab]);
      TblHistor.filter:='TipoProces = ''1''';
      TblHistor.filtered:=True;
      TblHistor.first;
      while not TblHistor.Eof do begin
        memTabela.FieldByName('VAmort').AsCurrency:=memTabela.FieldByName('VAmort').AsCurrency + TblHistor.fieldByName('ValAmort').AsCurrency;
        memTabela.FieldByName('meses').AsString:=TblHistor.fieldByName('MesesProces').AsString;
        TblHistor.Next;
      end;

      if memTabela.FieldByName('VAmort').AsCurrency + memTabela.FieldByName('Vactual').AsCurrency >0 then
        memTabela.Post
      else
        memTabela.Cancel;
      tblFichas.Next;
    end;

  DBISAM_DestroyTempTable(tblFichas);
  DBISAM_DestroyTempTable(TblHistor);

  if not CbAgrupa.Checked then
    begin
      ppGr1.Visible:= false;
      ppLbGrupo.Visible:=true;
      ppDbGrupo.Visible:=true;
      if cbOrdem.ItemIndex >0 then
      begin
        if cbOrdem.ItemIndex = 1 then memTabela.IndexName := 'PorDescricao'; //SortOnFields('Descricao');
        if cbOrdem.ItemIndex = 2 then memTabela.IndexName := 'PorConta'; //SortOnFields('Conta');
        if cbOrdem.ItemIndex = 3 then memTabela.IndexName := 'PorGrupo'; //.SortOnFields('Grupo');
        if cbOrdem.ItemIndex = 4 then memTabela.IndexName := 'PorCCusto'; //.SortOnFields('CCusto');
      end;
    end
    else
      begin
        memTabela.IndexName := 'PorCCustoConta'; // SortOnFields('CCusto;Conta;codigo');
        ppGr1.Visible:= true;
        ppLbGrupo.Visible:=false;
        ppDbGrupo.Visible:=false;
      end;
end;

procedure TDefaultForm.OpenTemTables;
begin
  //***
  with memTabela do
  begin
    Close;
    if Exists then
      DeleteTable;
    //Exclusive := True;
    DatabaseName := GetSysTempPathFILOSOFT;    //fsFuncsFile
    TableName    := GetUniqueFileName(DatabaseName);
    if Exists then
      DeleteTable;

    //**campos
    FieldDefs.Clear;
    FieldDefs.Add('Id' ,ftAutoInc, 0,False);
    FieldDefs.Add('conta', ftString, 18,False);
    FieldDefs.Add('Grupo', ftString, 4,False);
    FieldDefs.Add('codigo', ftString, 12,False);
    FieldDefs.Add('Descricao', ftString, 40,False);
    FieldDefs.Add('vAmort', ftCurrency, 0,False);
    FieldDefs.Add('meses', ftString, 2,False);
    FieldDefs.Add('vactual', ftCurrency, 0,False);
    FieldDefs.Add('ccusto', ftString, 12,False);

    //**Index
    IndexDefs.Clear;
    IndexDefs.Add('','Id',[ixPrimary,ixUnique]);
    IndexDefs.Add('porConta','conta',[ixCaseInsensitive]);
    IndexDefs.Add('porDescricao','Descricao',[ixCaseInsensitive]);
    IndexDefs.Add('porGrupo','Grupo',[ixCaseInsensitive]);
    IndexDefs.Add('porCCusto','CCusto',[ixCaseInsensitive]);
    IndexDefs.Add('porCCustoConta','CCusto;Conta;codigo',[ixCaseInsensitive]);

    CreateTable;
    Open;
  end;
end;

procedure TDefaultForm.BtnTerminar1Click(Sender: TObject);
begin
  close;
end;

procedure TDefaultForm.cxButton10Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
end;


procedure TDefaultForm.cxButton11Click(Sender: TObject);
var
  HitTimes_Request: TObjectDictionary<String,TDateTime>; //Generics.Collections
  Item: TPair<string, TDateTime>; //Generics.Collections

  elapsedSecs, elapsedMinutes: Integer;
  _acessName: string;
  _data: Tdatetime;
begin
  _acessName := 'filosoft'; //variável controle de usuário

  HitTimes_Request := TObjectDictionary<String,TDateTime>.Create;
  if HitTimes_Request.ContainsKey(_acessName) then
  begin
  end
  else
  begin
    _data:= Now;
    HitTimes_Request.AddOrSetValue(_acessName, _data);
  end;

  //Mostrar a lista loop das chaves com seus valores
  for Item in HitTimes_Request do
    showmessage(  ' = ' + Item.Key +'='+datetimetostr( Item.Value ));

  HitTimes_Request.Remove(_acessName);
end;

procedure TDefaultForm.btnBase64EncodeClick(Sender: TObject);
var
  _StreamIn, _StreamOut: TStringStream;
  _StrInBase64: string;
begin
   //_StreamIn  := aTabelas.CreateBlobStream(aTabelas.Fields[i], bmRead);
   _StreamOut := TStringStream.create;

  try
    TNetEncoding.Base64.Encode(_StreamIn, _StreamOut); //System.NetEncoding

    _StreamOut.Position := 0;
    _StrInBase64 := _StreamOut.DataString;
  finally
    _StreamOut.free;
    _StreamIn.Free;
  end;
end;

procedure TDefaultForm.btnBase64DecodeClick(Sender: TObject);
var
  _file: TextFile;
  _StreamIn, _StreamOut: TStringStream;
  _Str,
  _StrInBase64: string;
begin
  _StrInBase64 := ''; //aqui entra a string em base 64
  _StreamIn  := TStringStream.Create(_StrInBase64);
  _StreamOut := TStringStream.create;

  try
    TNetEncoding.Base64.Decode(_StreamIn, _StreamOut); //System.NetEncoding
    _Str := _StreamOut.DataString;
  finally
    _StreamOut.free;
    _StreamIn.Free;
  end;

  AssignFile(_file, 'C:\Work\filosoft.png'); //System
  Rewrite(_file);

  Writeln(_file, _Str);

  CloseFile(_file);
end;

procedure TDefaultForm.btnPastasDiretoriosClick(Sender: TObject);
var
  _PathFicheiroDest, _PathFicheiroOrig: string;
  _FicheiroDest, _Path: string;
begin
  //uses fsFuncsFile
  _Path := GetSystemPath(sysTempPath); //fsFuncsFile - pasta System windows
  _Path := GetSysTempPathFILOSOFT(); //fsFuncsFile - pasta temporário do windows

  _PathFicheiroDest := IncludeTrailingPathDelimiter(_PathFicheiroDest);

  if ExtractFileName(_PathFicheiroDest)='' then //se for só directorio retorna vazio.
  begin
    _PathFicheiroDest := ExtractFileName(_PathFicheiroOrig);
    _FicheiroDest     := Copy(_PathFicheiroDest,1,length(_PathFicheiroDest)-4)+'_sign'+ExtractFileExt(_PathFicheiroOrig);
    fFicheiroDest     := _FicheiroDest;
  end;
end;

function TDefaultForm.getSaveDialog:string;
var
  SaveDialog2: TSaveDialog;
begin
  result := '';
  SaveDialog2:= TSaveDialog.Create(nil);
  SaveDialog2.DefaultExt := 'pdf';
  SaveDialog2.Filter     := 'Ficheiros PDF|*.pdf';
  try
    if SaveDialog2.Execute() then
      Result := SaveDialog2.FileName;
  finally
    SaveDialog2.Free;
  end;
end;

procedure TDefaultForm.cxButton12Click(Sender: TObject);
begin
  getSaveDialog();
end;

procedure TDefaultForm.cxButton13Click(Sender: TObject);
var
  MyCurrentSession: TDSSession;  //Datasnap.DSSession;
begin
  MyCurrentSession := TDSSessionManager.Instance.GetThreadSession;

  //ControlProcessoPorSessao(MyCurrentSession.SessionName);

  TDSSessionManager.Instance.ForEachSession(
    procedure(const Session: TDSSession)
    begin
      // Este procedimento será chamado para cada sessão no TDSSessionManager
      if (Session.GetData('IDRETEA') <> '') and (MyCurrentSession.SessionName <> Session.SessionName) then
        raise Exception.Create('Server busy. Try again later.');
    end);

  MyCurrentSession.PutData('IDRETEA', 'busy');

  ///**processo....
  MyCurrentSession.PutData('IDRETEA', ''); //despois que terminar o processo libera
end;

procedure TDefaultForm.cxButton14Click(Sender: TObject);
begin
  {$if defined(ABCDFGHIJLM_TESTE)}
    FDMemTable1.DisableControls;
  {$ifend}
end;

procedure TDefaultForm.btnSetRangeClick(Sender: TObject);
var
  _Inicio, _Fim, _dt1, _dt2 : Integer;
begin
   FDMemTable1.DisableControls;
   FDMemTable1.IndexName := 'PorData'; //
   FDMemTable1.SetRange([_Inicio,_dt1],[_Fim_,_dt2]);

   FDMemTable1.CancelRange;
end;

procedure TDefaultForm.btnMontaSQLClick(Sender: TObject);
var Query: TDBISAMQuery;
Resultado: string;
begin
  ///Pegar do tblArquivosON o  idCdpAtribuicao
  try
    Query:=DBISAM_CreateQuery(DM.TblEmpresas);
    Query.SQL.Add(Format('Select * From %s t, %s at ',[DM.TblEmpresas.TableName, DM.TblEmpresas.TableName]));
    Query.SQL.Add(Format('Where t.idCdpAtribuicao=at.idCdpAtribuicao AND at.idCdpAtribuicao=%s',[QuotedStr('5')]));
    Query.Open;
    if Query.RecordCount>0 then
      Resultado := Query.fieldByName('idCdpAtribuicao').AsString;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TDefaultForm.btnNovaSessaoAnoClick(Sender: TObject);
var
  tblTabela: TDBISAMTable;
begin
  //**Cria uma sessão da tabela anual;
  //fsFuncsDM.CreateEmpTempTable(tblTabela,cbeAno.Value);
  tblTabela := CreateEmpTempTable(tblTabela, 2023);  //fsFuncsDM
end;

procedure TDefaultForm.OpenMemoriaTerceiros(var Mem: TDBISAMTable);
begin
  with Mem do
  begin
    Close;
    if Exists then
      DeleteTable;
    DatabaseName := GetSysTempPathFILOSOFT; //fsFuncsFile; GetSystemPath(sysTempPath);
    TableName    := GetUniqueFileName(DatabaseName);
    if Exists then
      DeleteTable;

    FieldDefs.Clear;
    FieldDefs.Add('Id', ftAutoInc, 0,False);
    FieldDefs.Add('Conta', ftString, 18,False);
    FieldDefs.Add('AnoAquis', ftInteger, 0,False);
    FieldDefs.Add('Taxa', ftFloat, 0,False);
    FieldDefs.Add('Aquis', ftCurrency, 0,False);

    //**Index
    IndexDefs.Clear;
    IndexDefs.Add('','Id',[ixPrimary,ixUnique]);
    IndexDefs.Add('porGrupo','usado;CodTabela;CodDivisao;CodGrupo;Grupo;AnoInicio',[ixCaseInsensitive]);
    CreateTable;
    Open;
  end;
end;

procedure TDefaultForm.btnMemDbIsamClick(Sender: TObject);
begin
  //**É necessário criar a função para a temporária
  OpenMemoriaTerceiros(MemMap);
  //**É necessário criar a função para a temporária
end;

procedure TDefaultForm.btnChecarNIFClick(Sender: TObject);
begin
  {$if defined(ABCDFGHIJLM_TESTE)}
  CheckFiscal(edtNif.Text);  //fsFuncsCheck
  {$ifend}
end;



procedure TDefaultForm.btnCreateFilosoftClick(Sender: TObject);
begin
  /// O exmplo está nesse próprio formulário - pegue de lá.
  TDefaultForm.Create(Self,'');
end;

procedure TDefaultForm.btnCreateTableClick(Sender: TObject);
begin
  {$if defined(ABCDFGHIJLM_TESTE)}
  //uDataModulo; //chama o comando
  DMA.openArtigos(DMA.Artigos,doRebuild);
  DMA.openArtArm(DMA.ArtiArma,doRebuild);
  DMA.openArtAcum(DMA.tblArtiAcum,doRebuild);
  with aTable do begin
     FieldDefs.Clear;
     FieldDefs.Add('Armazem'       ,ftString, 3,False);    // Código de armazém
     FieldDefs.Add('Codigo'        ,ftString,20,False);    // Código Interno
     FieldDefs.Add('Lote'          ,ftString,20,False);    //
     FieldDefs.Add('Tamanho'       ,ftString, 6,False);    //
     FieldDefs.Add('Existencia'    ,ftFloat,  0,False);    //
     FieldDefs.Add('Existencia2'   ,ftFloat,  0,False);    // (reservado)

     IndexDefs.Clear;
     IndexDefs.Add('','Armazem;Codigo;Lote;Tamanho',[ixPrimary,ixCaseInsensitive]);
     //Só tem um index....
  end;

  //DMA = uDataSTK


  //openArtAcum

  {$ifend}
end;

procedure TDefaultForm.btnDecryptClick(Sender: TObject);
var
  NumSerie: integer;
  username, Password: string;
  ENCRYPT_KEY: word;
begin
  //A chave da criptografia pelo número de série.
  NumSerie := StrToIntDef(Copy(DM.Licenca.Serial,6,6),ApplicationNum); //**fsAppInfo . ApplicationNum

  username := DM.Firma.ReadString(ApplicationSettings.AppSection,'UserName',''); //**fsApplicationConfig.ApplicationSettings.AppSection
  Password := DM.Firma.ReadString(ApplicationSettings.AppSection,'Password','');

  //ufsEncrypt.Decrypt(Password,1, NumSerie); //ufsEncrypt


  //******************************************
  // DECRYPT KEY
  //******************************************
  ENCRYPT_KEY := 8977;
  Password    := DM.Firma.ReadString(ApplicationSettings.AppSection,'Password','');

  //ufsEncrypt.Encrypt(Password, ENCRYPT_KEY)


  //******************************************
  // DECRYPT KEY
  //******************************************
  ENCRYPT_KEY := 8977;
  Password    := DM.Firma.ReadString(ApplicationSettings.AppSection,'Password','');

  //ufsEncrypt.Decrypt(Password, ENCRYPT_KEY);

end;

procedure TDefaultForm.cxButton15Click(Sender: TObject);
begin
   //Os repositórios utilizam o componente TcxDBImageComboBox
  cbxTipoCombustivel.RepositoryItem := cxEditRepository1TipoCombustivel;
end;

procedure TDefaultForm.cxButton16Click(Sender: TObject);
begin
  RedrawWindow(DefaultForm.ClientHandle,nil,0,RDW_ERASE or RDW_INVALIDATE);
end;


procedure TDefaultForm.cxButton18Click(Sender: TObject);
var
  JSONArrayLinhas: TJSONArray; //System.JSON;

  JSONObjToArrayLinhas, //Objeto do tipo array
  JSONObject: TJSONObject;
begin

  try
    JSONObjToArrayLinhas := TJSONObject.Create; //**Esse objeto criado para o Array de objetos  "JSONArrayLinhas"
    JSONObjToArrayLinhas.AddPair('NumAuto', 1);
    JSONObjToArrayLinhas.AddPair('Armazem', '001');
    JSONObjToArrayLinhas.AddPair('CodItem', '041386');
    JSONObjToArrayLinhas.AddPair('Descricao', 'GASÓLEO RODOVIARIO');
    JSONObjToArrayLinhas.AddPair('Marca', 'CEPSA');
    JSONObjToArrayLinhas.AddPair('Texto', 'GASÓLEO RODOVIARIO');

    JSONArrayLinhas  := TJSONArray.Create; //nivel 2   - um array de objetos.
    JSONArrayLinhas.AddElement(JSONObjFromArrayLinhas);

    JSONObjToArrayLinhas := TJSONObject.Create;
    JSONObjToArrayLinhas.AddPair('NumAuto', 2);
    JSONObjToArrayLinhas.AddPair('Armazem', '001');
    JSONObjToArrayLinhas.AddPair('CodItem', '055666');
    JSONObjToArrayLinhas.AddPair('Descricao', 'CIGARRO');
    JSONObjToArrayLinhas.AddPair('Marca', 'MALBORO');
    JSONObjToArrayLinhas.AddPair('Texto', 'CIGARRO');

    JSONArrayLinhas.AddElement(JSONObjFromArrayLinhas);

    //Criar o nivel 2
    JSONObject := TJSONObject.Create;
    JSONObject.AddPair('Tipo', 'FT');
    JSONObject.AddPair('Serie', '01');
    JSONObject.AddPair('Numero', '1');
    JSONObject.AddPair('Descricao', 'Fatura');
    JSONObject.AddPair('Data', '31/01/2024');
    JSONObject.AddPair('Utilizador', '1');

    JSONObject.AddPair('TipoTerceiro', 'C');
    JSONObject.AddPair('Terceiro', '135');
    JSONObject.AddPair('Prefixo', 'PT');
    JSONObject.AddPair('Fiscal', '503293695');

    JSONObject.AddPair('Nome', 'EDP - GESTÃO DA PRODUÇÃO DE ENERGIA S.A.');
    JSONObject.AddPair('Morada', 'Av. José Malhoa, Lote 4-13');
    JSONObject.AddPair('Localidade', 'Lisboa');
    JSONObject.AddPair('Postal', '1070-157');

    JSONObject.AddPair('Transp', 'Posto CEPSA São João da Pesqueira');
    JSONObject.AddPair('Desc_Nome', 'EDP - GESTÃO DA PRODUÇÃO DE ENERGIA S.A.');
    JSONObject.AddPair('Desc_Morada', 'Av. José Malhoa, Lote 4-13');
    JSONObject.AddPair('Desc_Localidade', 'Lisboa');

    JSONObject.AddPair('Desc_Postal', '1070-157 Lisboa');
    JSONObject.AddPair('Carg_Morada', 'Av. Marques de Soveral, n.69');
    JSONObject.AddPair('Carg_Data', '31/01/2024');
    JSONObject.AddPair('Carg_Hora', '13:26:00');

    JSONObject.AddPair('Portes_incl', 'S');
    JSONObject.AddPair('Reten_sinal', false);
    JSONObject.AddPair('Total', 197);
    JSONObject.AddPair('Iliquido', 160.16);

    JSONObject.AddPair('oTipo', 'FG');
    JSONObject.AddPair('oSerie', 'ZZ');
    JSONObject.AddPair('oNumero', 1);
    JSONObject.AddPair('PassivoIVA', true);

    JSONObject.AddPair('Desc_Prefixo', 'PT');
    JSONObject.AddPair('Carg_Localidade', 'São João da Pesqueira');
    JSONObject.AddPair('Carg_Postal', '5130-321');
    JSONObject.AddPair('Carg_Pais', 'Portugal');
    JSONObject.AddPair('Carg_Prefixo', 'PT');

    JSONObject.AddPair('Linhas', JSONArrayLinhas);

    //adiciono a classe 2 na classe 1
    aJSONObjMain := TJSONObject.Create;
    aJSONObjMain.AddPair('Documento', JSONObject);

  finally
    Result := aJSONObjMain.ToString;
  end

end;

procedure TDefaultForm.cxButton19Click(Sender: TObject);
begin
   with aTable do begin
      FieldDefs.Clear;
      FieldDefs.Add('Codigo'       ,ftString   ,20,False);
      FieldDefs.Add('Descricao'    ,ftString   ,80,False);     // 40->80 (versao 8)
      FieldDefs.Add('Valor'        ,ftCurrency , 0,False);     //
      FieldDefs.Add('CodIVA'       ,ftString   , 2,False);     // Codigo da tabela de IVA
      FieldDefs.Add('IVAIncluido'  ,ftString   , 1,False);     // (S/N)
      FieldDefs.Add('Taxa_IRS'     ,ftFloat    , 0,False);     //
      FieldDefs.Add('Ret_IRS'      ,ftBoolean  , 0,False);     //
      FieldDefs.Add('Familia'      ,ftString   , 8,False);     // Codigo da tabela de Familias
      FieldDefs.Add('Tipo'         ,ftString   , 2,False);     // Codigo da tabela de Tipos
      FieldDefs.Add('Sinal'        ,ftString   , 1,False);     // Debito/Credito
      FieldDefs.Add('Unidade'      ,ftString   , 3,False);     // Unidade (opcional)
      FieldDefs.Add('Ecotaxa'      ,ftBoolean  , 0,False);     //
      FieldDefs.Add('FamiliaSub'   ,ftString   , 8,False);     // Opcional apenas Gestor.32

      // LC (1510)
      FieldDefs.Add('Custo_indicado'  ,ftCurrency,0,False);    // custo arbitário (editável)  CUSTO PADRÃO

      // LC 20070119
      FieldDefs.Add('Valor2'        ,ftCurrency , 0,False);     //
      FieldDefs.Add('Valor3'        ,ftCurrency , 0,False);     //

      // LC 20120808 novos campos versao 6
      FieldDefs.Add('Codigo2'       ,ftString,20,False);  // Codigo livre para relação com outras BD
      FieldDefs.Add('Activo'        ,ftBoolean,0,False);    // (S/N). se TRUE é inativo
      FieldDefs.Add('Grupo'         ,ftString, 4,False);    // (reservado)
      FieldDefs.Add('Marca'         ,ftString,40,False);    //

      FieldDefs.Add('TimeStpCriacao'    ,ftDateTime,0,False); //
      FieldDefs.Add('TimeStpUltAlt'     ,ftDateTime,0,False); //
      FieldDefs.Add('UtilizadorCriacao' ,ftString,8,False);
      FieldDefs.Add('UtilizadorUltAlt'  ,ftString,8,False);
      FieldDefs.Add('Tags'              ,ftString,80,False);  // Tags - para classificação livre
      FieldDefs.Add('CodigoEXT'         ,ftString,25,False);  // Codigo livre para relação com outras BD

      // Versao 7
      FieldDefs.Add('ProductType'       ,ftString,1,False);   // P-Produto S-Serviços O-Outros I-Impostos
      FieldDefs.Add('Pontos'            ,ftFloat,0,False);    // Pontos
      FieldDefs.Add('PercPontos'        ,ftFloat,0,False);    // Percentagem para pontos

      // Cores Botao
      FieldDefs.Add('BtnColor'    ,ftInteger, 0,False);   // Cor de fundo do painel (botão)
      FieldDefs.Add('LblTextColor',ftInteger, 0,False);   // Cor do Texto da Label (0=Default) // Tamanho da font da label deve usar cfg geral
      FieldDefs.Add('LblBckgColor',ftInteger, 0,False);   // Cor do Fundo da Label (0=Default)
      FieldDefs.Add('GUID'        ,ftString,36,False);

      // LC 20130829 (versao 8)
      FieldDefs.Add('Ret_IS'      ,ftBoolean  , 0,False);     //
      FieldDefs.Add('Taxa_IS'     ,ftFloat    , 0,False);     //

      // LC 20140401 (versao 9)
      FieldDefs.Add('Area'              ,ftString,8,False);     // Area de negocio
      FieldDefs.Add('NoDesconto'        ,ftString,1,False);     // (S/N). // branco NAO

      // LC 20150401 (versao 10)
      FieldDefs.Add('CCusto'         ,ftString,12,False);     // Codigo de Centro Custo a usar neste documento
      FieldDefs.Add('Reservado'      ,ftString,1,False);      // (S/N). // branco NAO

      // LC 20200403 (versao 11)
      FieldDefs.Add('Desconto'       ,ftFloat,0,False);       // Percentagem desconto excepcional

      IndexDefs.Clear;
      IndexDefs.Add('','Codigo',[ixPrimary,ixCaseInsensitive]);
      IndexDefs.Add('porNome','Descricao',[ixCaseInsensitive]);
      IndexDefs.Add('porFamilia','Familia;Codigo',[ixCaseInsensitive]);
      IndexDefs.Add('PorDesc','Descricao',[ixCaseInsensitive]);
      IndexDefs.Add('PorCod2','Codigo2',[ixCaseInsensitive]);
      IndexDefs.Add('PorMarca','Marca',[ixCaseInsensitive]);

      Result:=OpenTable(aTable,DBISAMVERS,11,'Textos',doRebuild);
   end;
end;

procedure TDefaultForm.btnJsonSimplesClick(Sender: TObject);
var _ObjMain, _ObjArtigo: TJSONObject; //System.JSON;
  _JsonString, _codigo: string;
begin
  _JsonString  := '{"codigo":"", "familia":"", "tipo":"01","descricao":"REVIGRES", "marca":"ANEL BORRACHA"}';

  _ObjMain  := TJSONObject.ParseJSONValue(  TEncoding.ASCII.GetBytes( aJsonString ) ,0) as TJSONObject;
  try
  if _ObjMain.GetValue('codigo')<>nil then
    if _ObjMain.GetValue('codigo').Value<>'' then
      _codigo := _ObjMain.GetValue('codigo').Value;
  finally
    _ObjMain.Free;
  end;

  _JsonString  := '{"Artigo":{"Codigo":"", "familia":"", "tipo":"01","descricao":"REVIGRES", "marca":"ANEL BORRACHA"}}';

  _ObjMain := TJSONObject.ParseJSONValue(  TEncoding.ASCII.GetBytes( aJsonString ) ,0) as TJSONObject;
  try
    //1º maneira de ler o objeto do Artigo
    _ObjArtigo  := _ObjMain.GetValue('Artigo') as TJSONObject;
    _ObjArtigo.GetValue('Codigo').Value;

    //2º maneira de ler o objeto do Artigo
    TJSONObject(_ObjMain.GetValue('Artigo')).GetValue('Codigo').Value;
  finally
    _ObjMain.Free;
  end;
end;

function JSONValido(aJsonString: string): Boolean;
var
  vJSONBytes: TBytes;  //System
  vJSONScenario: TJSONValue; //System.JSON
begin
  vJSONBytes := BytesOf(aJsonString);
  vJSONScenario := TJSONObject.ParseJSONValue(vJSONBytes, 0);
  result := vJSONScenario <> nil;
end;

procedure TDefaultForm.btnJSONValidadeClick(Sender: TObject);
var
  _JsonString: string;
begin
  _JsonString := '{"Constante":20,"Descricao":"Teste do Eliomar"';

  if not JsonValido(_JsonString) then
    showmessage('Json Invalido!')
  else
    showmessage('Json Valido!')
end;

procedure TDefaultForm.cxButton1Click(Sender: TObject);
var
  ExecutaAfterScroll: TExecutaAfterScrollContexto;
  TerminateProcess: TTerminateContexto;
begin
  ExecutaAfterScroll();
end;

procedure TDefaultForm.btnVerAntesClick(Sender: TObject);
begin
  carregaDados;
  ConfigReport(RpListaTabela);
  RpListaTabela.ShowPrintDialog := True;
  RpListaTabela.DeviceType      := 'Screen';
  RpListaTabela.Print;
  RpListaTabela.ShowPrintDialog := False;
end;

procedure TDefaultForm.btnMessageDlgExClick(Sender: TObject);
var
  contador: integer;
  sLineBreak: string;
begin
  //uses uDialogs;

  //**Confirmações com sucesso
  MessageDlgEx(#13'Associação da imagem bem sucedida.',mtInformation,[mbOK],0);
  MessageDlgEx(#13+'Ficheiro criado com sucesso.',mtInformation,[mbOK],0);

  //**Existentes
  MessageDlgEx('Documento desta serie/número já existente neste terceiro.', mtWarning, [mbOK], 0);
  MessageDlgEx('O Documento indicado já existe.', mtError, [mbOK], 0);
  //Se existe registros relacionados
  MessageDlgEx('ATENÇÃO'#10'Existem documentos desta série.',mtConfirmation,[mbOk],0);

  //**Valida Senhas
  MessageDlgEx('A senha está incorreta.', mtInformation, [mbOK], 0);
  MessageDlgEx('A senhas e confirmação são diferentes.', mtInformation, [mbOK], 0);
  MessageDlgEx('Utilizador Inválido', mtError, [mbOK], 0);

  //Registros mal indicados
  if contador=0 then
    MessageDlgEx('Não foram encontradas contas para abrir.', mtInformation, [mbOK], 0);
  MessageDlgEx('Não foram marcados documentos para assinar.', mtInformation, [mbOK], 0);
  MessageDlgEx('O ano indicado não existe', mtError, [mbOK], 0);

  //Busca de campo
  MessageDlgEx('Código não encontrado', mtWarning, [mbOK], 0);

  //Campo em branco
  MessageDlgEx('Tem que indicar um código', mtError, [mbOK], 0);
  MessageDlgEx('A série especificada não pode ser a vazio', mtWarning, [mbOK], 0);
  MessageDlgEx(' Codigo em branco ! ',mtError,[mbOk],0);

  //Clicar no componente para selecionar o item
  MessageDlgEx('Tem que selecionar um tipo de documento.',mtError,[mbOK],0);
  MessageDlgEx(sLineBreak+'Tem que selecionar um documento.',mtWarning,[mbOK],0);

  //Confirmações
  if MessageDlgEx(#13'Confirma eliminação da minuta ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then FDMemTable1.Delete;
  //Confirmações Apagar
  if MessageDlgEx('    ATENÇÃO'#10'Deseja apagar este registo ?',mtConfirmation,[mbNo,mbYes],0)=mrYes then FDMemTable1.Delete;
  if MessageDlgEx('Confirma eliminação do documento selecionado ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then FDMemTable1.Delete;
  if MessageDlgEx('Apaga o registo seleccionado?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then FDMemTable1.Delete;

  //Não encontra ficheiro físico
  MessageDlgEx('Ficheiro de imagem não encontrado: '+ 'nomeficheiro.bmp',mtError,[mbOK],0);

  //Outros
  MessageDlgEx('Não existem documentos por imprimir com os parâmetros especificados!', mtWarning, [mbOK], 0);
  MessageDlgEx('Código Inválido', mtError, [mbOK], 0);
end;

procedure TDefaultForm.btnDbIsamTryExceptClick(Sender: TObject);
var
  _tblDBISAMTable: TDBISAMTable;
begin
  //**Esse try é para utilizar em componente com datamodule e não para temporárias...

  _tblDBISAMTable.Append;
  _tblDBISAMTable.FieldByName('Codigo').AsInteger := 1;
  try
     _tblDBISAMTable.Post;
  except
     On E:Exception do
      begin
         DBISAMTable1.Cancel;
         DBISAMTable1.Refresh;
         Showmessage('Falhou a gravação: '+ E.Message);
         exit;
      end;
  end;

  Showmessage('Concluído com sucesso!');
end;

procedure TDefaultForm.btntblArtigoClick(Sender: TObject);
var
  _response: string;
  _Existencia: double;
begin
  {$IF DEFINED(ABCDFGHIJLM_TESTE)}
  DMWebServices.Artigos.Refresh;
  DMWebServices.Artigos.IndexName := '';
  if DMWebServices.Artigos.FindKey([Codigo]) then
  begin
    DMWebServices.tblArtiAcum.IndexName := ''; //IndexDefs.Add('','Armazem;Codigo',[ixPrimary,ixCaseInsensitive]);
    if DMWebServices.tblArtiAcum.FindKey([Armazem, Codigo]) then
    begin
      _Existencia := DMWebServices.tblArtiAcum.FieldByName('Existencia').AsFloat;
      _response   := '{"Artigo":{"Existencia":'+_Existencia+'}}';
      //_Custo_medio := DMWebServices.tblArtiAcum.FieldByName('Custo_medio').AsFloat;
    end;
  end
  else
  begin
    //***

  end;
  {$IFEND}
end;

procedure TDefaultForm.cxButton21Click(Sender: TObject);
var
  _ObjMain, _Object1 : TJSONObject; //System.JSON;
begin
  {$IF DEFINED(ABCDFGHIJLM_TESTE)}
  _Object1 := TJSONObject.Create;
  _Object1.AddPair('Arm', '04');
  _Object1.AddPair('Codigo', 'Z00005263');
  _Object1.AddPair('Data', '2024-05-01');
  _Object1.AddPair('Existencia', '0.50');

  //adiciono a classe 2 na classe 1
  _ObjMain := TJSONObject.Create;
  try
    _ObjMain.AddPair('Artigo', _Object1);
    _ObjMain.ToString;

  finally
    _ObjMain.Free;
  end;
  {$IFEND}
end;

procedure TDefaultForm.cxButton2Click(Sender: TObject);
var
  Path: string;
begin
  Path:= ExtractFilePath(ParamStr(0));
  ShellExecute(Application.Handle,nil,PChar( Path+'Ficheiro.pdf' ),nil,nil,SW_SHOWDEFAULT);
end;

procedure TDefaultForm.cxButton3Click(Sender: TObject);
Var
  _StrVar: string;
begin

  //FUNÇÃO QUE TIRA CARACTER DO INICIO E DO FIM.
  AnsiDequotedStr(_StrVar,'"'); //System.Utils
end;

procedure TDefaultForm.cxButton5Click(Sender: TObject);
begin
//   if not Assigned(PDFAssinaForm) then
//   begin
//      PDFAssinaForm:=TPDFAssinaForm.Create(Self);
//      PDFAssinaForm.FormStyle := fsMDIChild;
//   end
//   else
//   begin
//     //if (PDFAssinaForm.WindowState = wsMinimized) then
//     //  PDFAssinaForm.WindowState := wsNormal;
//     PDFAssinaForm.BringToFront;
//   end;
end;

procedure TDefaultForm.cxButton6Click(Sender: TObject);
begin
  pb.Visible   := True;
  pb.Properties.Max:=FDMemTable1.RecordCount;
  pb.Position  := 0;
  FDMemTable1.First;
  while not FDMemTable1.eof do
  begin

    pb.Position:=pb.Position+1;
    FDMemTable1.Next;
  end;
end;

procedure TDefaultForm.cxButton4Click(Sender: TObject);
var
  g: TGUID;
  GUID: string;
begin
  CreateGUID(g);            // System.SysUtils
  GUID := GUIDToString(g);  // System.SysUtils
end;

procedure TDefaultForm.btnNovaSessaoClick(Sender: TObject);
var
  _tblEscrit2: TDBISAMTable;
begin
  //uses fsFuncsDBISAM, dbisamtb;
  _tblEscrit2 := DBISAM_CreateTempTable( DM.TblEmpresas ); // DBISAM_CreateTempTable ( DM.Empresa );

  DBISAM_DestroyTempTable( _tblEscrit2 ); //fecha & destroi
end;

procedure TDefaultForm.cxButton8Click(Sender: TObject);
//uses fsConsts, fsFuncFile;
var
  id: string;
  Utilizador: string;
begin
  id := User.User_ID; //id
  Utilizador := User.User_Name; //Nome do utilizador
  //DM.UserFiloSoft; //Se é o utilizador pass + hora (somente para notários)
end;

procedure TDefaultForm.cxButton9Click(Sender: TObject);
 _fset : TFormatSettings;  //SysUtils
begin
  //CONVERSÃO DATA
  _fset:=TFormatSettings.Create;
  _fset.ShortDateFormat:='yyyy-MM-dd';
  _fset.DateSeparator:='-';
  _fset.TimeSeparator:=':';

  StrToDatetime('2025-12-01 00:00', _fset); //Estou passando para função o formato da data da string origem.

  //--FORMATOS
  FormatDateTime('dd-mm-yyyy', Date);
end;

procedure TDefaultForm.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxPageControl1.ActivePage := tabFicha; // vai para a ficha
  tabFicha.SetFocus;
end;

procedure TDefaultForm.DsTabelaStateChange(Sender: TObject);
var
  edicao: Boolean;
begin
  if DsTabela.DataSet.Active then
  begin
    edicao := DsTabela.DataSet.State in [dsEdit, dsInsert];
    btnGravar.Enabled     := edicao;
    btnCancelar21.Enabled := edicao;
    btnApagar1.Enabled    := not edicao;
    btnEditar1.Enabled    := not edicao;
    btnNovo1.Enabled      := not edicao;
    btnImprimir1.Enabled  := not edicao;
  end;
end;

procedure TDefaultForm.ExportarlistapExcel2Click(Sender: TObject);
begin
  SaveDlg.FileName := 'Bens_'+FormatDateTime('ddmmyyyy', Date);

  if SaveDlg.Execute then
  begin
    Screen.Cursor:=crHourGlass;
    ExportGridToExcel(SaveDlg.FileName, cxGrid1);     // cxGridExportLink, dbisamlb
    Screen.Cursor:=crDefault;
    if TMenuItem(sender).Tag = 1 then
      ShellExecute(Application.Handle, PChar('open'), PChar(SaveDlg.FileName), nil, nil, SW_SHOWNORMAL);
  end;
end;


///******************************fsFuncsDBISAM****************************************/////
//function DBISAM_CreateTempTable(refTable: TDBISAMTable; checkExist : boolean=false): TDBISAMTable;
//begin
//   Result := TDBISAMTable.Create(refTable.Owner);
//   with Result do begin
//      SessionName  := refTable.SessionName;
//      DataBaseName := refTable.DataBaseName;
//      TableName    := refTable.TableName;
//      if checkExist and (not Exists) then begin
//        Result:= nil;
//        exit;
//      end;
//      Open;
//   end;
//end;
//
//function DBISAM_CreateTempTable(aPath, aTblName: string): TDBISAMTable;
//begin
//  Result := TDBISAMTable.Create(Application.MainForm);
//  with Result do begin
//    SessionName  := 'BaseSession';
////    DataBaseName := refTable.DataBaseName;
//    TableName    := IncludeTrailingPathDelimiter(aPath)+aTblName;
//    if (not Exists) then
//      Result:= nil
//    else
//      Open;
//  end;
//end;

procedure DBISAM_DestroyTempTable(var aTable: TDBISAMTable);
begin
  if Assigned(aTable) then
  try
    if aTable.Active then begin
      if (aTable.State in [dsEdit, dsInsert]) then
        aTable.Cancel;
      aTable.Close;
    end;
    if (UpperCase(aTable.DataBaseName) = 'MEMORY') and aTable.Exists then
    try
      aTable.DeleteTable;
    except end;
    FreeAndNil(aTable);
  except
    on E: Exception do
      aTable := nil;
  end;
end;


end.
