unit uAlterarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAlterarSenha = class(TForm)
    Label2: TLabel;
    edtSenhaAtual: TEdit;
    edtSenhaNova: TEdit;
    Label1: TLabel;
    edtRepetirNovaSenha: TEdit;
    Label3: TLabel;
    btnAlterar: TBitBtn;
    btnFechar: TBitBtn;
    lblUsuarioLogado: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimparEdits;
  public
    { Public declarations }
  end;

var
  frmAlterarSenha: TfrmAlterarSenha;

implementation

{$R *.dfm}

uses uPrincipal, cCadUsuario, uDtmPrincipal;

procedure TfrmAlterarSenha.btnAlterarClick(Sender: TObject);
Var oUsuario:TUsuario;
begin
  if (edtSenhaAtual.Text=oUsuarioLogado.senha) then begin
    if (edtSenhaNova.Text=edtRepetirNovaSenha.Text) then begin
      try
        oUsuario:=TUsuario.Create(DtmPrincipal.ConexaoDB);
        oUsuario.codigo := oUsuarioLogado.codigo;
        oUsuario.senha  := edtSenhaNova.Text;
        oUsuario.AlterarSenha;
        oUsuarioLogado.senha := edtSenhaNova.Text;
        MessageDlg('Senha Alterada',MtInformation,[mbok],0);
        LimparEdits;
      finally
        FreeAndNil(oUsuario);
      end;
    end
    else begin
      MessageDlg('Senhas digitadas não coincidem,',mtinformation,[mbok],0);
      edtSenhaNova.SetFocus;
    end;

  end
  else begin
    MessageDlg('Senha Atual está inválida',mtinformation,[mbok],0);
  end;
end;

procedure TfrmAlterarSenha.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAlterarSenha.LimparEdits;
begin
  edtSenhaAtual.Clear;
  edtSenhaNova.Clear;
  edtRepetirNovaSenha.Clear;
  lblUsuarioLogado.Caption:=oUsuarioLogado.nome;
end;

procedure TfrmAlterarSenha.FormShow(Sender: TObject);
begin
  LimparEdits;
end;

end.
