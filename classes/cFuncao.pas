unit cFuncao;

interface

uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     System.SysUtils,
     Vcl.Forms,
     Vcl.Buttons,
     cAcaoAcesso,
     cUsuarioLogado,
     RLReport;

type
  TFuncao = class
  private

  public
    class procedure CriarForm(aNomeForm: TFormClass; oUsuarioLogado: TUsuarioLogado; aConexao:TZConnection); static;
    class procedure CriarRelatorio(aNomeForm: TFormClass; oUsuarioLogado: TUsuarioLogado ; aConexao:TZConnection); static;

  end;

implementation



class procedure TFuncao.CriarForm(aNomeForm: TFormClass; oUsuarioLogado: TUsuarioLogado; aConexao:TZConnection);
var form: TForm;
begin
  try
    form := aNomeForm.Create(Application);
    if TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, form.Name, aConexao) then
    begin
      form.ShowModal;
    end
    else begin
       MessageDlg('Usuário: '+oUsuarioLogado.nome +' Não tem Permissão de Acesso',mtWarning,[mbOK],0);
    end;
  finally
    if Assigned(form) then
       form.Release;
  end;
end;


class procedure TFuncao.CriarRelatorio(aNomeForm: TFormClass; oUsuarioLogado: TUsuarioLogado; aConexao:TZConnection);
var form: TForm;
    aRelatorio:TRLReport;
    i:Integer;
begin
  try
    form := aNomeForm.Create(Application);
    if TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, form.Name, aConexao) then
    begin
      for I := 0 to form.ComponentCount-1 do
      begin
        if form.Components[i] is TRLReport then
        begin
           TRLReport(form.Components[i]).PreviewModal;
           Break;
        end;
      end;
    end
    else begin
       MessageDlg('Usuário: '+oUsuarioLogado.nome +', não tem permissão de acesso',mtWarning,[mbOK],0);
    end;
  finally
    if Assigned(form) then
       form.Release;
  end;
end;

end.
