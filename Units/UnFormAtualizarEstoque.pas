unit UnFormAtualizarEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFormAtualizarEstoque = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtualizarEstoque: TFormAtualizarEstoque;

implementation

{$R *.dfm}

initialization

RegisterClass(TFormAtualizarEstoque);

finalization

UnRegisterClass(TFormAtualizarEstoque);

end.