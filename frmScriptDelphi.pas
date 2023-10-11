unit frmScriptDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons;

type
  TScriptDelphiForm = class(TForm)
    Memo1: TMemo;
    btnExecutar: TcxButton;
    procedure btnExecutarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    consulta: Boolean;
    sql: boolean;
  end;

var
  ScriptDelphiForm: TScriptDelphiForm;

implementation

{$R *.dfm}

procedure TScriptDelphiForm.btnExecutarClick(Sender: TObject);
begin
  consulta := True;
  close;
end;

procedure TScriptDelphiForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sql:= false;
end;

procedure TScriptDelphiForm.FormCreate(Sender: TObject);
begin
  sql:= false;
end;

procedure TScriptDelphiForm.FormShow(Sender: TObject);
begin
  consulta := false;

  if sql then
  begin
    self.Caption         := 'Consultas e comandos SQL';
    btnExecutar.Caption := 'Execute'
  end
  else
  begin
    self.Caption         := 'Cripts';
    btnExecutar.Caption := 'Ok';
  end;
end;

end.
