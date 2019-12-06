unit UnFormPesquisaLookupUF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnFormPadraoPesquisaLookupFrame,
  Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormPesquisaUF = class(TFormPesquisaLookup)
    FDQuery1: TFDQuery;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaUF: TFormPesquisaUF;

implementation

{$R *.dfm}

procedure TFormPesquisaUF.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  with SQL do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *');
    SQL.Add('FROM ESTADO');
    SQL.Add('WHERE ESTADO.');
    case cbTipoFiltro.ItemIndex of
      1:
        SQL.Add('CODIGO LIKE ' + QuotedStr('%' + edtPesquisar.Text));
      2:
        SQL.Add('ESTADO LIKE ' + QuotedStr('%' + edtPesquisar.Text));
      3:
        SQL.Add('UF LIKE ' + QuotedStr('%' + edtPesquisar.Text));
    end;
    Open();
  end;
end;

procedure TFormPesquisaUF.FormShow(Sender: TObject);
begin
  inherited;
  btnAbrirCadastro.Visible := False;
end;

end.
