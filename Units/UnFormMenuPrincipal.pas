unit UnFormMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.Imaging.pngimage, Vcl.DBCtrls, Data.DB;

type
  TFormMenuPrincipal = class(TForm)
    pnlMenuTop: TPanel;
    pnlMenuLateral: TPanel;
    ActionToolBar1: TActionToolBar;
    pgcMenuTop: TPageControl;
    tsCadastro: TTabSheet;
    tsCalculos: TTabSheet;
    tsConfig: TTabSheet;
    TabSheet4: TTabSheet;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    imgPlanoFundo: TDBImage;
    tsCaixa: TTabSheet;
    pnlFoter: TPanel;
    pgrMenuPrincipal: TProgressBar;
    dsConfiUsuario: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure SetConfigInicial;
    procedure SetConfigUsuario;
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

{$R *.dfm}

procedure TFormMenuPrincipal.FormShow(Sender: TObject);
begin
  SetConfigInicial;
end;

procedure TFormMenuPrincipal.Image1Click(Sender: TObject);
begin
  tsCalculos.Show;
end;

procedure TFormMenuPrincipal.Image2Click(Sender: TObject);
begin
  tsCadastro.Show;
end;

procedure TFormMenuPrincipal.Image3Click(Sender: TObject);
begin
  tsCaixa.Show;
end;

procedure TFormMenuPrincipal.Image5Click(Sender: TObject);
begin
  tsConfig.Show;
end;

procedure TFormMenuPrincipal.SetConfigInicial;
begin
  tsCadastro.TabVisible := false;
  tsCalculos.TabVisible := false;
  tsConfig.TabVisible := false;
  tsCaixa.TabVisible := false;
end;

procedure TFormMenuPrincipal.SetConfigUsuario;
begin

end;

end.
