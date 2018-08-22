unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FECHAR1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

uses uDtmPrincipal;


procedure TfrmMenuPrincipal.FECHAR1Click(Sender: TObject);
begin
  Application.Terminate;
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

  DtmPrincipal:=TDtmPrincipal.Create(self);     //Instancia o DataModule
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

end;

end.
