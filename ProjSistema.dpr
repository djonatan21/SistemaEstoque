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
  UnFormCadastroMunicipios in 'Units\UnFormCadastroMunicipios.pas' {FormCadastroMunicipios},
  UnDmMenuPrincipal in 'Units\UnDmMenuPrincipal.pas' {DmMenuPrincipal: TDataModule},
  UnTypesValidar in 'Units\UnTypesValidar.pas',
  UnTypesCarregarSQL in 'Units\UnTypesCarregarSQL.pas',
  UnFormCadastroCliente in 'Units\UnFormCadastroCliente.pas' {FormCadastroCliente},
  UnFormTelaCarregamento in 'Units\UnFormTelaCarregamento.pas' {FormTelaCarregamento},
  UnFormAtualizarEstoque in 'Units\UnFormAtualizarEstoque.pas' {FormAtualizarEstoque},
  UnFormPadraoFramework in 'Units\UnFormPadraoFramework.pas' {FormPadraoFramwork},
  UnFormCadastroEmpresa in 'Units\UnFormCadastroEmpresa.pas' {FormCadastroEmpresa},
  UnFormCadastroDepartamento in 'Units\UnFormCadastroDepartamento.pas' {FormCadastroDepartamento},
  UnFormLoginEmpresa in 'Units\UnFormLoginEmpresa.pas' {FormLoginEmpresa},
  UnCLIENTETypes in 'Metadados\UnCLIENTETypes.pas',
  UnEMPRESATypes in 'Metadados\UnEMPRESATypes.pas',
  UnMUNICIPIOTypes in 'Metadados\UnMUNICIPIOTypes.pas',
  UnLICEN�ASSOFTWARETypes in 'Metadados\UnLICEN�ASSOFTWARETypes.pas',
  UnREGISTRARVENDATypes in 'Metadados\UnREGISTRARVENDATypes.pas',
  UnVENDASTypes in 'Metadados\UnVENDASTypes.pas',
  UnFormCadastroSetor in 'Units\UnFormCadastroSetor.pas' {FormCadastroSetor},
  UnFormCadastroCargo in 'Units\UnFormCadastroCargo.pas' {FormCadastroCargo},
  UnFormCaixaVendas in 'Units\UnFormCaixaVendas.pas' {FormCaixaVendas},
  UnLookupFramePadrao in 'Frames\UnLookupFramePadrao.pas' {LookupFramePadrao: TFrame},
  UnFormPadraoPesquisaLookupFrame in 'Frames\UnFormPadraoPesquisaLookupFrame.pas' {FormPesquisaLookup},
  UnLookupFrameUF in 'Frames\UnLookupFrameUF.pas' {LookupFrameUF: TFrame},
  UnFormPesquisaLookupUF in 'Frames\UnFormPesquisaLookupUF.pas' {FormPesquisaUF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmValidar, DmValidar);
  Application.CreateForm(TDmMenuPrincipal, DmMenuPrincipal);
  Application.CreateForm(TFormTelaCarregamento, FormTelaCarregamento);
  Application.CreateForm(TFormPesquisaLookup, FormPesquisaLookup);
  Application.CreateForm(TFormPesquisaUF, FormPesquisaUF);
  Application.Run;
end.
