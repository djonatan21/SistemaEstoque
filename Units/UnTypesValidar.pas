unit UnTypesValidar;

interface

uses
  UnDmValidacoesTypesGeral, Vcl.Controls;

type
  TValidar = class
    class function ValidarCampoNumerico(ASender: TObject;
      AControle: TWinControl; AText, ANomeCampoMessage: String): Boolean;
  end;

implementation

{ TValidar }

class function TValidar.ValidarCampoNumerico(ASender: TObject;
  AControle: TWinControl; AText, ANomeCampoMessage: String): Boolean;
begin
  if ASender = nil then
  begin
       if True then
       
  end;

end;

end.
