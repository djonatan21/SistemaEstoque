unit UnFormCadastroMunicipios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnFormPadraoCadastro, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, Vcl.ActnList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormCadastroMunicipios = class(TFormPadraoCadastro)
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtIbge: TEdit;
    edtDDD: TEdit;
    cbRegiao: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMunicipios: TFormCadastroMunicipios;

implementation

uses
  UnTypesCarregarSQL;

{$R *.dfm}

procedure TFormCadastroMunicipios.actNovoExecute(Sender: TObject);
begin
  inherited;
  edtCodigo.Text := IntToStr(TCarregarSQL.CarregarProximoID('ID', 'MUNICIPIO'));
end;

procedure TFormCadastroMunicipios.actSalvarExecute(Sender: TObject);
begin
  inherited;
  with SqlCadastro do
  begin
    FieldByName('ID').AsInteger := StrToInt(edtCodigo.Text);
    FieldByName('NOME').AsString := edtNome.Text;
    { FieldByName('ESTADO').AsInteger := StrToInt(); }
    FieldByName('DDD').AsString := edtDDD.Text;
    FieldByName('IBGE').AsInteger := StrToInt(edtIbge.Text);
    FieldByName('REGIAO').AsInteger := cbRegiao.ItemIndex;
    { FieldByName('UF').AsString:= }
    { FieldByName('PAIS').AsString:= }
  end;
end;

initialization

RegisterClass(TFormCadastroMunicipios);

finalization

UnRegisterClass(TFormCadastroMunicipios);

end.
