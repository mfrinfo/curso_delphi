unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnAcessar: TBitBtn;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAcessarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    bFechar:Boolean;
    procedure FecharAplicacao;
    procedure FecharFormulario;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses cCadUsuario, uDtmPrincipal, uPrincipal;

procedure TfrmLogin.btnFecharClick(Sender: TObject);
begin
  FecharAplicacao;
end;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
var oUsuario:TUsuario;
begin
  Try
    oUsuario:=TUsuario.Create(dtmPrincipal.ConexaoDB);
    if oUsuario.Logar(edtUsuario.Text,edtSenha.Text) then begin
       oUsuarioLogado.codigo := oUsuario.codigo;
       oUsuarioLogado.nome   := oUsuario.nome;
       oUsuarioLogado.senha  := oUsuario.senha;

       FecharFormulario //Fecha o Formulario do Login
    end
    else begin
      MessageDlg('Usuário Inválido',mtInformation,[mbok],0);
      edtUsuario.SetFocus;
    end;

  Finally
    if Assigned(oUsuario) then
       FreeAndNil(oUsuario);
  End;
end;

procedure TfrmLogin.FecharAplicacao;
begin
  bFechar := true;
  Application.Terminate;
end;

procedure TfrmLogin.FecharFormulario;
begin
  bFechar := true;
  Close;
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=bFechar;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  bFechar:=false;
end;

end.
