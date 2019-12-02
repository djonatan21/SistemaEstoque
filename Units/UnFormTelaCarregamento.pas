unit UnFormTelaCarregamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TFormTelaCarregamento = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CarregarMenuPrincipal;
    procedure AdicinarItemMenu;
  end;

var
  FormTelaCarregamento: TFormTelaCarregamento;

implementation

uses
  UnFormMenuPrincipal;

{$R *.dfm}

procedure TFormTelaCarregamento.AdicinarItemMenu;
begin
end;

procedure TFormTelaCarregamento.CarregarMenuPrincipal;
var
  LCarregarMenuPrincipal: TFormMenuPrincipal;
begin
  LCarregarMenuPrincipal := TFormMenuPrincipal.Create(Self);
  LCarregarMenuPrincipal.Show;
  FormTelaCarregamento.Visible := False;
  Timer1.Destroy;
end;

procedure TFormTelaCarregamento.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;
  AdicinarItemMenu;
  if ProgressBar1.Position = 100 then
    CarregarMenuPrincipal;
end;

initialization

RegisterClass(TFormTelaCarregamento);

finalization

UnRegisterClass(TFormTelaCarregamento);

end.
