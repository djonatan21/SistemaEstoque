unit UnTypesGeral;

interface

uses
  UnFormLogin, Vcl.Controls, System.SysUtils, Vcl.Dialogs,
  Vcl.ExtCtrls;

type
  CGeralTypes = Record
    CUsuarioLogado: string;
  End;

  TGTypeGeral = class
    class procedure SetFocusCampo(ASender: TObject; AControle: TWinControl);
    class function ValidarCampoNumerico(ASender: TObject;
      AControle: TWinControl; AText, ANomeCampoMessage: String): String;
    class function MessageFormatoInvalido(AString: string = ''): Boolean;
    class function CarregarImagemEmTImage(ASender: TObject;
      AComponente: TOpenDialog; AImage: TImage): Boolean;
  end;

implementation

uses
  UnFormMenuPrincipal;

class function TGTypeGeral.CarregarImagemEmTImage(ASender: TObject;
  AComponente: TOpenDialog; AImage: TImage): Boolean;
begin
  if AComponente.Execute then
  begin
    try
      AImage.Picture.LoadFromFile(AComponente.FileName);
    except
      if TGTypeGeral.MessageFormatoInvalido('{OK} para buscar imagem.') then
        TGTypeGeral.CarregarImagemEmTImage(ASender, AComponente, AImage);

    end;
  end;
end;

class function TGTypeGeral.MessageFormatoInvalido(AString: string = '')
  : Boolean;
begin
  if MessageDlg('Formato invalido. ' + AString, mtWarning, mbOKCancel, 0, mbOK)
    = mrOk then
    Result := True
  else
    Result := False;
end;

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
