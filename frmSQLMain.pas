unit frmSQLMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Data.DB, dbisamtb, cxMaskEdit, cxDropDownEdit,
  cxLabel, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList,
  Datasnap.DBClient, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.ComCtrls, cxTreeView,
  dxBarBuiltInMenu, cxPC, Vcl.Buttons, CRGrid, dxSkinsCore,
  dxSkinsDefaultPainters, cxSplitter, RxPlacemnt;

type
  TSQLForm = class(TForm)
    DBISAMDatabase1: TDBISAMDatabase;
    DBISAMTable1: TDBISAMTable;
    BaseSession: TDBISAMSession;
    DBISAMQuery1: TDBISAMQuery;
    DataSource1: TDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    cxLabel2: TcxLabel;
    cdsConfigBase: TClientDataSet;
    cdsConfigBaseCodigo: TIntegerField;
    cdsConfigBaseBase: TStringField;
    cdsConfigBasePath: TStringField;
    cdsConfigBasePai: TStringField;
    DBISAMQuery2: TDBISAMQuery;
    DataSource2: TDataSource;
    DBISAMQuery3: TDBISAMQuery;
    DataSource3: TDataSource;
    TreeView1: TTreeView;
    DBISAMDatabase2: TDBISAMDatabase;
    DBISAMDatabase3: TDBISAMDatabase;
    DBISAMDatabase0: TDBISAMDatabase;
    QAux1: TDBISAMQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dsCampos1: TDataSource;
    cdsCampos1: TClientDataSet;
    cdsCampos1Codigo: TIntegerField;
    cdsCampos1Nome: TStringField;
    cdsCampos1Tamanho: TIntegerField;
    DBGrid4: TDBGrid;
    cdsCampos1Tipo: TStringField;
    cdsCampos2: TClientDataSet;
    dsCampos2: TDataSource;
    cdsCampos3: TClientDataSet;
    dsCampos3: TDataSource;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    cdsCampos2Codigo: TIntegerField;
    cdsCampos2Nome: TStringField;
    cdsCampos2Tamanho: TIntegerField;
    cdsCampos2Tipo: TStringField;
    cdsCampos3Codigo: TIntegerField;
    cdsCampos3Nome: TStringField;
    cdsCampos3Tamanho: TIntegerField;
    cdsCampos3Tipo: TStringField;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Salvar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    cdsConfiguracao: TClientDataSet;
    cdsConfiguracaoBase: TStringField;
    cdsConfiguracaoDirectory: TStringField;
    cdsConfiguracaotabela: TStringField;
    cdsConfiguracaoSQL: TMemoField;
    cdsConfiguracaoComCampos: TBooleanField;
    cdsConfiguracaonumbase: TIntegerField;
    DScdsConfiguracao: TDataSource;
    DBISAMTable2: TDBISAMTable;
    DBISAMQuery4: TDBISAMQuery;
    cxTab3: TcxTabControl;
    labBase3: TcxLabel;
    DBGrid3: TDBGrid;
    cxTab1_2: TcxTabControl;
    cxTab1: TcxTabControl;
    DBGrid1: TDBGrid;
    labBase1: TcxLabel;
    cxTab2: TcxTabControl;
    DBGrid2: TDBGrid;
    labBase2: TcxLabel;
    cxSplitter2: TcxSplitter;
    cxSplitter1: TcxSplitter;
    Storage: TFormStorage;
    lab1: TcxLabel;
    lab2: TcxLabel;
    lab3: TcxLabel;
    cxTabCab: TcxTabControl;
    cbxTabela: TcxComboBox;
    cxLabel1: TcxLabel;
    cbxBase: TcxComboBox;
    cxLabel3: TcxLabel;
    brnCadastroBases: TButton;
    btnExecutar: TcxButton;
    cbCampo: TCheckBox;
    btnMostraCampos: TBitBtn;
    memSQL1: TcxMemo;
    cxSplitter3: TcxSplitter;
    cxButton1: TcxButton;
    Open1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveAs1: TMenuItem;
    SaveDialog1: TSaveDialog;
    cxButton3: TcxButton;
    PopupMenu1: TPopupMenu;
    NtfEsc11: TMenuItem;
    NtfEsc21: TMenuItem;
    FindKey1: TMenuItem;
    FindKey2: TMenuItem;
    N2: TMenuItem;
    OpenDefault1: TMenuItem;
    Resetnajabela1: TMenuItem;
    memSQL2: TcxMemo;
    memSQL3: TcxMemo;
    DBGrid7: TDBGrid;
    ImageFilosoft: TImage;
    btnAdd: TcxButton;
    btnClear: TcxButton;
    btnAdd2: TcxButton;
    btnClear2: TcxButton;
    btnClear3: TcxButton;
    btnAdd3: TcxButton;
    ckbBloqueado3: TCheckBox;
    ckbBloqueado2: TCheckBox;
    ckbBloqueado1: TCheckBox;
    cdsConfiguracaockbBloqueado1: TBooleanField;
    cdsConfiguracaockbBloqueado3: TBooleanField;
    cdsConfiguracaockbBloqueado2: TBooleanField;
    DBISAMQuery5: TDBISAMQuery;
    Button1: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure brnCadastroBasesClick(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnMostraCamposClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure memSQL1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnClearClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure cbxBasePropertiesChange(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure OpenDefault1Click(Sender: TObject);
    procedure Resetnajabela1Click(Sender: TObject);
    procedure btnAdd2Click(Sender: TObject);
    procedure btnAdd3Click(Sender: TObject);
    procedure btnClear2Click(Sender: TObject);
    procedure ckbBloqueado3Click(Sender: TObject);
    procedure ckbBloqueado2Click(Sender: TObject);
    procedure ckbBloqueado1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    fIndex: Integer;
    Procedure carregaListaDaBase(base:String);//carrega a os nomes das bases no combobox
    procedure carregaTabela(psTabela, psDirectory: String); //carrega od nomes das tabelas no combobox

    function getTabelaSelect(sql:string): string;
    procedure LimparControlos();
  public
    { Public declarations }
    Procedure MostrasCampos1();

    Procedure definiConexaoPara3Bases(psDirectory: String;pbNumBase: integer);
    procedure AdicionarFilho(const aPai: integer; const aNoPai: TTreeNode);
    procedure VerificarTipo(aTField: TField);
    Procedure OpenTempConfig(pPathFicheiro:string);
    procedure CarregarConfiguracaoNaEcra(pPathCaminho:string);
    procedure SaveNameTabelaConfig(pPathFicheiro:string);
  end;

var
  SQLForm: TSQLForm;


implementation

{$R *.dfm}

uses frmBaseForm, frmScriptDelphi, DBCommon, frmMemoForm;


procedure TSQLForm.FormCreate(Sender: TObject);
begin
  Storage.Active      := False;
  Storage.UseRegistry := false;
  Storage.IniFileName :=  ExtractFilePath(ParamStr(0))+'storage.ini';
  Storage.IniSection  := Name;
  Storage.Active      := True;
end;

procedure TSQLForm.FormResize(Sender: TObject);
begin
  btnAdd.Left        := memSQL1.Left;
  ckbBloqueado1.Left := memSQL1.Left+88;
  btnClear.Left      := memSQL1.Left+41;

  btnAdd2.Left        := memSQL2.Left;
  ckbBloqueado2.Left := memSQL2.Left+88;
  btnClear2.Left      := memSQL2.Left+41;

  btnAdd3.Left        := memSQL3.Left;
  ckbBloqueado3.Left := memSQL3.Left+88;
  btnClear3.Left      := memSQL3.Left+41;
end;

procedure TSQLForm.FormShow(Sender: TObject);
var
 _caminho: string;
begin
  DBGrid7.Height := 114;
  DBGrid7.Width  := 882;

  LimparControlos();

  _caminho := ExtractFilePath(ParamStr(0))+'\Config.xml';
  CarregarConfiguracaoNaEcra(_caminho);

  _caminho := ExtractFilePath(ParamStr(0))+'\filosoft.png';
  if FileExists(_caminho) then
      ImageFilosoft.Picture.LoadFromFile(_caminho);

  btnExecutar.Click;
end;

procedure TSQLForm.CarregarConfiguracaoNaEcra(pPathCaminho:string);
begin
  OpenTempConfig(pPathCaminho);
  carregaListaDaBase(cdsConfiguracaoBase.AsString);

  cxPageControl1.ActivePageIndex := 0;
  //carregar o ultimo salvo
  if cdsConfiguracao.RecordCount>0 then
  begin
    cbxBase.Properties.OnChange := nil;
    cdsConfiguracao.First;
    while not cdsConfiguracao.Eof do
    begin
      if cdsConfiguracaonumbase.AsInteger=1 then
      begin
        memSQL1.Lines.Clear;
        memSQL1.Lines.Add(trim(cdsConfiguracao.FieldByName('SQL').asString));
      end
      else
      if cdsConfiguracaonumbase.AsInteger=2 then
      begin
        memSQL2.Lines.Clear;
        memSQL2.Lines.Add(trim(cdsConfiguracao.FieldByName('SQL').asString));
      end
      else
      if cdsConfiguracaonumbase.AsInteger=3 then
      begin
        memSQL3.Lines.Clear;
        memSQL3.Lines.Add(trim(cdsConfiguracao.FieldByName('SQL').asString));
      end;

      if DirectoryExists(cdsConfiguracaoDirectory.AsString) then
      begin
        carregaTabela(cdsConfiguracaotabela.AsString, cdsConfiguracaoDirectory.AsString);
        definiConexaoPara3Bases(cdsConfiguracaoDirectory.AsString, cdsConfiguracao.RecNo);
      end;
      cdsConfiguracao.Next;
    end;
    ckbBloqueado1.Checked := cdsConfiguracaockbBloqueado1.AsBoolean;
    ckbBloqueado2.Checked := cdsConfiguracaockbBloqueado2.AsBoolean;
    ckbBloqueado3.Checked := cdsConfiguracaockbBloqueado3.AsBoolean;

    cbxBase.Properties.OnChange := cbxBasePropertiesChange;
  end;
end;

procedure TSQLForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //asdasdas
  if Application.MessageBox('Deseja gravar a base selecionada e os comandos SQL.','Filosoft', MB_ICONQUESTION+MB_YESNO)=idYes then
    Salvar1.Click;
end;

procedure TSQLForm.Action1Execute(Sender: TObject);
begin
  btnExecutar.Click;
end;

procedure TSQLForm.btnMostraCamposClick(Sender: TObject);
var
 i: integer;
begin
  cdsCampos1.EmptyDataSet;

  for i := 0 to DBISAMQuery1.FieldCount-1 do
  begin
    cdsCampos1.Append;
    cdsCampos1Codigo.asInteger := i+1;
    cdsCampos1Nome.AsString    := DBISAMQuery1.Fields[i].FullName;
    cdsCampos1Tamanho.AsInteger:= DBISAMQuery1.Fields[i].Size;
    cdsCampos1Tipo.AsString    := DBISAMQuery1.Fields[i].ClassName;
    cdsCampos1.Post;
  end;


  cdsCampos2.EmptyDataSet;
  for i := 0 to DBISAMQuery2.FieldCount-1 do
  begin
    cdsCampos2.Append;
    cdsCampos2Codigo.asInteger := i+1;
    cdsCampos2Nome.AsString    := DBISAMQuery2.Fields[i].FullName;
    cdsCampos2Tamanho.AsInteger:= DBISAMQuery2.Fields[i].Size;
    cdsCampos2Tipo.AsString    := DBISAMQuery2.Fields[i].ClassName;
    cdsCampos2.Post;
  end;

  cdsCampos3.EmptyDataSet;
  for i := 0 to DBISAMQuery3.FieldCount-1 do
  begin
    cdsCampos3.Append;
    cdsCampos3Codigo.asInteger := i+1;
    cdsCampos3Nome.AsString    := DBISAMQuery3.Fields[i].FullName;
    cdsCampos3Tamanho.AsInteger:= DBISAMQuery3.Fields[i].Size;
    cdsCampos3Tipo.AsString    := DBISAMQuery3.Fields[i].ClassName;
    cdsCampos3.Post;
  end;
  cdsCampos1.First;
  cdsCampos2.First;
  cdsCampos3.First;
end;

Procedure TSQLForm.MostrasCampos1();
var
 i,j, conta: integer;
 sLine,lTexto: String;
begin
  btnExecutar.Click;
  cdsCampos1.EmptyDataSet;

   conta := 0;
   for i := 0 to memSQL1.Lines.Count-1 do
   begin
     lTexto:= '';
     sLine := trim(memSQL1.Lines[i]);
     sLine := copy(sLine,8,Length(sLine)-6);
     for j := 1 to Length(sLine) do
       if (sLine[j]=' ') and (Length(lTexto)=0) then
         lTexto := ''
       else
       if (sLine[j]=' ') and (Length(lTexto)>0) then
       begin
         if uppercase(trim(lTexto))<>'FROM' then
         begin
           cdsCampos1.Append;
           cdsCampos1Codigo.asInteger := conta+1;
           cdsCampos1Nome.AsString    := trim(lTexto);   //DBISAMQuery1.Fields[conta].FullName;
           cdsCampos1Tamanho.AsInteger:= DBISAMQuery1.Fields[conta].Size;
           cdsCampos1Tipo.AsString    := DBISAMQuery1.Fields[conta].ClassName;
           cdsCampos1.Post;

           conta := conta +1;
           lTexto := '';

         end
         else
         begin
           Showmessage('Achou o from!');
           break;
         end;
       end
       else
       if (sLine[j]<>',') then
         lTexto:= lTexto + sLine[j]
       else
       begin
         cdsCampos1.Append;
         cdsCampos1Codigo.asInteger := conta+1;
         cdsCampos1Nome.AsString    := trim(lTexto);   //DBISAMQuery1.Fields[conta].FullName;
         cdsCampos1Tamanho.AsInteger:= DBISAMQuery1.Fields[conta].Size;
         cdsCampos1Tipo.AsString    := DBISAMQuery1.Fields[conta].ClassName;
         cdsCampos1.Post;         VerificarTipo( DBISAMQuery1.Fields[conta]);

         conta := conta +1;
         lTexto := '';
       end;
   end;
end;

procedure TSQLForm.brnCadastroBasesClick(Sender: TObject);
begin
  cdsConfigBase.Active:= False;

  BaseForm:= TBaseForm.Create(self);
  BaseForm.Showmodal;
  BaseForm.Free;

  if BaseForm.Gravou then
     carregaListaDaBase('')
  else
   cdsConfigBase.Active:= true;
end;


procedure TSQLForm.Button1Click(Sender: TObject);
begin
  ScriptDelphiForm.sql := True;
  ScriptDelphiForm.ShowModal;
  if ScriptDelphiForm.consulta then
  begin
    DBISAMQuery2.Close;
    DBISAMQuery2.SQL.Clear;
    DBISAMQuery2.SQL.Add(ScriptDelphiForm.Memo1.Lines.Text);

    if copy(LowerCase(trim(ScriptDelphiForm.Memo1.Lines.Text)),1,3)='sel' then
    begin
      DBISAMQuery2.Open;
      lab2.Caption := 'Registro(s): '+inttoStr(DBISAMQuery2.RecordCount);
    end
    else
    begin
      DBISAMQuery2.ExecSQL;
      ShowMessage('Comando executado com sucesso! afetadas: '+inttoStr(DBISAMQuery2.RowsAffected));
      lab2.Caption := 'Registros afetado(s): '+inttoStr(DBISAMQuery2.RowsAffected);
    end;

  end;
end;

procedure TSQLForm.Button2Click(Sender: TObject);
var
  i: integer;
  sTipoCampo : String;
  lista: TStringList;
begin
  lista:= TStringList.Create();
  lista.Clear;
  lista.Add('uses fsFuncsFile, dbisamtb;');
  lista.Add('');
  lista.Add('procedure TForm1.OpenTempTables;');
  lista.Add('begin');
  lista.Add('  with mem_DBISAMTable do');
  lista.Add('  begin');
  lista.Add('    Close;');
  lista.Add('    if Exists then');
  lista.Add('      DeleteTable;');
  lista.Add('    Exclusive := True;');
  lista.Add('    DatabaseName := GetSystemPath(sysTempPath);');
  lista.Add('    TableName := GetUniqueFileName(DatabaseName);');
  lista.Add('    if Exists then');
  lista.Add('      DeleteTable;');

  lista.Add('  //**campos');
  lista.Add('    FieldDefs.Clear;');
  lista.Add('    FieldDefs.Add('+QuotedStr('Id')+', ftAutoInc, 0,False);');

  for i := 0 to DBISAMQuery1.FieldCount-1 do
  begin
    sTipoCampo := DBISAMQuery1.Fields[i].ClassName;
    sTipoCampo := 'ft'+copy(sTipoCampo,2, length(sTipoCampo)-6)  ; //ftString     TStringField
    lista.Add('    FieldDefs.Add('+QuotedStr(DBISAMQuery1.Fields[i].FullName) +', '+sTipoCampo+', '+inttoStr(DBISAMQuery1.Fields[i].Size)+',False);');
  end;

  lista.Add('    //**Index');
  lista.Add('    IndexDefs.Clear;');
  lista.Add('    IndexDefs.Add('+QuotedStr('')+','+QuotedStr('Id')+',[ixPrimary,ixUnique]);');
  lista.Add('    //IndexDefs.Add('+QuotedStr('PorDescricao')+','+QuotedStr('Descricao')+',[ixCaseInsensitive]);');
  lista.Add('    CreateTable;');
  lista.Add('    Open;');
  lista.Add('  end;');
  lista.Add('end;');

  ScriptDelphiForm.Memo1.Lines.Text := lista.Text;
  ScriptDelphiForm.Showmodal;

  lista.Free;
end;

procedure TSQLForm.Button3Click(Sender: TObject);
var
  i: integer;
  sTipoCampo : String;
begin
  ScriptDelphiForm.Memo1.Lines.Clear;
  ScriptDelphiForm.Memo1.Lines.Add('uses fsFuncsFile, dbisamtb;');
  ScriptDelphiForm.Memo1.Lines.Add('');
  ScriptDelphiForm.Memo1.Lines.Add('procedure TForm1.OpenTempTables;');
  ScriptDelphiForm.Memo1.Lines.Add('begin');
  ScriptDelphiForm.Memo1.Lines.Add('  with mem_DBISAMTable do');
  ScriptDelphiForm.Memo1.Lines.Add('  begin');
  ScriptDelphiForm.Memo1.Lines.Add('    Close;');
  ScriptDelphiForm.Memo1.Lines.Add('    if Exists then');
  ScriptDelphiForm.Memo1.Lines.Add('      DeleteTable;');
  ScriptDelphiForm.Memo1.Lines.Add('    Exclusive := True;');
  ScriptDelphiForm.Memo1.Lines.Add('    DatabaseName := GetSystemPath(sysTempPath);');
  ScriptDelphiForm.Memo1.Lines.Add('    TableName := GetUniqueFileName(DatabaseName);');
  ScriptDelphiForm.Memo1.Lines.Add('    if Exists then');
  ScriptDelphiForm.Memo1.Lines.Add('      DeleteTable;');

  ScriptDelphiForm.Memo1.Lines.Add('  //**campos');
  ScriptDelphiForm.Memo1.Lines.Add('    FieldDefs.Clear;');
  ScriptDelphiForm.Memo1.Lines.Add('    FieldDefs.Add('+QuotedStr('Id')+', ftAutoInc, 0,False);');

  for i := 0 to DBISAMQuery2.FieldCount-1 do
  begin
    sTipoCampo := DBISAMQuery2.Fields[i].ClassName;
    sTipoCampo := 'ft'+copy(sTipoCampo,2, length(sTipoCampo)-6)  ; //ftString     TStringField
    ScriptDelphiForm.Memo1.Lines.Add('    FieldDefs.Add('+QuotedStr(DBISAMQuery2.Fields[i].FullName) +', '+sTipoCampo+', '+inttoStr(DBISAMQuery2.Fields[i].Size)+',False);');
  end;

  ScriptDelphiForm.Memo1.Lines.Add('    //**Index');
  ScriptDelphiForm.Memo1.Lines.Add('    IndexDefs.Clear;');
  ScriptDelphiForm.Memo1.Lines.Add('    IndexDefs.Add('+QuotedStr('')+','+QuotedStr('Id')+',[ixPrimary,ixUnique]);');
  ScriptDelphiForm.Memo1.Lines.Add('    //IndexDefs.Add('+QuotedStr('PorDescricao')+','+QuotedStr('Descricao')+',[ixCaseInsensitive]);');
  ScriptDelphiForm.Memo1.Lines.Add('    CreateTable;');
  ScriptDelphiForm.Memo1.Lines.Add('    Open;');
  ScriptDelphiForm.Memo1.Lines.Add('  end;');
  ScriptDelphiForm.Memo1.Lines.Add('end;');


  ScriptDelphiForm.Showmodal;

end;

procedure TSQLForm.Button4Click(Sender: TObject);
var
  i: integer;
  sTipoCampo : String;
begin
  ScriptDelphiForm.Memo1.Lines.Clear;
  ScriptDelphiForm.Memo1.Lines.Add('uses fsFuncsFile, dbisamtb;');
  ScriptDelphiForm.Memo1.Lines.Add('');
  ScriptDelphiForm.Memo1.Lines.Add('procedure TForm1.OpenTempTables;');
  ScriptDelphiForm.Memo1.Lines.Add('begin');
  ScriptDelphiForm.Memo1.Lines.Add('  with mem_DBISAMTable do');
  ScriptDelphiForm.Memo1.Lines.Add('  begin');
  ScriptDelphiForm.Memo1.Lines.Add('    Close;');
  ScriptDelphiForm.Memo1.Lines.Add('    if Exists then');
  ScriptDelphiForm.Memo1.Lines.Add('      DeleteTable;');
  ScriptDelphiForm.Memo1.Lines.Add('    Exclusive := True;');
  ScriptDelphiForm.Memo1.Lines.Add('    DatabaseName := GetSystemPath(sysTempPath);');
  ScriptDelphiForm.Memo1.Lines.Add('    TableName := GetUniqueFileName(DatabaseName);');
  ScriptDelphiForm.Memo1.Lines.Add('    if Exists then');
  ScriptDelphiForm.Memo1.Lines.Add('      DeleteTable;');

  ScriptDelphiForm.Memo1.Lines.Add('  //**campos');
  ScriptDelphiForm.Memo1.Lines.Add('    FieldDefs.Clear;');
  ScriptDelphiForm.Memo1.Lines.Add('    FieldDefs.Add('+QuotedStr('Id')+', ftAutoInc, 0,False);');

  for i := 0 to DBISAMQuery3.FieldCount-1 do
  begin
    sTipoCampo := DBISAMQuery3.Fields[i].ClassName;
    sTipoCampo := 'ft'+copy(sTipoCampo,2, length(sTipoCampo)-6)  ; //ftString     TStringField
    ScriptDelphiForm.Memo1.Lines.Add('    FieldDefs.Add('+QuotedStr(DBISAMQuery3.Fields[i].FullName) +', '+sTipoCampo+', '+inttoStr(DBISAMQuery3.Fields[i].Size)+',False);');
  end;

  ScriptDelphiForm.Memo1.Lines.Add('    //**Index');
  ScriptDelphiForm.Memo1.Lines.Add('    IndexDefs.Clear;');
  ScriptDelphiForm.Memo1.Lines.Add('    IndexDefs.Add('+QuotedStr('')+','+QuotedStr('Id')+',[ixPrimary,ixUnique]);');
  ScriptDelphiForm.Memo1.Lines.Add('    //IndexDefs.Add('+QuotedStr('PorDescricao')+','+QuotedStr('Descricao')+',[ixCaseInsensitive]);');
  ScriptDelphiForm.Memo1.Lines.Add('    CreateTable;');
  ScriptDelphiForm.Memo1.Lines.Add('    Open;');
  ScriptDelphiForm.Memo1.Lines.Add('  end;');
  ScriptDelphiForm.Memo1.Lines.Add('end;');

  ScriptDelphiForm.Showmodal;
end;

procedure TSQLForm.Button5Click(Sender: TObject);
begin
  ScriptDelphiForm.sql := True;
  ScriptDelphiForm.ShowModal;
  if ScriptDelphiForm.consulta then
  begin
    DBISAMQuery1.Close;
    DBISAMQuery1.SQL.Clear;
    DBISAMQuery1.SQL.Add(ScriptDelphiForm.Memo1.Lines.Text);

    if copy(LowerCase(trim(ScriptDelphiForm.Memo1.Lines.Text)),1,3)='sel' then
    begin
      DBISAMQuery1.Open;
      lab2.Caption := 'Registro(s): '+inttoStr(DBISAMQuery1.RecordCount);
    end
    else
    begin
      DBISAMQuery1.ExecSQL;
      ShowMessage('Comando executado com sucesso! afetadas: '+inttoStr(DBISAMQuery1.RowsAffected));
      lab2.Caption := 'Registros afetado(s): '+inttoStr(DBISAMQuery1.RowsAffected);
    end;
  end;
end;

procedure TSQLForm.Button6Click(Sender: TObject);
begin
  ScriptDelphiForm.sql := True;
  ScriptDelphiForm.ShowModal;
  if ScriptDelphiForm.consulta then
  begin
    DBISAMQuery3.Close;
    DBISAMQuery3.SQL.Clear;
    DBISAMQuery3.SQL.Add(ScriptDelphiForm.Memo1.Lines.Text);

    if copy(LowerCase(trim(ScriptDelphiForm.Memo1.Lines.Text)),1,3)='sel' then
    begin
      DBISAMQuery3.Open;
      lab2.Caption := 'Registro(s): '+inttoStr(DBISAMQuery3.RecordCount);
    end
    else
    begin
      DBISAMQuery3.ExecSQL;
      ShowMessage('Comando executado com sucesso! afetadas: '+inttoStr(DBISAMQuery3.RowsAffected));
      lab2.Caption := 'Registros afetado(s): '+inttoStr(DBISAMQuery3.RowsAffected);
    end;
  end;
end;

procedure TSQLForm.cbxBasePropertiesChange(Sender: TObject);
begin
  cbxTabela.Text:= '';
  cdsConfigBase.Locate('base',cbxBase.Text,[]);
  carregaTabela('',cdsConfigBase.FieldByName('Path').AsString);
end;

procedure TSQLForm.ckbBloqueado1Click(Sender: TObject);
begin
  memSQL1.Enabled := not ckbBloqueado1.Checked;
end;

procedure TSQLForm.ckbBloqueado2Click(Sender: TObject);
begin
  memSQL2.Enabled := not ckbBloqueado2.Checked;
end;

procedure TSQLForm.ckbBloqueado3Click(Sender: TObject);
begin
  memSQL3.Enabled := not ckbBloqueado3.Checked;
end;

procedure TSQLForm.cxButton1Click(Sender: TObject);
begin
  if DBGrid7.Visible then
    DBGrid7.Visible := false
  else
  begin
    DBGrid7.Visible := true;
    DBGrid7.Width   := 764;
    DBGrid7.Height  := 75;
  end;
end;

procedure TSQLForm.btnAdd2Click(Sender: TObject);
var
  sCampos1: string;
  n, numBase: integer;
begin
  numBase := 2;
  if cbxTabela.Text<>'' then
  begin
    //responsável por tirar espaços em brancos erro de digitação.
    if trim(memSQL2.Lines.Text)='' then
       memSQL2.Lines.Clear;

    cdsConfigBase.Locate('base',cbxBase.EditValue,[]);

    if not cbCampo.Checked then
      sCampos1 := '*'
    else
    begin  //mostrar os campos se necessários no comando SQL.
      sCampos1 := '';
      definiConexaoPara3Bases(cdsConfigBase.FieldByName('Path').AsString, numBase);

      QAux1.Close;
      QAux1.SQL.Clear;
      QAux1.SQL.Add('Select * from '+cbxTabela.Text);
      QAux1.Open;
      for n:=0 to QAux1.FieldCount-1 do
      begin
        sCampos1 := sCampos1 + QAux1.Fields[n].FieldName + ', ';
      end;
      sCampos1 := copy(sCampos1,1,length(sCampos1)-2);
    end;
    definiConexaoPara3Bases(cdsConfigBasePath.AsString, numBase);
    memSQL2.Lines.Add('Select '+ sCampos1 +' from '+cbxTabela.Text);

    //salvar nas configurações
    if cdsConfiguracao.Locate('numbase', numBase,[]) then
      cdsConfiguracao.Edit
    else
    begin
      cdsConfiguracao.Append();
      cdsConfiguracaonumbase.asInteger := numBase;
    end;
    cdsConfiguracaoBase.AsString       := cbxBase.Text;
    cdsConfiguracaotabela.AsString     := cbxTabela.Text;
    cdsConfiguracaoDirectory.AsString  := cdsConfigBasePath.AsString;
    cdsConfiguracaoComCampos.AsBoolean := cbCampo.Checked;
    cdsConfiguracao.Post;

    cdsConfiguracao.First;
    while not cdsConfiguracao.Eof do
    begin
      cdsConfiguracao.Edit;
      cdsConfiguracaoSQL.Text := trim(memSQL2.Text);
      cdsConfiguracao.Post;

      cdsConfiguracao.Next;
    end;
    //btnExecutar.Click;
  end;
end;

procedure TSQLForm.btnClear2Click(Sender: TObject);
begin
  memSQL2.Lines.Clear;
end;

procedure TSQLForm.btnAdd3Click(Sender: TObject);
var
  sCampos1: string;
  n, numBase: integer;
begin
  numBase := 3;
  if cbxTabela.Text<>'' then
  begin
    //responsável por tirar espaços em brancos erro de digitação.
    if trim(memSQL3.Lines.Text)='' then
       memSQL3.Lines.Clear;

    cdsConfigBase.Locate('base',cbxBase.EditValue,[]);

    if not cbCampo.Checked then
      sCampos1 := '*'
    else
    begin  //mostrar os campos se necessários no comando SQL.
      sCampos1 := '';
      definiConexaoPara3Bases(cdsConfigBase.FieldByName('Path').AsString, numBase);

      QAux1.Close;
      QAux1.SQL.Clear;
      QAux1.SQL.Add('Select * from '+cbxTabela.Text);
      QAux1.Open;
      for n:=0 to QAux1.FieldCount-1 do
      begin
        sCampos1 := sCampos1 + QAux1.Fields[n].FieldName + ', ';
      end;
      sCampos1 := copy(sCampos1,1,length(sCampos1)-2);
    end;
    definiConexaoPara3Bases(cdsConfigBasePath.AsString, numBase);
    memSQL3.Lines.Add('Select '+ sCampos1 +' from '+cbxTabela.Text);

    //salvar nas configurações
    if cdsConfiguracao.Locate('numbase', numBase,[]) then
      cdsConfiguracao.Edit
    else
    begin
      cdsConfiguracao.Append();
      cdsConfiguracaonumbase.asInteger := numBase;
    end;
    cdsConfiguracaoBase.AsString       := cbxBase.Text;
    cdsConfiguracaotabela.AsString     := cbxTabela.Text;
    cdsConfiguracaoDirectory.AsString  := cdsConfigBasePath.AsString;
    cdsConfiguracaoComCampos.AsBoolean := cbCampo.Checked;
    cdsConfiguracaockbBloqueado1.AsBoolean := ckbBloqueado1.Checked;
    cdsConfiguracaockbBloqueado2.AsBoolean := ckbBloqueado2.Checked;
    cdsConfiguracaockbBloqueado3.AsBoolean := ckbBloqueado3.Checked;
    cdsConfiguracao.Post;

    cdsConfiguracao.First;
    while not cdsConfiguracao.Eof do
    begin
      cdsConfiguracao.Edit;
      cdsConfiguracaoSQL.Text := trim(memSQL3.Text);
      cdsConfiguracao.Post;

      cdsConfiguracao.Next;
    end;
    //btnExecutar.Click;
  end;
end;

procedure TSQLForm.btnExecutarClick(Sender: TObject);
var
  x: Integer;
  bEncontrou: Boolean;
begin
  bEncontrou := False;
  if (trim(memSQL1.Lines.Text)<>'') and (memSQL1.Enabled) then
  begin
    DBISAMQuery1.Close;
    DBISAMQuery1.SQL.Clear;
    DBISAMQuery1.SQL.Add(memSQL1.Lines.Text);

    if copy(LowerCase(trim(memSQL1.Lines.Text)),1,3)='sel' then
    begin
      DBISAMQuery1.Open;
      lab1.Caption := 'Registro(s): '+inttoStr(DBISAMQuery1.RecordCount);
    end
    else
    begin
      DBISAMQuery1.ExecSQL;
      ShowMessage('Comando executado com sucesso! afetadas: '+inttoStr(DBISAMQuery1.RowsAffected));
      lab1.Caption := 'Registros afetado(s): '+inttoStr(DBISAMQuery1.RowsAffected);
    end;
  end
  else
  begin
    DBISAMQuery1.close;
    DBISAMQuery1.SQL.Clear;
    lab1.Caption := '';
  end;

  if (trim(memSQL2.Lines.Text)<>'') and (memSQL2.Enabled) then
  begin
    DBISAMQuery2.Close;
    DBISAMQuery2.SQL.Clear;
    DBISAMQuery2.SQL.Add(memSQL2.Lines.Text);

    if copy(LowerCase(trim(memSQL2.Lines.Text)),1,3)='sel' then
    begin
      DBISAMQuery2.Open;
      lab2.Caption := 'Registro(s): '+inttoStr(DBISAMQuery2.RecordCount);
    end
    else
    begin
      DBISAMQuery2.ExecSQL;
      ShowMessage('Comando executado com sucesso! afetadas: '+inttoStr(DBISAMQuery2.RowsAffected));
      lab2.Caption := 'Registros afetado(s): '+inttoStr(DBISAMQuery2.RowsAffected);
    end;

  end
  else
  begin
    DBISAMQuery2.Close;
    DBISAMQuery2.SQL.Clear;
    lab2.Caption := '';
  end;

  if (trim(memSQL3.Lines.Text)<>'') and (memSQL3.Enabled) then
  begin
    DBISAMQuery3.Close;
    DBISAMQuery3.SQL.Clear;
    DBISAMQuery3.SQL.Add(memSQL3.Lines.Text);

    if copy(LowerCase(trim(memSQL3.Lines.Text)),1,3)='sel' then
    begin
      DBISAMQuery3.Open;
      lab3.Caption := 'Registro(s): '+inttoStr(DBISAMQuery3.RecordCount);
    end
    else
    begin
      DBISAMQuery3.ExecSQL;
      ShowMessage('Comando executado com sucesso! afetadas: '+inttoStr(DBISAMQuery3.RowsAffected));
      lab3.Caption := 'Registros afetado(s): '+inttoStr(DBISAMQuery3.RowsAffected);
    end;

  end
  else
  begin
    DBISAMQuery3.Close;
    DBISAMQuery3.SQL.Clear;
    lab3.Caption := '';
  end;

  labBase1.Caption := '';
  labBase2.Caption := '';
  LabBase3.Caption := '';

  cdsConfiguracao.First;
  while not cdsConfiguracao.Eof do
  begin
    if DirectoryExists(cdsConfiguracaoDirectory.AsString) then
    begin
      case cdsConfiguracao.RecNo of
        1:labBase1.Caption:= 'Base Name: '+cdsConfiguracaoBase.AsString + '  |  Local Path: "'+cdsConfiguracaoDirectory.AsString +'\'+ getTabelaSelect(memSQL1.Lines.Text)+'"';
        2:labBase2.Caption:= 'Base Name: '+cdsConfiguracaoBase.AsString + '  |  Local Path: "'+cdsConfiguracaoDirectory.AsString +'\'+ getTabelaSelect(memSQL2.Lines.Text)+'"';
        3:labBase3.Caption:= 'Base Name: '+cdsConfiguracaoBase.AsString + '  |  Local Path: "'+cdsConfiguracaoDirectory.AsString +'\'+ getTabelaSelect(memSQL3.Lines.Text)+'"';
      end;
    end;
    cdsConfiguracao.Next;
  end;
end;

procedure TSQLForm.btnClearClick(Sender: TObject);
begin
  memSQL1.Lines.Clear;
end;

procedure TSQLForm.btnAddClick(Sender: TObject);
var
  sCampos1 : String;
  n : integer;
  text: String;
begin
  if cbxTabela.Text<>'' then
  begin
    //responsável por tirar espaços em brancos erro de digitação.
    if trim(memSQL1.Lines.Text)='' then
       memSQL1.Lines.Clear;

    cdsConfigBase.Locate('base',cbxBase.EditValue,[]);

    if not cbCampo.Checked then
      sCampos1 := '*'
    else
    begin  //mostrar os campos se necessários no comando SQL.
      sCampos1 := '';
      definiConexaoPara3Bases(cdsConfigBase.FieldByName('Path').AsString, 1);

      QAux1.Close;
      QAux1.SQL.Clear;
      QAux1.SQL.Add('Select * from '+cbxTabela.Text);
      QAux1.Open;
      for n:=0 to QAux1.FieldCount-1 do
      begin
        sCampos1 := sCampos1 + QAux1.Fields[n].FieldName + ', ';
      end;
      sCampos1 := copy(sCampos1,1,length(sCampos1)-2);
    end;
    definiConexaoPara3Bases(cdsConfigBasePath.AsString, 1);
    memSQL1.Lines.Add('Select '+ sCampos1 +' from '+cbxTabela.Text);

    //salvar nas configurações
    if cdsConfiguracao.Locate('numbase', 1,[]) then
      cdsConfiguracao.Edit
    else
    begin
      cdsConfiguracao.Append();
      cdsConfiguracaonumbase.asInteger := 1;
    end;
    cdsConfiguracaoBase.AsString       := cbxBase.Text;
    cdsConfiguracaotabela.AsString     := cbxTabela.Text;
    cdsConfiguracaoDirectory.AsString  := cdsConfigBasePath.AsString;
    cdsConfiguracaoComCampos.AsBoolean := cbCampo.Checked;
    cdsConfiguracao.Post;

    cdsConfiguracao.First;
    while not cdsConfiguracao.Eof do
    begin
      cdsConfiguracao.Edit;
      cdsConfiguracaoSQL.Text := memSQL1.Text;
      cdsConfiguracao.Post;

      cdsConfiguracao.Next;
    end;
    //btnExecutar.Click;
  end;
end;

procedure TSQLForm.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex=1 then
    btnMostraCampos.Click;
end;

procedure TSQLForm.DBGrid1DblClick(Sender: TObject);
begin
  if DBGrid1.SelectedField.DataType=ftMemo then
  begin
    MemoForm.Caption := 'Campo: '+DBISAMQuery1.Fields[DBGrid1.SelectedField.Index].FieldName;
    MemoForm.cxMemo1.Lines.Clear;
    MemoForm.cxMemo1.Lines.Add(DBISAMQuery1.Fields[DBGrid1.SelectedField.Index].AsString);
    MemoForm.Showmodal;
  end;
end;

procedure TSQLForm.DBGrid2DblClick(Sender: TObject);
begin
  if DBGrid2.SelectedField.DataType=ftMemo then
  begin
    MemoForm.Caption := 'Campo: '+DBISAMQuery2.Fields[DBGrid2.SelectedField.Index].FieldName;
    MemoForm.cxMemo1.Lines.Clear;
    MemoForm.cxMemo1.Lines.Add(DBISAMQuery2.Fields[DBGrid2.SelectedField.Index].AsString);
    MemoForm.Showmodal;
  end;
end;

procedure TSQLForm.DBGrid3DblClick(Sender: TObject);
begin
  if DBGrid3.SelectedField.DataType=ftMemo then
  begin
    MemoForm.Caption := 'Campo: '+DBISAMQuery3.Fields[DBGrid3.SelectedField.Index].FieldName;
    MemoForm.cxMemo1.Lines.Clear;
    MemoForm.cxMemo1.Lines.Add(DBISAMQuery3.Fields[DBGrid3.SelectedField.Index].AsString);
    MemoForm.Showmodal;
  end;
end;

procedure TSQLForm.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure TSQLForm.memSQL1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_BACK then
  begin
    if trim(memSQL1.Text)='' then
      memSQL1.Lines.Clear;
  end;
end;


Procedure TSQLForm.definiConexaoPara3Bases(psDirectory: String;pbNumBase: integer);
var
  MyStringList: TStrings;
  x: Integer;
Begin
  case pbNumBase of
    1: begin
        DBISAMDatabase1.Connected:= False;
        DBISAMDatabase1.Directory:= psDirectory;
        DBISAMDatabase1.Connected:= true;

        QAux1.DatabaseName := 'Base1'; //A tabela auxiliar serve só para gerar o comando sql no memo quando add.
       end;
    2: begin
         DBISAMDatabase2.Connected:= False;
         DBISAMDatabase2.Directory:= psDirectory;
         DBISAMDatabase2.Connected:= true;

         QAux1.DatabaseName := 'Base2';
       end;
    3: Begin
         DBISAMDatabase3.Connected:= False;
         DBISAMDatabase3.Directory:= psDirectory;
         DBISAMDatabase3.Connected:= true;

         QAux1.DatabaseName := 'Base3';
       End;
  end;

end;


procedure TSQLForm.AdicionarFilho(const aPai: integer; const aNoPai: TTreeNode);
var
  lcdsAuxiliar: TClientDataSet;
  lNoFilho: TTreeNode;
begin
  lcdsAuxiliar := TClientDataSet.Create(nil);
  try
    lcdsAuxiliar.CloneCursor(cdsConfigBase, True);
    //lcdsAuxiliar.Filter := 'PAI = ' + IntToStr(aPai);
    lcdsAuxiliar.Filtered := True;
    while not (lcdsAuxiliar.Eof) do
    begin
      lNoFilho := TTreeNode.Create(nil);
      lNoFilho := TreeView1.Items.AddChild(aNoPai, lcdsAuxiliar.FieldByName('DESCRICAO').AsString);
      TreeView1.Items[TreeView1.Items.Count - 1].ImageIndex := 1;
      AdicionarFilho(lcdsAuxiliar.FieldByName('CODIGO').AsInteger, lNoFilho);
      lcdsAuxiliar.Next;
    end;
  finally
    FreeAndNil(lcdsAuxiliar);
  end;
end;


procedure TSQLForm.VerificarTipo (aTField: TField);
var FieldType: String;
begin
 // FieldType:= ;
  exit;
  if (FieldType = 'TStringField')     or
     (FieldType = 'TWideStringField') then
    begin
     { É Texto }
       showmessage('String');
    end;
  if (FieldType = 'TDateField')     or
     (FieldType = 'TDateTimeField') or
     (FieldType = 'TTimeField')     then
    begin
     { É Data / Data/Hora }
      showmessage('Datetime');
    end;
  if (FieldType = 'TIntegerField')  or
     (FieldType = 'TSmallIntField') or
     (FieldType = 'TLargeintField') then
    begin
     showmessage('Integer');
    end;
  if (FieldType = 'TFloatField')    or
     (FieldType = 'TCurrencyField') or
     (FieldType = 'TBCDField')      or
     (FieldType = 'TFMTBCDField')   then
    begin
      showmessage('Float');
    end;
end;

procedure TSQLForm.Open1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir := ExtractFilePath(ParamStr(0))+'\';
  if OpenDialog1.Execute() then
  begin
    LimparControlos();
    CarregarConfiguracaoNaEcra(OpenDialog1.FileName);
    btnExecutar.Click;
  end;
end;

procedure TSQLForm.OpenDefault1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente mudar sem salvar?', 'Alerta',MB_YESNO+MB_ICONQUESTION)=IDYES then
    FormShow(Self);
end;

Procedure TSQLForm.OpenTempConfig(pPathFicheiro:string);
var
  _caminho: string;
begin
  cdsConfiguracao.Close;
  cdsConfiguracao.CreateDataSet;
  cdsConfiguracao.Open;
  cdsConfiguracao.EmptyDataSet;

  _caminho   := pPathFicheiro;
  //fcaminho   := ExtractFilePath(ParamStr(0))+'\Config.xml';
  if not Fileexists(_caminho) then
    cdsConfiguracao.SaveToFile(_caminho)
  else
    cdsConfiguracao.LoadFromFile(_caminho);
end;

procedure TSQLForm.Resetnajabela1Click(Sender: TObject);
begin
  Storage.Active      := False;
  Storage.UseRegistry := false;
  DeleteFile(ExtractFilePath(ParamStr(0))+'storage.ini');

  close;
end;

Procedure TSQLForm.carregaListaDaBase(base:String);
var
  _caminho: string;
begin
  fIndex := -1;
  _caminho   := ExtractFilePath(ParamStr(0))+'\ConfgBase.xml';
  cdsConfigBase.Close;
  cdsConfigBase.Active:= true;

  if not Fileexists(_caminho) then
    cdsConfigBase.SaveToFile(_caminho)
  else
    cdsConfigBase.LoadFromFile(_caminho);

  cbxBase.Properties.Items.Clear;
  cdsConfigBase.First;
  while not cdsConfigBase.Eof do
  begin
    cbxBase.Properties.Items.Add(cdsConfigBaseBase.AsString);
    if base<>'' then
    begin
      if base=cdsConfigBaseBase.AsString then
        fIndex := cbxBase.Properties.Items.IndexOf(base);
    end;
    cdsConfigBase.Next;
  end;
  cbxBase.ItemIndex :=  fIndex;

 ckbBloqueado1.Checked := not cdsConfiguracaockbBloqueado1.AsBoolean;
 ckbBloqueado2.Checked := not cdsConfiguracaockbBloqueado2.AsBoolean;
 ckbBloqueado3.Checked := not cdsConfiguracaockbBloqueado3.AsBoolean;
end;

Procedure TSQLForm.carregaTabela(psTabela, psDirectory: String);
var
  MyStringList: TStrings;
  x: Integer;
begin
  fIndex := -1;
  DBISAMDatabase0.Connected := False;
  DBISAMDatabase0.Directory := psDirectory;
  DBISAMDatabase0.Connected := true;

  cxLabel2.Caption := '';
  MyStringList     := TStringList.Create;
  cbxTabela.Properties.Items.Clear;
  try
    BaseSession.GetTableNames('Basecfg',MyStringList);//adiciona na Stringlist as tabelas da base;
    { Add the table names to a list box }
    for x:= 0 to MyStringList.Count-1 do
    begin
      cbxTabela.Properties.Items.Add(MyStringList.Strings[x]);
      if psTabela<>'' then
        if psTabela=MyStringList.Strings[x] then
          fIndex := cbxTabela.Properties.Items.IndexOf(psTabela)
    end;

    cbxTabela.ItemIndex := fIndex;
    btnExecutar.Enabled:= True;
  finally
     MyStringList.Free;
  end;
end;

procedure TSQLForm.Salvar1Click(Sender: TObject);
var
  _caminho: string;
begin
  _caminho   := ExtractFilePath(ParamStr(0))+'\Config.xml';
  SaveNameTabelaConfig(_caminho);
end;

procedure TSQLForm.SaveNameTabelaConfig(pPathFicheiro:string);
begin
  cdsConfiguracao.First;
  while not cdsConfiguracao.Eof do
  begin
    cdsConfiguracao.Edit;
    //pega o nome das tabelas das 3 linhas
    if cdsConfiguracao.FieldByName('NumBase').AsInteger=1 then
    begin
      if trim(DBISAMQuery1.SQL.Text)<>'' then
        cdsConfiguracao.FieldByName('tabela').AsString := GetTableNameFromSQL(trim(DBISAMQuery1.SQL.Text));
      cdsConfiguracao.FieldByName('SQL').Text := memSQL1.Text;
    end
    else
    if cdsConfiguracao.FieldByName('NumBase').AsInteger=2 then
    begin
      if trim(DBISAMQuery2.SQL.Text)<>'' then
        cdsConfiguracao.FieldByName('tabela').AsString := GetTableNameFromSQL(trim(DBISAMQuery2.SQL.Text));
      cdsConfiguracao.FieldByName('SQL').Text := memSQL2.Text;
    end
    else
    if cdsConfiguracao.FieldByName('NumBase').AsInteger=3 then
    begin
      if trim(DBISAMQuery3.SQL.Text)<>'' then
        cdsConfiguracao.FieldByName('tabela').AsString := GetTableNameFromSQL(trim(DBISAMQuery3.SQL.Text));
      cdsConfiguracao.FieldByName('SQL').Text := memSQL3.Text;
    end;

    cdsConfiguracaockbBloqueado1.AsBoolean := ckbBloqueado1.Checked;
    cdsConfiguracaockbBloqueado2.AsBoolean := ckbBloqueado2.Checked;
    cdsConfiguracaockbBloqueado3.AsBoolean := ckbBloqueado3.Checked;

    cdsConfiguracao.Post;

    if cdsConfiguracao.FieldByName('tabela').AsString='' then
      cdsConfiguracao.delete
    else
      cdsConfiguracao.Next;
  end;
  cdsConfiguracao.SaveToFile(pPathFicheiro)
end;


procedure TSQLForm.SaveAs1Click(Sender: TObject);
var
  _caminho: string;
begin
 OpenDialog1.InitialDir := ExtractFilePath(ParamStr(0))+'\';
  if SaveDialog1.Execute() then
    SaveNameTabelaConfig(SaveDialog1.FileName);
end;

function getFirsWord(pFrase:string):string;
var
  x: integer;
  firstWord: string;
begin
  firstWord := '';
  for x := 1 to Length(pFrase) do
    if pFrase[x]<>' ' then
       firstWord := firstWord + pFrase[x]
    else
      Break;
  Result := firstWord;
end;

function TSQLForm.getTabelaSelect(sql:string): string;
var
  sqlmin, //para trabalhar com letras minusculas e a original ficar com size original.
  tabela: string;
begin
  sql    := Trim(sql);
  sqlmin := LowerCase(sql);
  if Pos('from', sqlmin)>0 then  //from serve para select e delete
  begin
    tabela := trim(Copy(sql, Pos('from', sqlmin)+4, Length(sql)));
    tabela := trim(getFirsWord(tabela));
  end;

  if Pos('update', sqlmin)>0 then
  begin
    tabela := trim(Copy(sql, Pos('update', sqlmin)+6, Length(sql)));
    tabela := trim(getFirsWord(tabela));
  end;

  Result := tabela+'.dat';
end;

procedure TSQLForm.LimparControlos();
begin
  DBISAMDatabase1.Connected:= False;
  DBISAMDatabase2.Connected:= false;
  DBISAMDatabase3.Connected:= False;

  labBase1.Caption := '';
  labBase2.Caption := '';
  LabBase3.Caption := '';

  cxLabel2.Caption:= '';

  cdsCampos1.Close;
  cdsCampos1.CreateDataSet;
  cdsCampos1.Open;
  cdsCampos1.EmptyDataSet;

  cdsCampos2.Close;
  cdsCampos2.CreateDataSet;
  cdsCampos2.Open;
  cdsCampos2.EmptyDataSet;

  cdsCampos3.Close;
  cdsCampos3.CreateDataSet;
  cdsCampos3.Open;
  cdsCampos3.EmptyDataSet;

  memSQL1.Lines.Clear;
end;

end.
