unit cProVenda;

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
     Data.DB,
     cControleEstoque,
     uEnum,
     Datasnap.DBClient;

type
  TVenda = class
  private
    ConexaoDB:TZConnection;
    F_vendaId:Integer;
    F_clienteId:Integer;
    F_dataVenda:TDateTime;
    F_totalVenda: Double;
    function EsteItemExiste(vendaId, produtoId: Integer): Boolean;
    function InNot(cds: TClientDataSet): String;
    function AtualizarItem(cds: TClientDataSet): Boolean;
    function ApagaItens(cds: TClientDataSet): Boolean;
    function InserirItens(cds: TClientDataSet; IdVenda: Integer): Boolean;
    procedure RetornarEstoque(sCodigo: String; Acao:TAcaoExcluirEstoque);
    procedure BaixarEstoque(produtoId:Integer; Quantidade:Double);

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir(cds:TClientDataSet):Integer;
    function Atualizar(cds:TClientDataSet):Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer; var cds:TClientDataSet):Boolean;
  published
    property VendaId:Integer     read F_vendaId    write F_vendaId;
    property ClienteId:Integer   read F_clienteId  write F_clienteId;
    property DataVenda:TDateTime read F_dataVenda  write F_dataVenda;
    property TotalVenda:Double   read F_totalVenda write F_totalVenda;
  end;

implementation


{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TVenda.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TVenda.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TVenda.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Venda Nro: '+IntToStr(F_VendaId),mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    ConexaoDB.StartTransaction;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    //Apaga os Itens Primeiro
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM vendasItens '+
                ' WHERE vendaId=:vendaId ');
    Qry.ParamByName('vendaId').AsInteger :=F_VendaId;
    Try
      Qry.ExecSQL;
      //Apaga a Tabela Master
      Qry.SQL.Clear;
      Qry.SQL.Add('DELETE FROM vendas '+
                  ' WHERE vendaId=:vendaId ');
      Qry.ParamByName('vendaId').AsInteger :=F_VendaId;
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

function TVenda.InNot(cds:TClientDataSet):String;
var sInNot:String;
begin
  sInNot:=EmptyStr;
  cds.First;
  while not cds.Eof do begin
    if sInNot=EmptyStr then
       sInNot := cds.FieldByName('produtoId').AsString
    else
       sInNot := sInNot +','+cds.FieldByName('produtoId').AsString;

    cds.Next;
  end;
  Result:=sInNot;
end;

function TVenda.Atualizar(cds:TClientDataSet): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    ConexaoDB.StartTransaction;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE vendas '+
                '   SET clienteId=:clienteId '+
                '      ,dataVenda=:dataVenda '+
                '      ,totalVenda=:totalVenda '+
                ' WHERE vendaId=:vendaId ');
    Qry.ParamByName('vendaId').AsInteger    :=Self.F_vendaId;
    Qry.ParamByName('clienteId').AsInteger  :=Self.F_clienteId;
    Qry.ParamByName('dataVenda').AsDateTime :=Self.F_dataVenda;
    Qry.ParamByName('totalVenda').AsFloat   :=Self.F_totalVenda;

    Try
      //Update
      Qry.ExecSQL;

      //Apagar Itens no banco que foram apagados na tela
      ApagaItens(cds);

      cds.First;
      while not cds.Eof do begin
        if EsteItemExiste(Self.F_vendaId, cds.FieldByName('produtoId').AsInteger) then begin
          AtualizarItem(cds);
        end
        else begin
          InserirItens(cds, Self.F_vendaId);
        end;
        cds.Next;
      end;
      ConexaoDB.Commit;
    Except
      Result:=false;
      ConexaoDB.Rollback;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.AtualizarItem(cds:TClientDataSet): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    RetornarEstoque(cds.FieldByName('produtoId').AsString, aeeAlterar);
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE VendasItens '+
                '   SET ValorUnitario=:ValorUnitario '+
                '      ,Quantidade=:Quantidade '+
                '      ,TotalProduto=:TotalProduto '+
                ' WHERE vendaId=:vendaId AND produtoId=:produtoId ');
    Qry.ParamByName('vendaId').AsInteger    :=Self.F_vendaId;
    Qry.ParamByName('produtoId').AsInteger  :=cds.FieldByName('produtoId').AsInteger;
    Qry.ParamByName('ValorUnitario').AsFloat:=cds.FieldByName('valorUnitario').AsFloat;
    Qry.ParamByName('Quantidade').AsFloat   :=cds.FieldByName('quantidade').AsFloat;
    Qry.ParamByName('TotalProduto').AsFloat :=cds.FieldByName('valorTotalProduto').AsFloat;

    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      BaixarEstoque(cds.FieldByName('produtoId').AsInteger, cds.FieldByName('quantidade').AsFloat);
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

Procedure TVenda.RetornarEstoque(sCodigo:String; Acao:TAcaoExcluirEstoque);
var Qry:TZQuery;
    oControleEstoque:TControleEstoque;
begin
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(   ' SELECT produtoId, quantidade '+
                   '   FROM VendasItens '+
                   '  WHERE VendaId=:vendaId ');
    if Acao=aeeApagar then
       Qry.SQL.Add('  AND produtoId NOT IN ('+sCodigo+') ')
    else
       Qry.SQL.Add('  AND produtoId = ('+sCodigo+') ');

    Qry.ParamByName('vendaId').AsInteger    :=Self.F_vendaId;
    Try
      oControleEstoque:=TControleEstoque.Create(ConexaoDB);
      Qry.Open;
      Qry.First;
      while not Qry.Eof do begin
         oControleEstoque.ProdutoId  :=Qry.FieldByName('produtoId').AsInteger;
         oControleEstoque.Quantidade :=Qry.FieldByName('quantidade').AsFloat;
         oControleEstoque.RetornarEstoque;
         Qry.Next;
      end;
    Finally
      if Assigned(oControleEstoque) then
         FreeAndNil(oControleEstoque);
    End;
end;

Procedure TVenda.BaixarEstoque(produtoId:Integer; Quantidade:Double);
var oControleEstoque:TControleEstoque;
begin
    Try
      oControleEstoque:=TControleEstoque.Create(ConexaoDB);
      oControleEstoque.ProdutoId  :=produtoId;
      oControleEstoque.Quantidade :=Quantidade;
      oControleEstoque.BaixarEstoque;
    Finally
      if Assigned(oControleEstoque) then
         FreeAndNil(oControleEstoque);
    End;
end;

function TVenda.ApagaItens(cds:TClientDataSet): Boolean;
var Qry:TZQuery;
    sCodNoCds:String;
begin
  try
    Result:=true;
    //Pega os codigos que estão no Cliente para Selecionar o In Not no Banco de Dados
    sCodNoCds:= InNot(cds);
    //Retorna ao Estoque
    RetornarEstoque(sCodNoCds, aeeApagar);

    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(' DELETE '+
                '   FROM VendasItens '+
                '  WHERE VendaId=:VendaId '+
                '    AND produtoId NOT IN ('+sCodNoCds+') ');
    Qry.ParamByName('vendaId').AsInteger    :=Self.F_vendaId;

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

function TVenda.Inserir(cds:TClientDataSet): Integer;
var Qry:TZQuery;
    IdVendaGerado:Integer;
begin
  try
    ConexaoDB.StartTransaction;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    //Faz a Inclusão no Banco de Dados
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO vendas (clienteId, dataVenda, totalVenda)  '+
                '            VALUES (:clienteId,:dataVenda,:totalVenda )');
    Qry.ParamByName('clienteId').AsInteger  :=Self.F_clienteId;
    Qry.ParamByName('dataVenda').AsDateTime :=Self.F_dataVenda;
    Qry.ParamByName('totalVenda').AsFloat   :=Self.F_totalVenda;

    Try
      Qry.ExecSQL;
      //Recupera o ID Gerado no Insert
      Qry.SQL.Clear;
      Qry.SQL.Add('SELECT SCOPE_IDENTITY() AS ID');
      Qry.Open;

      //Id da tabela Master (Venda)
      IdVendaGerado:=Qry.FieldByName('ID').AsInteger;

      {$region 'Gravar na tabela VendasItens'}
      cds.First;
      while not cds.Eof do begin
        InserirItens(cds, IdVendaGerado);
        cds.Next;
      end;
      {$endRegion}

      ConexaoDB.Commit;
      Result := IdVendaGerado;
    Except
      ConexaoDB.Rollback;
      Result:=-1;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.InserirItens(cds:TClientDataSet; IdVenda:Integer):Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO VendasItens ( VendaID, ProdutoID, ValorUnitario, Quantidade, TotalProduto) '+
                '                 VALUES (:VendaID,:ProdutoID,:ValorUnitario,:Quantidade,:TotalProduto) ');

    Qry.ParamByName('VendaID').AsInteger    := IdVenda;
    Qry.ParamByName('ProdutoID').AsInteger  := cds.FieldByName('produtoId').AsInteger;
    Qry.ParamByName('ValorUnitario').AsFloat:= cds.FieldByName('valorUnitario').AsFloat;
    Qry.ParamByName('Quantidade').AsFloat   := cds.FieldByName('quantidade').AsFloat;
    Qry.ParamByName('TotalProduto').AsFloat := cds.FieldByName('valorTotalProduto').AsFloat;
    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      BaixarEstoque(cds.FieldByName('produtoId').AsInteger, cds.FieldByName('quantidade').AsFloat);
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.Selecionar(id: Integer; var cds:TClientDataSet): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT vendaId '+
                '      ,clienteId '+
                '      ,dataVenda '+
                '      ,totalVenda '+
                '  FROM vendas '+
                ' WHERE vendaId=:vendaId');
    Qry.ParamByName('vendaId').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_vendaId    := Qry.FieldByName('vendaId').AsInteger;
      Self.F_clienteId  := Qry.FieldByName('clienteId').AsInteger;
      Self.F_dataVenda  := Qry.FieldByName('dataVenda').AsDateTime;
      Self.F_totalVenda := Qry.FieldByName('totalVenda').AsFloat;

      {$region 'SELECIONAR na tabela VendasItens'}
      //Apaga o ClientDataSet Caso esteja com Registro
      cds.First;
      while not cds.Eof do begin
        cds.Delete;
      end;

      //Seleciona os Itens do Banco de dados com a propriedade F_VendaId
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('SELECT VendasItens.ProdutoID, '+
                  '       Produtos.Nome, '+
                  '       VendasItens.ValorUnitario, '+
                  '       VendasItens.Quantidade, '+
                  '       VendasItens.TotalProduto '+
                  '  FROM VendasItens  '+
                  '       INNER JOIN produtos On Produtos.produtoId = VendasItens.produtoId '+
                  ' WHERE VendasItens.VendaID=:VendaID ');
      Qry.ParamByName('VendaID').AsInteger    := Self.F_vendaId;
      Qry.Open;

      //Pega da Query e Coloca no ClientDataSet
      Qry.First;
      while not Qry.Eof do begin
        cds.Append;
        cds.FieldByName('produtoId').AsInteger       := Qry.FieldByName('ProdutoID').AsInteger;
        cds.FieldByName('nomeProduto').AsString      := Qry.FieldByName('Nome').AsString;
        cds.FieldByName('valorUnitario').AsFloat     := Qry.FieldByName('ValorUnitario').AsFloat;
        cds.FieldByName('quantidade').AsFloat        := Qry.FieldByName('Quantidade').AsFloat;
        cds.FieldByName('valorTotalProduto').AsFloat := Qry.FieldByName('TotalProduto').AsFloat;
        cds.Post;
        Qry.Next;
      end;
      cds.First;

      {$endRegion}

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.EsteItemExiste(vendaId: Integer; produtoId:Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT Count(vendaId) AS Qtde '+
                '  FROM VendasItens '+
                ' WHERE vendaId=:vendaId and produtoId=:produtoId ');
    Qry.ParamByName('vendaId').AsInteger   :=vendaId;
    Qry.ParamByName('produtoId').AsInteger :=produtoId;
    Try
      Qry.Open;

      if Qry.FieldByName('Qtde').AsInteger>0 then
         Result:=true
      else
         Result:=False;

      {$endRegion}

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

{$endregion}


end.
