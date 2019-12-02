unit UnLokupProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnLookupFrame,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TLkpProdutos = class(TLookupFrame)
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}
{ TLkpProdutos }

constructor TLkpProdutos.Create(AOwner: TComponent);
begin
  FColunaNomePesqisa := 'DESCRICAO';
  FColunaCodigo := 'CODIGO';
  FCaptionLKP := 'Produto:';
  FCampoDescricao := 'DESCRICAO';
  FNomeTabela := 'PRODUTOS';
  inherited;
end;

end.
