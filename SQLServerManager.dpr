program SQLServerManager;

uses
  Vcl.Forms,
  frmSQLMain in 'frmSQLMain.pas' {SQLForm},
  frmBaseForm in 'frmBaseForm.pas' {BaseForm},
  frmScriptDelphi in 'frmScriptDelphi.pas' {ScriptDelphiForm},
  frmMemoForm in 'frmMemoForm.pas' {MemoForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSQLForm, SQLForm);
  Application.CreateForm(TMemoForm, MemoForm);
  Application.CreateForm(TScriptDelphiForm, ScriptDelphiForm);
  Application.Run;
end.
