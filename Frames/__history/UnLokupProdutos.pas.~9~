unit UnLokupProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnLookupFrame,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TLkpProdutos = class(TLookupFrame)
    procedure btnAbrirConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

implementation

uses
  UnTypesGeral, UnFormPesquisaProdutos;
{$R *.dfm}
{ TLkpProdutos }

procedure TLkpProdutos.btnAbrirConsultaClick(Sender: TObject);
begin
  TGTypeGeral.CarregarFormulario(TFormPesquisaProdutos);
end;

end.
