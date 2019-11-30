unit UnLookupFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TLookupFrame = class(TFrame)
    pnlLkp: TPanel;
    dbeCodigo: TDBEdit;
    btnAbrirConsulta: TSpeedButton;
    lblDescricao: TLabel;
    lblTitulo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
