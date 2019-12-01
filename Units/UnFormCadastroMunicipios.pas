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
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, UnLookupFrame,
  UnLokupProdutos;

type
  TFormCadastroMunicipios = class(TFormPadraoCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMunicipios: TFormCadastroMunicipios;

implementation

{$R *.dfm}

initialization

RegisterClass(TFormCadastroMunicipios);

finalization

UnRegisterClass(TFormCadastroMunicipios);

end.
