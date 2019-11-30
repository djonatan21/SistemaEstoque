unit UnFormCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnFormPadraoCadastro, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.DBCtrls,
  Vcl.Mask;

type
  TFormCadastroProduto = class(TFormPadraoCadastro)
    edtCodigo: TMaskEdit;
    edtCodigoBarras: TMaskEdit;
    edtDescricao: TMaskEdit;
    edtLocalizacao: TMaskEdit;
    edtPrecoVenda: TMaskEdit;
    edtPrecoCusto: TMaskEdit;
    edtPesoBruto: TMaskEdit;
    cbCategoria: TComboBox;
    cbMarca: TComboBox;
    cbUnidade: TComboBox;
    cbLimiteEstoque: TComboBox;
    edtPesoLiquido: TMaskEdit;
    imgProduto: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtQuantEstoque: TMaskEdit;
    memoObservacoes: TMemo;
  private
  public
  protected
    procedure SetConfigInicial; override;
  end;

var
  FormCadastroProduto: TFormCadastroProduto;

implementation

uses
  UnPRODUTOSTypes, UnTypesGeral, UnTypesCarregarSQL;

{$R *.dfm}

procedure TFormCadastroProduto.SetConfigInicial;
begin
//  inherited;
end;

end.
