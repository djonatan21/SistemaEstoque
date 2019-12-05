unit UnTypesCarregarSQL;

interface

uses
  UnDmMenuPrincipal, Vcl.Controls, Vcl.Dialogs, System.SysUtils;

type
  CUsuarioLogado = record
    ACodigoUsuarioLogado: Integer;
  end;

  TCarregarSQL = class
    class procedure ExcluirItem;
    class Procedure SubTotalVenda;
    class procedure ConsultarProduto(ACodigo: Integer);
    class procedure CarregarConfiguracoesUsuarioLogado;
    class Function ValidarLoginUsuario(AUsuario, ASenha: string): Boolean;
    class Function CarregarProximoID(ASqlColuna, ANomeTabela: string): Integer;
    class Function AtualizarSaldo(AColuna, ANomeTabela: string): Extended;
    class procedure AdicionarItemNaCompra;
    class procedure SQLCadastroProdutos;
  end;

implementation

uses
  UnDmValidacoesTypesGeral, UnFormMenuPrincipal, UnREGISTRARVENDATypes,
  UnFormCaixaVendas;

var
  GUsuarioLogadoSistema: string;

class procedure TCarregarSQL.AdicionarItemNaCompra;
begin
  with DmMenuPrincipal.SQLVenda do
  begin
    Insert;
    FieldByName(REGISTRARVENDA.ITEM).AsInteger := TCarregarSQL.CarregarProximoID
      (REGISTRARVENDA.ITEM, REGISTRARVENDA.NomeTabela);
    FieldByName('CODIGO_PRODUTO').AsInteger :=
      StrToInt(FormCaixaVendas.edtCodigo.Text);
    FieldByName('CODIGO_BARRA').AsString := DmMenuPrincipal.SQLCaixa.FieldByName
      ('CODIGO_BARRA').AsString;
    FieldByName('DESCRICAO').AsString := DmMenuPrincipal.SQLCaixa.FieldByName
      ('NOME').AsString;
    FieldByName('QUANTIDADE').AsExtended :=
      StrToFloatDef(FormCaixaVendas.edtQuantidade.Text, 0);
    FieldByName('UNIDADE').AsString := DmMenuPrincipal.SQLCaixa.FieldByName
      ('UNIDADE').AsString;
    FieldByName('VALOR').AsExtended := DmMenuPrincipal.SQLCaixa.FieldByName
      ('VALOR_VENDA').AsExtended;
    FieldByName('VALOR_TOTAL').AsExtended :=
      DmMenuPrincipal.SQLCaixa.FieldByName('VALOR_VENDA').AsExtended *
      DmMenuPrincipal.SQLCaixa.FieldByName('QUANTIDADE').AsExtended;
    FormCaixaVendas.edtSubTotal.Text :=
      FloatToStr(TCarregarSQL.AtualizarSaldo('VALOR_TOTAL', 'REGISTRARVENDA'));

    FormCaixaVendas.edtTotalVenda.Text :=
      FloatToStr(TCarregarSQL.AtualizarSaldo('VALOR_TOTAL', 'REGISTRARVENDA'));
    FieldByName('VALOR_TOTAL').AsExtended := TCarregarSQL.AtualizarSaldo
      ('VALOR_TOTAL', 'REGISTRARVENDA');
    FormCaixaVendas.lblTotalItemsCarinho.Caption := 'Total de Item: 0' +
      IntToStr(TCarregarSQL.CarregarProximoID('ITEM', 'REGISTRARVENDA') - 1);

  end;
end;

class function TCarregarSQL.AtualizarSaldo(AColuna, ANomeTabela: string)
  : Extended;
begin
  with DmValidar.SQLValidar do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COALESCE(SUM(' + AColuna + '),0) AS RESULT');
    SQL.Add('FROM ' + ANomeTabela);
    Open();
    Result := Fields[0].value;
  end;
end;

class procedure TCarregarSQL.CarregarConfiguracoesUsuarioLogado;
var
  LUsuarioLogado: CUsuarioLogado;
begin
  with DmMenuPrincipal.SQLConfigSistema do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *');
    SQL.Add('  FROM USUARIOS');
    SQL.Add(' WHERE USUARIOS.USUARIO =' + GUsuarioLogadoSistema);
    Open();
  end;
end;

class function TCarregarSQL.CarregarProximoID(ASqlColuna,
  ANomeTabela: string): Integer;
begin
  try
    with DmValidar.SQLValidar do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COALESCE(MAX(' + ASqlColuna + '),0) AS RESULT');
      SQL.Add('FROM ' + ANomeTabela);
      Open();
      Result := Fields[0].value + 1;
    end;
  except
    Result := 0;
  end;
end;

class procedure TCarregarSQL.ConsultarProduto(ACodigo: Integer);
begin
  with DmMenuPrincipal.SQLCaixa do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PRODUTOS.ID,');
    SQL.Add('       PRODUTOS.CODIGO,');
    SQL.Add('       PRODUTOS.CODIGO_BARRA,');
    SQL.Add('       PRODUTOS.NOME,');
    SQL.Add('       PRODUTOS.VALOR_COMPRA,');
    SQL.Add('       PRODUTOS.VALOR_VENDA, ');
    SQL.Add('       PRODUTOS.IMAGEM,');
    SQL.Add('       PRODUTOS.DESCRICAO,');
    SQL.Add('       PRODUTOS.QUANTIDADE,');
    SQL.Add('       PRODUTOS.UNIDADE');
    SQL.Add('  FROM PRODUTOS');
    SQL.Add(' WHERE PRODUTOS.CODIGO =:Cod');
    ParamByName('Cod').AsExtended := ACodigo;
    Open();
    if IsEmpty then
      ShowMessage('C�digo n�o emcontrado!!');
  end;
end;

class procedure TCarregarSQL.ExcluirItem;
begin

end;

class procedure TCarregarSQL.SQLCadastroProdutos;
begin
  { SELECT CLIENTE.ID,
    CLIENTE. NOME,
    CLIENTE.DATANASCIMENTO,
    CLIENTE.CPF,
    CLIENTE.RG,
    CLIENTE.MUNICIPIO,
    CLIENTE.COMPLEMENTO,
    CLIENTE.ENDERECO,
    CLIENTE.TELEFONE,
    CLIENTE.CELULAR,
    CLIENTE.SEXO,
    CLIENTE.CEP,
    CLIENTE.REFERENCIA,
    CLIENTE.CODIGO,
    CLIENTE.EMAIL,
    CLIENTE.IMAGEM,
    CLIENTE.BAIRRO,
    CLIENTE.UF
    FROM CLIENTE
  }
end;

class procedure TCarregarSQL.SubTotalVenda;
begin

end;

class function TCarregarSQL.ValidarLoginUsuario(AUsuario,
  ASenha: string): Boolean;
var
  LUsuarioLogado: CUsuarioLogado;
begin
  with DmMenuPrincipal.SQLLogin do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT USUARIOS.USUARIO,');
    SQL.Add('       USUARIOS.SENHA');
    SQL.Add('  FROM USUARIOS');
    SQL.Add(' WHERE USUARIOS.USUARIO  = ' + QuotedStr(UpperCase(AUsuario)));
    SQL.Add('   AND USUARIOS.SENHA = ' + QuotedStr(UpperCase(ASenha)));
    Open();
    GUsuarioLogadoSistema := AUsuario;
    if IsEmpty then
      Result := False
    else
      Result := True;
  end;

end;

end.
