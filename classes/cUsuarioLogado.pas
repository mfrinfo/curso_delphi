unit cUsuarioLogado;

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
     uFuncaoCriptografia;

type
  TUsuarioLogado = class
  private
    F_usuarioId:Integer;
    F_nome:String;
    F_senha: string;

  public
    class function TenhoAcesso(aUsuarioId: Integer; aChave: String;
      aConexao: TZConnection): Boolean; static;

  published
    property codigo        :Integer    read F_usuarioId      write F_usuarioId;
    property nome          :string     read F_nome           write F_nome;
    property senha         :string     read F_senha          write F_senha;
  end;


implementation

class function TUsuarioLogado.TenhoAcesso(aUsuarioId:Integer; aChave:String; aConexao: TZConnection):Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=aConexao;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT usuarioId '+
                '  FROM usuariosAcaoAcesso '+
                ' WHERE usuarioId=:usuarioId  '+
                '   AND acaoAcessoId=(SELECT TOP 1 acaoAcessoId FROM acaoAcesso WHERE chave=:chave)'+
                '   AND ativo=1');
    Qry.ParamByName('usuarioId').AsInteger       :=aUsuarioId;
    Qry.ParamByName('chave').AsString            :=aChave;

    Qry.Open;

    if Qry.IsEmpty then
       Result:=false

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

end.
