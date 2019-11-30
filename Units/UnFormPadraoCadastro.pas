unit UnFormPadraoCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  UnDmConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList;

type
  TFormPadraoCadastro = class(TForm)
    pnlOpcoes: TPanel;
    pgcFormCadastro: TPageControl;
    tsConsultas: TTabSheet;
    pnlConsultas: TPanel;
    pgcConsultas: TPageControl;
    tsConsultasPrincipal: TTabSheet;
    dbConsultas: TDBGrid;
    tsCadastro: TTabSheet;
    pgcCadastro: TPageControl;
    pnlCadastro: TPanel;
    tsCadastroPrincipal: TTabSheet;
    cbxTipoFiltro: TComboBox;
    edtConsultas: TEdit;
    gprFiltro: TGroupBox;
    SqlCadastro: TFDQuery;
    dsCadastro: TDataSource;
    pnlFoter: TPanel;
    pgbAguarde: TProgressBar;
    cbxModoFiltro: TComboBox;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCanselar: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnSair: TSpeedButton;
    btnDeletar: TSpeedButton;
    actCadastro: TActionList;
    actSalvar: TAction;
    actEditar: TAction;
    actNovo: TAction;
    actCanselar: TAction;
    actExcluir: TAction;
    actImprimir: TAction;
    actSair: TAction;
    btnFiltrar: TSpeedButton;
    opdCarregarArquivo: TOpenDialog;
    actAvancar: TAction;
    actUltimo: TAction;
    actVoltar: TAction;
    actPrimeiro: TAction;
    actPesquisar: TAction;
    lblStatus: TLabel;
    gpbConsultar: TGroupBox;
    SQLConsultas: TFDQuery;
    dsConsultas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actCanselarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actAvancarExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actVoltarExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure edtConsultasChange(Sender: TObject);
  private
    FCampoFiltro: string;
  public
  protected
    property CampoFiltro: string read FCampoFiltro write FCampoFiltro;
    procedure InserirSQL(ANomeTabela: string); virtual;
    procedure SetConfigInicial; virtual;
    procedure FiltrarSQL(ACamposMostraGrid, ATextoFiltro,
      ANomeTabela: string); virtual;
    procedure CarregarItemComboBox(ATextExibicao, ANomeItem: string); virtual;
    procedure ConfigVisual; virtual;
    procedure ValidarCamposTexto(Sender: TObject; dbeEdit: TEdit;
      ANomeCampo, ATexto: string); virtual;
    procedure ValidarEmail(Sender: TObject; dbeEdit: TEdit;
      ANomeCampo, ATextoEmail: string); virtual;
    procedure CarregarBarraProgresso; virtual;
  end;

var
  FormPadraoCadastro: TFormPadraoCadastro;
  LCoutListItems: array [0 .. 10] of string;

implementation

uses
  UnTypesGeral;

var
  I: integer;
{$R *.dfm}

procedure TFormPadraoCadastro.actAvancarExecute(Sender: TObject);
begin
  SqlCadastro.Next;
end;

procedure TFormPadraoCadastro.actCanselarExecute(Sender: TObject);
begin
  SqlCadastro.Cancel;
  SetConfigInicial;
  tsConsultas.Show;
  CarregarBarraProgresso;
end;

procedure TFormPadraoCadastro.actEditarExecute(Sender: TObject);
begin
  SetConfigInicial;
  SqlCadastro.Edit;
end;

procedure TFormPadraoCadastro.actExcluirExecute(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir o Registro ?', mtInformation, mbYesNo, 0, mbYes)
    = mrYes then
  begin
    SetConfigInicial;
    SqlCadastro.Delete;
    actSalvar.Execute;
    CarregarBarraProgresso;
  end;
end;

procedure TFormPadraoCadastro.actImprimirExecute(Sender: TObject);
begin
  ShowMessage('N�o Disponivel nesta Vers�o!!');
end;

procedure TFormPadraoCadastro.actNovoExecute(Sender: TObject);
begin
  tsCadastro.Show;
  SqlCadastro.Insert;
  SetConfigInicial;
end;

procedure TFormPadraoCadastro.actPrimeiroExecute(Sender: TObject);
begin
  SqlCadastro.First;
end;

procedure TFormPadraoCadastro.actSairExecute(Sender: TObject);
begin
  if SqlCadastro.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Existem dados n�o salvos, Deseja sair sem salvar ?',
      mtWarning, mbYesNo, 0, mbYes) = mrYes then
    begin
      actCanselar.Execute;
      Close;
    end;
  end
  else
    Close;
end;

procedure TFormPadraoCadastro.actSalvarExecute(Sender: TObject);
begin
  CarregarBarraProgresso;
  SetConfigInicial;
  SqlCadastro.Post;
  SqlCadastro.ApplyUpdates(0);
end;

procedure TFormPadraoCadastro.actUltimoExecute(Sender: TObject);
begin
  SqlCadastro.Last;
end;

procedure TFormPadraoCadastro.actVoltarExecute(Sender: TObject);
begin
  SqlCadastro.Prior;
end;

procedure TFormPadraoCadastro.CarregarBarraProgresso;
var
  I: integer;
begin
  I := 50;
  while I < 100 do
  begin
    pgbAguarde.Position := I;
    Sleep(1);
    I := I + 3;
  end;
  pgbAguarde.Position := 0;
end;

procedure TFormPadraoCadastro.CarregarItemComboBox(ATextExibicao,
  ANomeItem: string);
begin
  cbxTipoFiltro.Items.Add(ATextExibicao);
  LCoutListItems[I] := ANomeItem;
  I := I + 1;
end;

procedure TFormPadraoCadastro.ConfigVisual;
begin
  tsConsultas.TabVisible := false;
  tsCadastro.TabVisible := false;
  tsConsultas.Show;
  cbxTipoFiltro.ItemIndex := 0;
  cbxModoFiltro.ItemIndex := 0;
end;

procedure TFormPadraoCadastro.edtConsultasChange(Sender: TObject);
begin
  btnFiltrar.Enabled := edtConsultas.Text <> '';
end;

procedure TFormPadraoCadastro.FiltrarSQL(ACamposMostraGrid, ATextoFiltro,
  ANomeTabela: string);
begin
  with SQLConsultas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + ACamposMostraGrid);
    SQL.Add('FROM ' + ANomeTabela);
    if edtConsultas.Text <> EmptyStr then
    begin
      SQL.Add('WHERE ' + ANomeTabela + '.' + LCoutListItems
        [cbxModoFiltro.ItemIndex]);

      case cbxModoFiltro.ItemIndex of
        1:
          SQL.Add('LIKE ' + QuotedStr(ATextoFiltro + '%'));
        2:
          SQL.Add('LIKE ' + QuotedStr('%' + ATextoFiltro + '%'));
        3:
          SQL.Add('LIKE ' + QuotedStr('%' + ATextoFiltro));
        4:
          SQL.Add('= ' + ATextoFiltro);
      end;
    end;
    Open();
    Active := True;
  end;
end;

procedure TFormPadraoCadastro.FormShow(Sender: TObject);
begin
  SetConfigInicial;
  ConfigVisual;
end;

procedure TFormPadraoCadastro.InserirSQL(ANomeTabela: string);
begin
  with SqlCadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *');
    SQL.Add('FROM ' + ANomeTabela);
    Open();
    Active := True;
  end;
end;

procedure TFormPadraoCadastro.SetConfigInicial;
begin
  btnNovo.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnEditar.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnSalvar.Enabled := SqlCadastro.State in [dsInsert, dsEdit];
  btnCanselar.Enabled := SqlCadastro.State in [dsInsert, dsEdit];
  btnImprimir.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnDeletar.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnPrimeiro.Enabled := not(SqlCadastro.State in [dsInsert, dsEdit]);
  btnAvancar.Enabled := not(SqlCadastro.State in [dsInsert]);
  btnVoltar.Enabled := not(SqlCadastro.State in [dsInsert]);
  btnUltimo.Enabled := not(SqlCadastro.State in [dsInsert]);
end;

procedure TFormPadraoCadastro.ValidarCamposTexto(Sender: TObject;
  dbeEdit: TEdit; ANomeCampo, ATexto: string);
begin
  if ATexto.Length = 0 then
    ShowMessage('Campo [' + ANomeCampo + '] � de preemchimento obrigat�rio');
end;

procedure TFormPadraoCadastro.ValidarEmail(Sender: TObject; dbeEdit: TEdit;
  ANomeCampo, ATextoEmail: string);
var
  I: integer;
  LValidou: Boolean;
begin
  LValidou := True;
  for I := 0 to ATextoEmail.Length do
  begin
    if ATextoEmail[I] = '@' then
      exit
    else
      LValidou := false;
  end;
  if LValidou then
    ShowMessage('Campo [' + ANomeCampo + '] � de preemchimento obrigat�rio');
end;

end.
