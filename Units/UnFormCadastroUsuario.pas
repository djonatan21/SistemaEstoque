unit UnFormCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnFormPadraoCadastro, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, Vcl.ActnList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCadastroUsuario = class(TFormPadraoCadastro)
    dbImgFotoPerfil: TDBImage;
    GroupBox1: TGroupBox;
    dbcbxSetor: TDBComboBox;
    dbeCbxCargo: TDBComboBox;
    gpbLogin: TGroupBox;
    dbedtUsuario: TDBEdit;
    edtConfirmarSenha: TEdit;
    dbEdtCodigo: TDBEdit;
    dbEdtNome: TDBEdit;
    dbEdtEmail: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblUsuario: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    btnAlterarImagem: TSpeedButton;
    actAlterarFoto: TAction;
    dbEdtSenha: TDBEdit;
    dbeCbTipoPermicao: TDBLookupComboBox;
    procedure actAlterarFotoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
  protected
    procedure Validacoes;
    procedure SetConfigInicial; override;
    procedure CarregarDadosCadastros;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

uses
  UnUSUARIOSTypes, UnTypesGeral, UnTypesCarregarSQL;

{$R *.dfm}

procedure TFormCadastroUsuario.actAlterarFotoExecute(Sender: TObject);
begin
  if opdCarregarArquivo.Execute then
  begin
    try
      dbImgFotoPerfil.Picture.LoadFromFile(opdCarregarArquivo.FileName);
    except
      if MessageDlg('Formato de Foto Invalido!!', mtError, mbYesNo, 0, mbYes) = mrYes
      then
        actAlterarFoto.Execute;
    end;
  end;
  inherited;
end;

procedure TFormCadastroUsuario.actFiltrarExecute(Sender: TObject);
begin
  FiltrarSQL(edtConsultas.Text, NomeTabela);
  inherited;
end;

procedure TFormCadastroUsuario.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbEdtCodigo.Text := IntToStr(TCarregarSQL.CarregarProximoID(ID, NomeTabela));
  CarregarDadosCadastros;
  TGTypeGeral.SetFocusCampo(Sender, dbEdtNome);
end;

procedure TFormCadastroUsuario.actSalvarExecute(Sender: TObject);
begin
  if dbEdtSenha.Text = edtConfirmarSenha.Text then
  begin
    SqlCadastro.ParamByName(SENHA).AsString := dbEdtSenha.Text;
    inherited;
  end
  else
    ShowMessage('A senha de confirmação nâo é iguail');
end;

procedure TFormCadastroUsuario.CarregarDadosCadastros;
begin
  with SQLConsultas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *');
    SQL.Add('FROM LICENÇASSOFTWARE');
    Open();
  end;
end;

procedure TFormCadastroUsuario.SetConfigInicial;
begin
  inherited;
  // edtConfirmarSenha.Text := SqlCadastro.ParamByName(SENHA).AsString;
  CarregarItemComboBox('Codigo', ID);
end;

procedure TFormCadastroUsuario.Validacoes;
begin
  // ValidarCamposTexto(Sender, dbEdtNome, dbEdtNome.Text, 'Nome');
  inherited;
end;

initialization

RegisterClass(TFormCadastroUsuario);

finalization

UnRegisterClass(TFormCadastroUsuario);

end.
