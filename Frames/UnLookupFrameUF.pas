unit UnLookupFrameUF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnLookupFramePadrao,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TLookupFrameUF = class(TLookupFramePadrao)
    procedure btnAbrirPesquisaClick(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  UnTypesGeral, UnFormPesquisaLookupUF;

{$R *.dfm}

procedure TLookupFrameUF.btnAbrirPesquisaClick(Sender: TObject);
begin
  inherited;
  TGTypeGeral.CarregarFormulario(TFormPesquisaUF, True);
end;

procedure TLookupFrameUF.edtCodigoEnter(Sender: TObject);
begin
  inherited;
  with SQL do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *');
    SQL.Add('FROM ESTADO');
    SQL.Add('WHERE ESTADO.CODIGO = ' + dbeCodigo.Text);
    Open();
  end;
end;

end.