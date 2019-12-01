program ProjSistema;

uses
  Vcl.Forms,
  UnFormMenuPrincipal in 'UnFormMenuPrincipal.pas' {FormMenuPrincipal},
  UnDmConexao in 'Units\UnDmConexao.pas' {DmConexao: TDataModule},
  UnDmConectConfigSistema in 'Units\UnDmConectConfigSistema.pas' {DmMenuPrncipal: TDataModule},
  UnFormPadraoCadastro in 'Units\UnFormPadraoCadastro.pas' {FormPadraoCadastro},
  UnFormCadastroProduto in 'Units\UnFormCadastroProduto.pas' {FormCadastroProduto},
  UnFormCofigSistema in 'Units\UnFormCofigSistema.pas' {FormConfig},
  UnFormLogin in 'Units\UnFormLogin.pas' {FormLogin},
  UnTypesGeral in 'Units\UnTypesGeral.pas',
  UnFormCadastroFornecedor in 'Units\UnFormCadastroFornecedor.pas' {FormCadastroFornecedor},
  UnFormCadastroUsuario in 'Units\UnFormCadastroUsuario.pas' {FormCadastroUsuario},
  UnPRODUTOSTypes in 'Metadados\UnPRODUTOSTypes.pas',
  UnUSUARIOSTypes in 'Metadados\UnUSUARIOSTypes.pas',
  UnDmValidacoesTypesGeral in 'Units\UnDmValidacoesTypesGeral.pas' {DmValidar: TDataModule},
  UnLookupFrame in 'Frames\UnLookupFrame.pas' {LookupFrame: TFrame},
  UnFormCadastroMunicipios in 'Units\UnFormCadastroMunicipios.pas' {FormCadastroMunicipios},
  UnDmMenuPrincipal in 'Units\UnDmMenuPrincipal.pas' {DmMenuPrincipal: TDataModule},
  UnTypesValidar in 'Units\UnTypesValidar.pas',
  UnTypesCarregarSQL in 'Units\UnTypesCarregarSQL.pas',
  UnFormCadastroCliente in 'Units\UnFormCadastroCliente.pas' {FormCadastroCliente},
  UnFormTelaCarregamento in 'Units\UnFormTelaCarregamento.pas' {Form1},
  UnFormPesquisaLKP in 'Frames\UnFormPesquisaLKP.pas' {FormPesquisaLkp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmValidar, DmValidar);
  Application.CreateForm(TDmMenuPrincipal, DmMenuPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormPesquisaLkp, FormPesquisaLkp);
  Application.Run;
end.
