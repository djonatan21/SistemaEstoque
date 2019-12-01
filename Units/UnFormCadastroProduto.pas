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
  Vcl.Mask, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

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
    pnlImgProduto: TPanel;
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure imgProdutoClick(Sender: TObject);
  private
  public
  protected
    procedure SetConfigInicial; override;
    procedure SetCamposBanco;
  end;

var
  FormCadastroProduto: TFormCadastroProduto;

implementation

uses
  UnPRODUTOSTypes, UnTypesGeral, UnTypesCarregarSQL;

{$R *.dfm}

procedure TFormCadastroProduto.actNovoExecute(Sender: TObject);
begin
  inherited;
  edtCodigo.Text := IntToStr(TCarregarSQL.CarregarProximoID('CODIGO',
    'PRODUTOS'));
end;

procedure TFormCadastroProduto.actSalvarExecute(Sender: TObject);
begin
  SetCamposBanco;
  inherited;

end;

procedure TFormCadastroProduto.imgProdutoClick(Sender: TObject);
begin
  inherited;
  TGTypeGeral.CarregarImagemEmTImage(Sender, opdCarregarArquivo, imgProduto);
end;

procedure TFormCadastroProduto.SetCamposBanco;
begin
  with SqlCadastro do
  begin
    FieldByName('ID').AsInteger := TCarregarSQL.CarregarProximoID('ID',
      'PRODUTOS');
    FieldByName('CODIGO').AsInteger := StrToIntDef(edtCodigo.Text, 0);
    FieldByName('DESCRICAO').AsString := edtDescricao.Text;
    FieldByName('VALOR_VENDA').AsFloat := StrToFloatDef(edtPrecoVenda.Text, 0);
    FieldByName('VALOR_COMPRA').AsFloat := StrToFloatDef(edtPrecoCusto.Text, 0);
    FieldByName('QUANTIDADE').AsInteger := StrToIntDef(edtQuantEstoque.Text, 0);
    // FieldByName('IMAGE'). :=
    FieldByName('CODIGO_BARRA').AsString := edtCodigoBarras.Text;
    FieldByName('UNIDADE').AsInteger := cbUnidade.ItemIndex;
    FieldByName('CATEGORIA').AsInteger := cbCategoria.ItemIndex;
    FieldByName('MARCA').AsInteger := cbMarca.ItemIndex;
    FieldByName('CATEGORIA').AsInteger := cbCategoria.ItemIndex;
    FieldByName('LOCALIZACAO').AsString := edtLocalizacao.Text;
    FieldByName('LIMITEESTOQUE').AsInteger :=
      StrToIntDef(edtQuantEstoque.Text, 0);
    FieldByName('OBSERVACOES').AsString := memoObservacoes.Text;
    FieldByName('PESOBRUTO').AsFloat := StrToFloatDef(edtPesoBruto.Text, 0);
    FieldByName('PESOLIQUIDO').AsFloat := StrToFloatDef(edtPesoLiquido.Text, 0);
  end;
end;

procedure TFormCadastroProduto.SetConfigInicial;
begin
  inherited;
end;

end.
