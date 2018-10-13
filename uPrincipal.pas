unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDtmPrincipal, Enter,
  ufrmAtualizaDB, ShellApi, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  VclTee.TeeGDIPlus, Data.DB, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart;

type
  TfrmMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    CADASTRO1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    PRODUTO1: TMenuItem;
    CATEGORIAS1: TMenuItem;
    N2: TMenuItem;
    FECHAR1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    VENDA1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CLIENTE2: TMenuItem;
    PRODUTO2: TMenuItem;
    N3: TMenuItem;
    VENDAPORDIA1: TMenuItem;
    CATEGORIAS2: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    GridPanel1: TGridPanel;
    PRODUTOSPORCATEGORIAS1: TMenuItem;
    FICHADECLIENTE1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FECHAR1Click(Sender: TObject);
    procedure CATEGORIAS1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure PRODUTO1Click(Sender: TObject);
    procedure VENDA1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure CATEGORIAS2Click(Sender: TObject);
    procedure PRODUTO2Click(Sender: TObject);
    procedure PRODUTOSPORCATEGORIAS1Click(Sender: TObject);
    procedure CLIENTE2Click(Sender: TObject);
    procedure FICHADECLIENTE1Click(Sender: TObject);
    procedure VENDAPORDIA1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter:TMREnter;
    procedure AtualizacaoBancoDados(aForm: TfrmAtualizaBancoDados);
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

uses uCadCategorias, uCadCliente, uCadProdutos, uProVendas, uRelCadCategorias,
  uRelCadProdutos, uRelCadProdutosComGrupoCategoria, uRelCadClientes,
  uRelCadClientesFicha, uRelProVendaPorData;


procedure TfrmMenuPrincipal.CATEGORIAS1Click(Sender: TObject);
begin
  frmCadCategoria:=TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmMenuPrincipal.CATEGORIAS2Click(Sender: TObject);
begin
  frmRelCadCategorias:= TfrmRelCadCategorias.Create(Self);
  frmRelCadCategorias.Relatorio.PreviewModal;
  frmRelCadCategorias.Release;

end;

procedure TfrmMenuPrincipal.Cliente1Click(Sender: TObject);
begin
  frmCadCliente:=TfrmCadCliente.Create(Self);
  frmCadCliente.ShowModal;
  frmCadCliente.Release;
end;

procedure TfrmMenuPrincipal.CLIENTE2Click(Sender: TObject);
begin
  frmRelCadClientes:=TfrmRelCadClientes.Create(Self);
  frmRelCadClientes.Relatorio.PreviewModal;
  frmRelCadClientes.Release;
end;

procedure TfrmMenuPrincipal.FECHAR1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenuPrincipal.FICHADECLIENTE1Click(Sender: TObject);
begin
  frmRelCadClientesFicha:=TfrmRelCadClientesFicha.Create(Self);
  frmRelCadClientesFicha.Relatorio.PreviewModal;
  frmRelCadClientesFicha.Release;
end;

procedure TfrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(DtmPrincipal) then
     FreeAndNil(DtmPrincipal);
end;

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
begin
  {
  DtmPrincipal:=TDtmPrincipal.Create(self);     //Instancia o DataModule
  DtmPrincipal.ConexaoDB.SQLHourGlass:=True;    //Habilita o Cursor em cada transação no banco de dados
  DtmPrincipal.ConexaoDB.LibraryLocation:=ExtractFilePath(Application.ExeName)+'ntwdblib.dll';  //Seta a DLL para conexao do SQL
  DtmPrincipal.ConexaoDB.Protocol:='mssql';  //Protocolo do banco de dados
  DtmPrincipal.ConexaoDB.HostName:='.\INSTANCIA'; //Instancia do SQLServer
  DtmPrincipal.ConexaoDB.Port:=1433;          //Porta do SQL Server
  DtmPrincipal.ConexaoDB.User := 'sa';  //Usuario do Banco de Dados
  DtmPrincipal.ConexaoDB.Password:='SENHA';  //Senha do Usuário do banco
  DtmPrincipal.ConexaoDB.Database:='BANCODEDADOS';  //Nome do Banco de Dados
  DtmPrincipal.ConexaoDB.Connected:=True;  //Faz a Conexão do Banco
  }

{  DtmPrincipal:=TDtmPrincipal.Create(self);     //Instancia o DataModule
  with DtmPrincipal.ConexaoDB do begin
    SQLHourGlass:=True;    //Habilita o Cursor em cada transação no banco de dados
    LibraryLocation:=ExtractFilePath(Application.ExeName)+'ntwdblib.dll';  //Seta a DLL para conexao do SQL
    Protocol:='mssql';  //Protocolo do banco de dados
    HostName:='.\SERVERCURSO'; //Instancia do SQLServer
    Port:=1433;          //Porta do SQL Server
    User := 'sa';  //Usuario do Banco de Dados
    Password:='mudar@123';  //Senha do Usuário do banco
    Database:='vendas';  //Nome do Banco de Dados
    Connected:=True;  //Faz a Conexão do Banco
  end;
  }

  frmAtualizaBancoDados:=TfrmAtualizaBancoDados.Create(self);
  frmAtualizaBancoDados.Show;
  frmAtualizaBancoDados.Refresh;

  DtmPrincipal:=TDtmPrincipal.Create(self);     //Instancia o DataModule
  with DtmPrincipal.ConexaoDB do begin
    SQLHourGlass:=False;    //Habilita o Cursor em cada transação no banco de dados
    LibraryLocation:=ExtractFilePath(Application.ExeName)+'ntwdblib.dll';  //Seta a DLL para conexao do SQL
    Protocol:='mssql';  //Protocolo do banco de dados
    HostName:='.\SERVERCURSO'; //Instancia do SQLServer
    Port:=1433;          //Porta do SQL Server
    User := 'sa';  //Usuario do Banco de Dados
    Password:='mudar@123';  //Senha do Usuário do banco
    Database:='vendas';  //Nome do Banco de Dados
    Connected:=True;  //Faz a Conexão do Banco
  end;
  AtualizacaoBancoDados(frmAtualizaBancoDados);

  frmAtualizaBancoDados.Free;
  TeclaEnter:=TMREnter.Create(Self);
  TeclaEnter.FocusEnabled:=True;
  TeclaEnter.FocusColor:=clInfoBk;

end;

procedure TfrmMenuPrincipal.Label1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://www.udemy.com/desenvolver-sistema-com-delphi-e-sql-server-na-pratica/',nil,nil,SW_SHOW);
end;

procedure TfrmMenuPrincipal.PRODUTO1Click(Sender: TObject);
begin
  frmCadProduto:=TfrmCadProduto.Create(Self);
  frmCadProduto.ShowModal;
  frmCadProduto.Release;
end;

procedure TfrmMenuPrincipal.PRODUTO2Click(Sender: TObject);
begin
  frmRelCadProdutos:=TfrmRelCadProdutos.Create(Self);
  frmRelCadProdutos.Relatorio.PreviewModal;
  frmRelCadProdutos.Release;
end;

procedure TfrmMenuPrincipal.PRODUTOSPORCATEGORIAS1Click(Sender: TObject);
begin
  frmRelCadProdutosComGrupoCategoria:=TfrmRelCadProdutosComGrupoCategoria.Create(Self);
  frmRelCadProdutosComGrupoCategoria.Relatorio.PreviewModal;
  frmRelCadProdutosComGrupoCategoria.Release;
end;

procedure TfrmMenuPrincipal.VENDA1Click(Sender: TObject);
begin
  frmProVenda:=TfrmProVenda.Create(Self);
  frmProVenda.ShowModal;
  frmProVenda.Release;
end;

procedure TfrmMenuPrincipal.VENDAPORDIA1Click(Sender: TObject);
begin
  frmRelProVendaPorData:=TfrmRelProVendaPorData.Create(self);
  frmRelProVendaPorData.Relatorio.PreviewModal;
  frmRelProVendaPorData.Release;
end;

procedure TfrmMenuPrincipal.AtualizacaoBancoDados(aForm:TfrmAtualizaBancoDados);
begin
  aForm.chkConexao.Checked := true;
  aForm.Refresh;
  Sleep(100);
  DtmPrincipal.QryScriptCategorias.ExecSQL;
  aForm.chkCategoria.Checked := true;
  aForm.Refresh;
  Sleep(100);
  DtmPrincipal.QryScriptClientes.ExecSQL;
  aForm.chkCliente.Checked := true;
  aForm.Refresh;
  Sleep(100);
  DtmPrincipal.QryScriptProdutos.ExecSQL;
  aForm.chkProduto.Checked := true;
  aForm.Refresh;
  Sleep(100);
  DtmPrincipal.QryScriptVendas.ExecSQL;
  aForm.chkVendas.Checked := true;
  aForm.Refresh;
  Sleep(100);
  DtmPrincipal.QryScriptItensVendas.ExecSQL;
  aForm.chkItensVendas.Checked := true;
  aForm.Refresh;
  Sleep(100);
end;

end.
