unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, uDtmPrincipal,
  uEnum;

type
  TfrmTelaHeranca = class(TForm)
    pnlRodaPe: TPanel;
    pnlCentro: TPanel;
    pgcPrincipal: TPageControl;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    pnlListagemTop: TPanel;
    pnlListagemCentro: TPanel;
    grdListagem: TDBGrid;
    mskPesquisa: TMaskEdit;
    btnPesquisa: TBitBtn;
    btnNavigator: TDBNavigator;
    QryListagem: TZQuery;
    DtsListagem: TDataSource;
    btnCancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
  private
    EstadoDoCadastro:TEstadoDoCadastro;
    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar,
      btnApagar: TBitBtn; btnNavigator: TDBNavigator;
      pgcPrincipal: TPageControl; Flag: Boolean);
    procedure ControlaIndiceTab(pgcPrincipal: TPageControl; i: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}

{**** Function/Procedure DE CONTROLE}
procedure TfrmTelaHeranca.ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar,
                          btnApagar:TBitBtn; btnNavigator:TDBNavigator;
                          pgcPrincipal:TPageControl; Flag:Boolean);
begin
  btnNovo.Enabled      :=Flag;
  btnApagar.Enabled    :=Flag;
  btnAlterar.Enabled   :=Flag;
  btnNavigator.Enabled :=Flag;
  pgcPrincipal.Pages[0].TabVisible:=Flag;

  btnCancelar.Enabled  :=not(Flag);
  btnGravar.Enabled    :=not(Flag);
end;

procedure TfrmTelaHeranca.ControlaIndiceTab(pgcPrincipal:TPageControl; i: Integer);
begin
  if (pgcPrincipal.Pages[i].TabVisible) then
      pgcPrincipal.TabIndex:=0;
end;


procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaHeranca.FormCreate(Sender: TObject);
begin
  QryListagem.Connection:=DtmPrincipal.ConexaoDB;
end;

procedure TfrmTelaHeranca.btnAlterarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, False);
  EstadoDoCadastro:=ecAlterar;
end;

procedure TfrmTelaHeranca.btnApagarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
  ControlaIndiceTab(pgcPrincipal, 0);
  EstadoDoCadastro:=ecNenhum;
end;

procedure TfrmTelaHeranca.btnCancelarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
  ControlaIndiceTab(pgcPrincipal, 0);
  EstadoDoCadastro:=ecNenhum;
end;

procedure TfrmTelaHeranca.btnGravarClick(Sender: TObject);
begin
  Try
    ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
    ControlaIndiceTab(pgcPrincipal, 0);

    if (EstadoDoCadastro=ecInserir) then
        showmessage('Inserir')
    else if (EstadoDoCadastro=ecAlterar) then
        showmessage('Alterado')
    else
       showmessage('Nada aconteceu');

  Finally
    EstadoDoCadastro:=ecNenhum;
  End;

end;

procedure TfrmTelaHeranca.btnNovoClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, false);
  EstadoDoCadastro:=ecInserir;
end;


end.
