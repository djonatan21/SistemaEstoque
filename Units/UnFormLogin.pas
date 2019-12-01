unit UnFormLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLogin = class(TForm)
    pgbCarregar: TProgressBar;
    edtUsuario: TEdit;
    edtSenha: TMaskEdit;
    ImgLogo: TImage;
    lblUsuario: TLabel;
    LblSenha: TLabel;
    btnAcessar: TSpeedButton;
    btnSair: TSpeedButton;
    lblTitle: TLabel;
    cbxLoginAutomatic: TCheckBox;
    Timer: TTimer;
    procedure btnSairClick(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure ValidarLogin;

  end;

var
  FormLogin: TFormLogin;

implementation

uses
  UnTypesGeral, UnFormMenuPrincipal, UnTypesCarregarSQL;

{$R *.dfm}

procedure TFormLogin.btnAcessarClick(Sender: TObject);
begin
  ValidarLogin;
end;

procedure TFormLogin.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormLogin.TimerTimer(Sender: TObject);
begin
  pgbCarregar.Position := pgbCarregar.Position + 2;
end;

procedure TFormLogin.ValidarLogin;
var
  LCarregarFormMenu: TFormMenuPrincipal;
begin
  if TCarregarSQL.ValidarLoginUsuario(edtUsuario.Text, edtSenha.Text) then
  begin
    TCarregarSQL.CarregarConfiguracoesUsuarioLogado;
    Close;
  end
  else
  begin
    ShowMessage('Usuario ou Senha Invalidos');
    TGTypeGeral.SetFocusCampo(btnAcessar, edtUsuario);
  end;
end;

end.
