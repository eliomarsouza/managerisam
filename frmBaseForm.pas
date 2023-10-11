unit frmBaseForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit,
  cxDBEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB, Datasnap.DBClient,
  Vcl.ExtCtrls, Vcl.DBCtrls, dxSkinsCore, dxSkinsDefaultPainters;

type
  TBaseForm = class(TForm)
    ediCodigo: TcxDBMaskEdit;
    ediPath: TcxDBMaskEdit;
    LabBase: TcxLabel;
    cxLabel2: TcxLabel;
    DataSource1: TDataSource;
    btnGravar: TcxButton;
    cxButton2: TcxButton;
    DBNavigator1: TDBNavigator;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Base: TStringField;
    ClientDataSet1Path: TStringField;
    ClientDataSet1Pai: TStringField;
    cxLabel1: TcxLabel;
    edibase: TcxDBMaskEdit;
    cxButton1: TcxButton;
    procedure btnGravarClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClientDataSet1BeforeInsert(DataSet: TDataSet);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
    procedure DataSource1StateChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fcaminho: string;
    fCodigo: Integer;
  public
    { Public declarations }
    Gravou: Boolean;
  end;

var
  BaseForm: TBaseForm;

implementation

{$R *.dfm}

procedure TBaseForm.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  btnGravar.Click;
end;

procedure TBaseForm.ClientDataSet1BeforeInsert(DataSet: TDataSet);
begin
  ClientDataSet1.Last;
  fCodigo:= ClientDataSet1Codigo.asinteger;
end;

procedure TBaseForm.btnGravarClick(Sender: TObject);
begin
  if DirectoryExists(ediPath.Text) then
  begin
    if edibase.Text<>'' then
    begin
      if ClientDataSet1.State in [dsEdit, dsInsert] then
        ClientDataSet1.Post;
      ClientDataSet1.SaveToFile(fcaminho);

      edibase.Properties.ReadOnly   := True;
      ediPath.Properties.ReadOnly   := True;
      btnGravar.Enabled             := True;
      Gravou := true;
    end
    else
      ShowMessage('Base está em branco!');

  end
  else
    ShowMessage('Directoria não existe!');
end;

procedure TBaseForm.cxButton1Click(Sender: TObject);
begin
  if ClientDataSet1.State in [dsEdit, dsInsert] then
    ClientDataSet1.Cancel;

  Close;
end;

procedure TBaseForm.cxButton2Click(Sender: TObject);
begin
  ClientDataSet1.Append;
  ClientDataSet1Codigo.asinteger := fCodigo;
  ClientDataSet1Pai.AsString     := '0';

  edibase.Properties.ReadOnly   := false;
  ediPath.Properties.ReadOnly   := false;
  btnGravar.Enabled:= False;
  btnGravar.Enabled:= True;
end;

procedure TBaseForm.DataSource1StateChange(Sender: TObject);
begin
  if ClientDataSet1.State in [dsInsert, dsInsert] then
  begin
    cxButton2.Enabled := false;
    btnGravar.Enabled := true;
  end
  else
  begin
    cxButton2.Enabled := true;
    btnGravar.Enabled := False;
  end;
end;

procedure TBaseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ClientDataSet1.Close;
end;

procedure TBaseForm.FormShow(Sender: TObject);
begin
  Gravou := false;
  fcaminho := ExtractFilePath(ParamStr(0))+'\ConfgBase.xml';
  ClientDataSet1.Active:= true;

  if not Fileexists(fcaminho) then
    ClientDataSet1.SaveToFile(fcaminho)
  else
    ClientDataSet1.LoadFromFile(fcaminho);
end;

end.
