unit UnLookupFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TLookupFrame = class(TFrame)
    pnlLkp: TPanel;
    btnAbrirConsulta: TSpeedButton;
    lblDescricao: TLabel;
    lblCaptionLkp: TLabel;
    edtCodigo: TEdit;
    procedure edtCodigoChange(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure btnAbrirConsultaClick(Sender: TObject);
  public
    FCaptionLKP: String;
    FCampoDescricao: String;
    FNomeTabela: String;
    FCampoBanco: String;
    FColunaCodigo: string;
    FCampoSalvarBanco: string;
  protected
    property CaptionLKP: String read FCaptionLKP write FCaptionLKP;
    property NomeTabela: String read FNomeTabela write FNomeTabela;
    property CampoDescricao: String read FCampoDescricao write FCampoDescricao;
    property CampoBanco: String read FCampoBanco write FCampoBanco;
    property ColunaCodigo: string read FColunaCodigo write FColunaCodigo;
    property CampoSalvarBanco: string read FCampoSalvarBanco
      write FCampoSalvarBanco;
    procedure CarregarSQL;
    procedure AbrirFormPesquisaLkp;
  end;

implementation

uses
  UnFormPesquisaLKP;

{$R *.dfm}
{ TLookupFrame }

procedure TLookupFrame.AbrirFormPesquisaLkp;
var
  LCarregarFormPesquisa: TFormPesquisaLkp;
begin
  LCarregarFormPesquisa := TFormPesquisaLkp.Create(Self);
  try
    LCarregarFormPesquisa.ShowModal;
  finally
    FreeAndNil(LCarregarFormPesquisa);
  end;
end;

procedure TLookupFrame.btnAbrirConsultaClick(Sender: TObject);
begin
  AbrirFormPesquisaLkp;
end;

procedure TLookupFrame.CarregarSQL;
var
  LCarregarSQL: TFDQuery;
begin
  LCarregarSQL := TFDQuery.Create(Self);
  try
    with LCarregarSQL do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT ' + FColunaCodigo);
      sql.Add('FROM' + FNomeTabela);
      sql.Add('WHERE ' + FColunaCodigo + ' = ' + edtCodigo.Text);
      Open();
      if IsEmpty then
        ShowMessage('C�digo n�o Cadastrado!!')
      else
        lblDescricao.Caption := FieldByName(FCampoDescricao).AsString;
      FieldByName(FCampoSalvarBanco).AsInteger := StrToInt(edtCodigo.Text);
    end;
  finally
    FreeAndNil(LCarregarSQL);
  end;
end;

procedure TLookupFrame.edtCodigoChange(Sender: TObject);
begin
  CarregarSQL;
end;

procedure TLookupFrame.FrameEnter(Sender: TObject);
begin
  lblCaptionLkp.Caption := FCaptionLKP;
end;

end.
