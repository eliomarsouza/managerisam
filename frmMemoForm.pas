unit frmMemoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMemo;

type
  TMemoForm = class(TForm)
    cxMemo1: TcxMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MemoForm: TMemoForm;

implementation

{$R *.dfm}

end.
