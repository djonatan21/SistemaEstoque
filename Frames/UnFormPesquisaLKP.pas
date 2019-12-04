unit UnFormPesquisaLKP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormPesquisaLkp = class(TForm)
    pnlMenuTop: TPanel;
    btnClosePesquisa: TSpeedButton;
    dbGridPesquisa: TDBGrid;
    edtPesquisa: TEdit;
    btnPesquisar: TSpeedButton;
    SQLPesquisa: TFDQuery;
    dsPesquisa: TDataSource;
    pnlLookupPesquisa: TPanel;
    btnAbrirCadastro: TSpeedButton;
    cbTipoFiltro: TComboBox;
    cbFiltrarCampo: TComboBox;
    procedure btnClosePesquisaClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CarregarItemCamposFiltro(ATexto, ACampoSQL: string); Virtual;
  end;

var
  FormPesquisaLkp: TFormPesquisaLkp;

implementation

uses
  UnLookupFrame, UnDmConexao;

{$R *.dfm}

var
  LFrame: TLookupFrame;
  LItemsCampoPesquisa: array [0 .. 10] of string;

procedure TFormPesquisaLkp.btnClosePesquisaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPesquisaLkp.btnPesquisarClick(Sender: TObject);
begin
  with SQLPesquisa do
  begin
    Close;
    sql.Add('SELECT *');
    sql.Add('FROM ' + LFrame.FNomeTabela);
    sql.Add('WHERE ' + LFrame.FColunaNomePesqisa + '=' + edtPesquisa.Text);
    Open();
  end;
end;

procedure TFormPesquisaLkp.CarregarItemCamposFiltro(ATexto, ACampoSQL: string);
var
  I: integer;
begin
  cbFiltrarCampo.Items.Add(ATexto);
  LItemsCampoPesquisa[I] := ACampoSQL;
  I := I + 1;
  inherited;
end;

end.
