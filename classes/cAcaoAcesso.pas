unit cAcaoAcesso;

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
     Vcl.Buttons;

type
  TAcaoAcesso = class
  private
    ConexaoDB:TZConnection;
    F_acaoAcessoId:Integer;
    F_descricao:String;
    F_chave: string;
    class procedure PreencherAcoes(aForm: TForm; aConexao:TZConnection); static;
    class procedure VerificarUsuarioAcao(aUsuarioId, aAcaoAcessoId: Integer;
      aConexao: TZConnection); static;
  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir:Boolean;
    function Atualizar:Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer):Boolean;
    function ChaveExiste(aChave: String; aId:Integer=0): Boolean;

    class procedure CriarAcoes(aNomeForm: TFormClass; aConexao: TZConnection); static;
    class procedure PreencherUsuariosVsAcoes(aConexao: TZConnection); static;

  published
    property codigo        :Integer    read F_acaoAcessoId  write F_acaoAcessoId;
    property descricao     :string     read F_descricao     write F_descricao;
    property chave         :string     read F_chave         write F_chave;
  end;

implementation

{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TAcaoAcesso.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TAcaoAcesso.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TAcaoAcesso.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: '+IntToStr(F_acaoAcessoId)+#13+
                'Nome: '  +F_descricao, mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM acaoAcesso '+
                ' WHERE acaoAcessoId=:acaoAcessoId ');
    Qry.ParamByName('acaoAcessoId').AsInteger :=F_acaoAcessoId;
    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TAcaoAcesso.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE acaoAcesso '+
                '   SET descricao     =:descricao '+
                '      ,chave         =:chave '+
                ' WHERE acaoAcessoId=:acaoAcessoId ');
    Qry.ParamByName('acaoAcessoId').AsInteger    :=Self.F_acaoAcessoId;
    Qry.ParamByName('descricao').AsString        :=Self.F_descricao;
    Qry.ParamByName('chave').AsString            :=Self.F_chave;

    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TAcaoAcesso.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO acaoAcesso (descricao, '+
                '                        chave )'+
                ' VALUES                (:descricao, '+
                '                        :chave )' );

    Qry.ParamByName('descricao').AsString    :=Self.F_descricao;
    Qry.ParamByName('chave').AsString        :=Self.F_chave;

    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TAcaoAcesso.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT acaoAcessoId,'+
                '       descricao, '+
                '       chave '+
                '  FROM acaoAcesso '+
                ' WHERE acaoAcessoId=:acaoAcessoId');
    Qry.ParamByName('acaoAcessoId').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_acaoAcessoId  := Qry.FieldByName('acaoAcessoId').AsInteger;
      Self.F_descricao     := Qry.FieldByName('descricao').AsString;
      Self.F_chave         := Qry.FieldByName('chave').AsString;;
    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TAcaoAcesso.ChaveExiste(aChave: String; aId:Integer):Boolean;
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT COUNT(acaoAcessoId) AS Qtde '+
                '  FROM acaoAcesso '+
                ' WHERE chave =:chave ');
    if aId > 0 then
    begin
      Qry.SQL.Add(' AND acaoAcessoId<>:acaoAcessoId');
      Qry.ParamByName('acaoAcessoId').AsInteger :=aId;
    end;

    Qry.ParamByName('chave').AsString :=aChave;
    Try
      Qry.Open;

      if Qry.FieldByName('Qtde').AsInteger>0 then
         result := true
      else
         result := false;

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;


class procedure TAcaoAcesso.PreencherAcoes(aForm: TForm; aConexao:TZConnection);
var i:Integer;
    oAcaoAcesso:TAcaoAcesso;
begin
  try
    oAcaoAcesso:=TAcaoAcesso.Create(aConexao);
    oAcaoAcesso.descricao := aForm.Caption;
    oAcaoAcesso.Chave := aForm.Name;
    if not oAcaoAcesso.ChaveExiste(oAcaoAcesso.Chave) then
       oAcaoAcesso.Inserir;

    for I := 0 to aForm.ComponentCount -1 do
    begin
      if (aForm.Components[i] is TBitBtn) then
      begin
        if TBitBtn(aForm.Components[i]).Tag=99 then
        begin
          oAcaoAcesso.descricao := '    - BOTÃO '+ StringReplace(TBitBtn(aForm.Components[i]).Caption, '&','',[rfReplaceAll]);
          oAcaoAcesso.Chave     := aForm.Name+'_'+TBitBtn(aForm.Components[i]).Name;
          if not oAcaoAcesso.ChaveExiste(oAcaoAcesso.Chave) then
             oAcaoAcesso.Inserir;
        end;
      end;
    end;

  finally
    if Assigned(oAcaoAcesso) then
       FreeAndNil(oAcaoAcesso);
  end;
end;

class procedure TAcaoAcesso.CriarAcoes(aNomeForm: TFormClass; aConexao:TZConnection);
var
  form: TForm;
begin
  try
    form := aNomeForm.Create(Application);
    PreencherAcoes(form,aConexao);
  finally
    if Assigned(form) then
       form.Release;
  end;
end;


class procedure TAcaoAcesso.VerificarUsuarioAcao(aUsuarioId:Integer; aAcaoAcessoId:Integer; aConexao:TZConnection);
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=aConexao;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT usuarioId '+
                '  FROM usuariosAcaoAcesso '+
                ' WHERE usuarioId=:usuarioId '+
                '   AND acaoAcessoId=:acaoAcessoId ');
    Qry.ParamByName('usuarioId').AsInteger:=aUsuarioId;
    Qry.ParamByName('acaoAcessoId').AsInteger:=aAcaoAcessoId;
    Qry.Open;

    if Qry.IsEmpty then
    begin
       Qry.Close;
       Qry.SQL.Clear;
       Qry.SQL.Add('INSERT INTO usuariosAcaoAcesso (usuarioId, acaoAcessoId, ativo) '+
                   '     VALUES (:usuarioId, :acaoAcessoId, :ativo) ');
       Qry.ParamByName('usuarioId').AsInteger:=aUsuarioId;
       Qry.ParamByName('acaoAcessoId').AsInteger:=aAcaoAcessoId;
       Qry.ParamByName('ativo').AsBoolean:=true;
       Try
         aConexao.StartTransaction;
         Qry.ExecSQL;
         aConexao.Commit;
       Except
         aConexao.Rollback;
       End;
    end;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;

end;

class procedure TAcaoAcesso.PreencherUsuariosVsAcoes(aConexao:TZConnection);
var Qry:TZQuery;
    QryAcaoAcesso:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=aConexao;
    Qry.SQL.Clear;

    QryAcaoAcesso:=TZQuery.Create(nil);
    QryAcaoAcesso.Connection:=aConexao;
    QryAcaoAcesso.SQL.Clear;

    Qry.SQL.Add('SELECT usuarioId FROM usuarios ');
    Qry.Open;

    QryAcaoAcesso.SQL.Add('SELECT acaoAcessoId FROM acaoAcesso ');
    QryAcaoAcesso.Open;

    while not Qry.Eof do
    begin
      QryAcaoAcesso.First;

      while not QryAcaoAcesso.Eof do
      begin
        VerificarUsuarioAcao(Qry.FieldByName('usuarioId').AsInteger, QryAcaoAcesso.FieldByName('acaoAcessoId').AsInteger, aConexao);
        QryAcaoAcesso.Next;
      end;

      Qry.Next;
    end;
  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

{$endregion}


end.
