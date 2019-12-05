unit UnFormCaixaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnFormPadraoFramework, Data.DB,
  Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.ActnMan;

type
  TFormCaixaVendas = class(TFormPadraoFramwork)
    actCaixa: TActionManager;
    dsCaixa: TDataSource;
    dsVenda: TDataSource;
    actAdicionarItem: TAction;
    actRemoverItem: TAction;
    actFinalizarVenda: TAction;
    actCanselarVenda: TAction;
    actFinalizarCaixa: TAction;
    Action2: TAction;
    Action3: TAction;
    pnlPrincipalCaixa: TPanel;
    pnlOpcoes: TPanel;
    lblTotalItemsCarinho: TLabel;
    btnAdicionarItem: TSpeedButton;
    btnDeletarItem: TSpeedButton;
    btnSubTotal: TSpeedButton;
    btnCanselarCaixa: TSpeedButton;
    pnlSubTotal: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    edtSubTotal: TEdit;
    edtDescontos: TEdit;
    edtTotalVenda: TEdit;
    dbeVenda: TDBGrid;
    Panel4: TPanel;
    Label7: TLabel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    lblOperador: TLabel;
    pnlLancamentos: TPanel;
    lblUnidade: TLabel;
    edtCodigo: TMaskEdit;
    edtQuantidade: TMaskEdit;
    dbeImgProduto: TDBImage;
    dbeImgEmpresa: TDBImage;
    procedure edtQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure actFinalizarCaixaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure SetConfiguracoesInicias;
  end;

var
  FormCaixaVendas: TFormCaixaVendas;

implementation

uses
  UnDmMenuPrincipal, UnTypesGeral, UnTypesCarregarSQL;

{$R *.dfm}
{ TFormCaixaVendas }

procedure TFormCaixaVendas.actFinalizarCaixaExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormCaixaVendas.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if DmMenuPrincipal.SQLCaixa.FieldByName('UNIDADE').AsInteger = 0 then
      lblUnidade.Caption := 'Un'
    else
      lblUnidade.Caption := 'Kg';
    TCarregarSQL.ConsultarProduto(StrToInt(edtCodigo.Text));
    TGTypeGeral.SetFocusCampo(Sender, edtQuantidade);
  end;
end;

procedure TFormCaixaVendas.edtQuantidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    TGTypeGeral.SetFocusCampo(Sender, edtCodigo);
  end;
end;

procedure TFormCaixaVendas.FormShow(Sender: TObject);
begin
  inherited;
  SetConfiguracoesInicias;
  TGTypeGeral.SetFocusCampo(Sender, edtCodigo);
end;

procedure TFormCaixaVendas.SetConfiguracoesInicias;
begin
  lblOperador.Caption := 'OPERADOR : ' + '00' +
    IntToStr(DmMenuPrincipal.SQLConfigSistema.FieldByName('ID').Asinteger) +
    ' - ' + DmMenuPrincipal.SQLConfigSistema.FieldByName('NOME').AsString;
end;

end.