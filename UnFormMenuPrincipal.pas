unit UnFormMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.Imaging.pngimage, Vcl.DBCtrls, Data.DB, Vcl.ActnMenus,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  UnLookupFrame;

type
  TFormMenuPrincipal = class(TForm)
    pnlMenuTop: TPanel;
    pnlMenuLateral: TPanel;
    dsConfiUsuario: TDataSource;
    actMenuPrincipal: TActionManager;
    actCadastroProduto: TAction;
    actCadastroCliente: TAction;
    actCadastroFonecedor: TAction;
    actConfigSistema: TAction;
    actFinalizarSistema: TAction;
    pgcMenuTop: TPageControl;
    tsCadastro: TTabSheet;
    tsCalculos: TTabSheet;
    TabSheet4: TTabSheet;
    tsCaixa: TTabSheet;
    dbeImgPlanoFundo: TDBImage;
    tsConfig: TTabSheet;
    tsRelatorios: TTabSheet;
    btnCadastro: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnRelatorios: TSpeedButton;
    btnCalculos: TSpeedButton;
    SpeedButton6: TSpeedButton;
    btnCadastroCliente: TSpeedButton;
    SpeedButton8: TSpeedButton;
    actCadastroUsuario: TAction;
    btnLoginEmpresa: TSpeedButton;
    SpeedButton5: TSpeedButton;
    actLogin: TAction;
    actCompras: TAction;
    actVendas: TAction;
    BtnCaixa: TSpeedButton;
    btnFinalizarSistema: TSpeedButton;
    pgcTelaMenu: TPageControl;
    tsPlanoFundo: TTabSheet;
    ToolMenu: TActionToolBar;
    tsCaixaVendas: TTabSheet;
    dbeVenda: TDBGrid;
    pnlOpcoes: TPanel;
    btnAbrirCaixa: TSpeedButton;
    actCaixaVendas: TAction;
    pnlSubTotal: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    pnlPrincipalCaixa: TPanel;
    Panel4: TPanel;
    Label7: TLabel;
    lblTotalItemsCarinho: TLabel;
    Panel5: TPanel;
    dsVenda: TDataSource;
    dsCaixa: TDataSource;
    btnAdicionarItem: TSpeedButton;
    btnDeletarItem: TSpeedButton;
    btnSubTotal: TSpeedButton;
    btnCanselarCaixa: TSpeedButton;
    actFinalizarCaixa: TAction;
    actAdicionarItem: TAction;
    actRemoverItem: TAction;
    actSubTotal: TAction;
    edtSubTotal: TEdit;
    edtDescontos: TEdit;
    edtTotalVenda: TEdit;
    pnlFoter: TPanel;
    dsEmpresa: TDataSource;
    GroupBox1: TGroupBox;
    pnlLancamentos: TPanel;
    edtCodigo: TMaskEdit;
    edtQuantidade: TMaskEdit;
    dbeImgProduto: TDBImage;
    dbeImgEmpresa: TDBImage;
    lblOperador: TLabel;
    SpeedButton1: TSpeedButton;
    actCadadastroMunicipio: TAction;
    SpeedButton2: TSpeedButton;
    actCadastroEmpresa: TAction;
    SpeedButton4: TSpeedButton;
    SpeedButton7: TSpeedButton;
    actCadastroDepartamento: TAction;
    SpeedButton9: TSpeedButton;
    actConferenciaEstoque: TAction;
    pgbCarregar: TProgressBar;
    lblUsuario: TLabel;
    lblData: TLabel;
    lblEmpresa: TLabel;
    TimerCarregar: TTimer;
    lblUnidade: TLabel;
    actAtualizarEstoque: TAction;
    lblNomeFantazia: TLabel;
    SpeedButton10: TSpeedButton;
    actLoginEmpresa: TAction;
    actCadastroSetor: TAction;
    actCadastroCargo: TAction;
    SpeedButton3: TSpeedButton;
    SpeedButton11: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure imgBtnCadastroClick(Sender: TObject);
    procedure imgBtnCalculoClick(Sender: TObject);
    procedure imgBtnCaixaClick(Sender: TObject);
    procedure imgBtnConfigClick(Sender: TObject);
    procedure actCadastroProdutoExecute(Sender: TObject);
    procedure actConfigSistemaExecute(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure actFinalizarSistemaExecute(Sender: TObject);
    procedure btnCalculosClick(Sender: TObject);
    procedure btnFinalizarSistemaClick(Sender: TObject);
    procedure btnCadastrosClick(Sender: TObject);
    procedure btnRelatoriosClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure actCadastroClienteExecute(Sender: TObject);
    procedure actCadastroFonecedorExecute(Sender: TObject);
    procedure actLoginExecute(Sender: TObject);
    procedure actCadastroUsuarioExecute(Sender: TObject);
    procedure actCaixaVendasExecute(Sender: TObject);
    procedure actFinalizarCaixaExecute(Sender: TObject);
    procedure actAdicionarItemExecute(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsCaixaVendasShow(Sender: TObject);
    procedure edtQuantidadeEnter(Sender: TObject);
    procedure actCadadastroMunicipioExecute(Sender: TObject);
    procedure TimerCarregarTimer(Sender: TObject);
    procedure actAtualizarEstoqueExecute(Sender: TObject);
    procedure actCadastroEmpresaExecute(Sender: TObject);
    procedure actCadastroDepartamentoExecute(Sender: TObject);
    procedure actLoginEmpresaExecute(Sender: TObject);
    procedure actCadastroSetorExecute(Sender: TObject);
    procedure actCadastroCargoExecute(Sender: TObject);
  protected
    procedure SetConfigInicial;
    procedure SetComponentesVisual;
    procedure SetConfigCaixa;
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

uses
  unDmconectConfigSistema, UnFormCadastroProduto, UnFormCofigSistema,
  UnTypesGeral, UnFormCadastroCliente, UnFormcadastroFornecedor, UnFormLogin,
  UnFormCadastroUsuario, UnDmMenuPrincipal, UnTypesCarregarSQL,
  UnFormCadastroMunicipios, UnFormTelaCarregamento, UnFormAtualizarEstoque,
  UnFormCadastroEmpresa, UnFormCadastroDepartamento, UnFormLoginEmpresa,
  UnFormCadastroSetor, UnFormCadastroCargo;

{$R *.dfm}

procedure TFormMenuPrincipal.actAdicionarItemExecute(Sender: TObject);
begin
  TCarregarSQL.AdicionarItemNaCompra;
end;

procedure TFormMenuPrincipal.actAtualizarEstoqueExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormAtualizarEstoque);
end;

procedure TFormMenuPrincipal.actCadadastroMunicipioExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroMunicipios);
end;

procedure TFormMenuPrincipal.actCadastroCargoExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroCargo);
end;

procedure TFormMenuPrincipal.actCadastroClienteExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroCliente);
end;

procedure TFormMenuPrincipal.actCadastroDepartamentoExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroDepartamento);
end;

procedure TFormMenuPrincipal.actCadastroEmpresaExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroEmpresa);
end;

procedure TFormMenuPrincipal.actCadastroFonecedorExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroFornecedor);
end;

procedure TFormMenuPrincipal.actCadastroProdutoExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroProduto);
end;

procedure TFormMenuPrincipal.actCadastroSetorExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroSetor);
end;

procedure TFormMenuPrincipal.actCaixaVendasExecute(Sender: TObject);
begin
  tsCaixaVendas.Show;
  TGTypeGeral.SetFocusCampo(Sender, edtCodigo);
  pnlMenuLateral.Visible := False;
  pnlMenuTop.Visible := False;
  ToolMenu.Visible := False;
  SetConfigCaixa;
end;

procedure TFormMenuPrincipal.actConfigSistemaExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormConfig);
end;

procedure TFormMenuPrincipal.actFinalizarCaixaExecute(Sender: TObject);
begin
  tsPlanoFundo.Show;
  pnlMenuTop.Visible := true;
  pnlMenuLateral.Visible := true;
  ToolMenu.Visible := true;
end;

procedure TFormMenuPrincipal.actFinalizarSistemaExecute(Sender: TObject);
begin
  if MessageDlg('Deseja finalizar sistema ?', mtInformation, mbYesNo, 0, mbYes)
    = mrYes then
    Close;
end;

procedure TFormMenuPrincipal.actLoginEmpresaExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormLoginEmpresa);
end;

procedure TFormMenuPrincipal.actLoginExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormLogin);
end;

procedure TFormMenuPrincipal.actCadastroUsuarioExecute(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormCadastroUsuario);
end;

procedure TFormMenuPrincipal.btnCadastroClick(Sender: TObject);
begin
  tsCadastro.Show;
end;

procedure TFormMenuPrincipal.btnCadastrosClick(Sender: TObject);
begin
  tsCalculos.Show;
end;

procedure TFormMenuPrincipal.btnSairClick(Sender: TObject);
begin
  tsCaixa.Show;
end;

procedure TFormMenuPrincipal.btnCalculosClick(Sender: TObject);
begin
  tsCalculos.Show;
end;

procedure TFormMenuPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  tsConfig.Show;
end;

procedure TFormMenuPrincipal.btnRelatoriosClick(Sender: TObject);
begin
  tsRelatorios.Show;
end;

procedure TFormMenuPrincipal.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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

procedure TFormMenuPrincipal.edtQuantidadeEnter(Sender: TObject);
begin
  actAdicionarItem.Execute;
end;

procedure TFormMenuPrincipal.edtQuantidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    actAdicionarItem.Execute;
    TGTypeGeral.SetFocusCampo(Sender, edtCodigo);
  end;
end;

procedure TFormMenuPrincipal.FormShow(Sender: TObject);
begin
  SetConfigInicial;
end;

procedure TFormMenuPrincipal.Image11Click(Sender: TObject);
begin
  actCadastroProduto.Execute;
end;

procedure TFormMenuPrincipal.Image1Click(Sender: TObject);
begin
  actFinalizarSistema.Execute;
end;

procedure TFormMenuPrincipal.imgBtnCalculoClick(Sender: TObject);
begin
  tsCalculos.Show;
end;

procedure TFormMenuPrincipal.imgBtnCadastroClick(Sender: TObject);
begin
  tsCadastro.Show;
end;

procedure TFormMenuPrincipal.imgBtnCaixaClick(Sender: TObject);
begin
  tsCaixa.Show;
end;

procedure TFormMenuPrincipal.imgBtnConfigClick(Sender: TObject);
begin
  actConfigSistema.Execute;
end;

procedure TFormMenuPrincipal.SetComponentesVisual;
begin
  lblUsuario.Caption := 'USUÁRIO : ' + DmMenuPrincipal.SQLConfigSistema.
    FieldByName('NOME').AsString;
  lblEmpresa.Caption := 'EMPRESA : ' + DmMenuPrincipal.SQLConfigEmpresa.
    FieldByName('NOME').AsString;
  lblData.Caption := 'DATA : ' + DateToStr(Now);
  lblNomeFantazia.Caption := 'NOME FANTAZIA : ' +
    DmMenuPrincipal.SQLConfigEmpresa.FieldByName('NOMEFANTAZIA').AsString;
end;

procedure TFormMenuPrincipal.SetConfigCaixa;
begin
  lblOperador.Caption := 'OPERADOR : ' + '00' +
    IntToStr(DmMenuPrincipal.SQLConfigSistema.FieldByName('ID').AsInteger) +
    ' - ' + DmMenuPrincipal.SQLConfigSistema.FieldByName('NOME').AsString;
end;

procedure TFormMenuPrincipal.SetConfigInicial;
begin
  tsPlanoFundo.TabVisible := False;
  tsCaixaVendas.TabVisible := False;
  tsRelatorios.TabVisible := False;
  tsConfig.TabVisible := False;
  tsCadastro.TabVisible := False;
  tsCalculos.TabVisible := False;
  tsCaixa.TabVisible := False;
  tsCadastro.Show;
  tsPlanoFundo.Show;
  pnlMenuTop.Visible := true;
  SetComponentesVisual;
end;

procedure TFormMenuPrincipal.TimerCarregarTimer(Sender: TObject);
begin
  pgbCarregar.Position := pgbCarregar.Position + 1;
  if pgbCarregar.Position = 100 then
  begin
    TimerCarregar.Destroy;
    pgbCarregar.Position := 0;
  end;
end;

procedure TFormMenuPrincipal.tsCaixaVendasShow(Sender: TObject);
begin
  edtCodigo.SetFocus;
end;

procedure TFormMenuPrincipal.btnFinalizarSistemaClick(Sender: TObject);
begin
  tsConfig.Show;
end;

initialization

RegisterClass(TFormMenuPrincipal);

finalization

UnRegisterClass(TFormMenuPrincipal);

end.
