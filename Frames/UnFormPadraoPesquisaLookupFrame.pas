unit UnFormPadraoPesquisaLookupFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,UnDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormPesquisaLookup = class(TForm)
    dbConsultas: TDBGrid;
    pnlMenuTop: TPanel;
    btnFexarPesquisa: TSpeedButton;
    btnConfirmar: TSpeedButton;
    cbTipoFiltro: TComboBox;
    edtPesquisar: TEdit;
    btnPesquisar: TSpeedButton;
    btnAbrirCadastro: TSpeedButton;
    SQL: TFDQuery;
    dsConsultas: TDataSource;
    procedure btnFexarPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaLookup: TFormPesquisaLookup;

implementation

{$R *.dfm}

procedure TFormPesquisaLookup.btnFexarPesquisaClick(Sender: TObject);
begin
  Close;
end;

end.
