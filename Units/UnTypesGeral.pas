unit UnTypesGeral;

interface

uses
  UnFormLogin, Vcl.Controls, Vcl.Dialogs, System.SysUtils;

type
  CGeralTypes = Record
    CUsuarioLogado: string;
  End;

  TGTypeGeral = class
    class procedure SetFocusCampo(ASender: TObject; AControle: TWinControl);
    class function ValidarCampoNumerico(ASender: TObject;
      AControle: TWinControl; AText, ANomeCampoMessage: String): String;
  end;

implementation

uses
  UnFormMenuPrincipal;
class procedure TGTypeGeral.SetFocusCampo(ASender: TObject;
  AControle: TWinControl);
begin
  if ASender <> nil then
  begin
    if AControle.CanFocus then
      AControle.SetFocus;
  end;
end;

class function TGTypeGeral.ValidarCampoNumerico(ASender: TObject;
  AControle: TWinControl; AText, ANomeCampoMessage: String): String;
var
  I: integer;
begin
  if ASender = nil then
  begin
    if AText <> '' then
    begin
      for I := 0 to AText.Length do
      begin
        if not(StrToIntDef(AText[I], 11) >= 0) and
          not(StrToIntDef(AText[I], 11) <= 9) then
          AText[I] := ' ';
      end;
    end;
  end;
end;

end.
