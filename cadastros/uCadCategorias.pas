unit uCadCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cCadCategoria, uEnum, uDtmPrincipal;

type
  TfrmCadCategoria = class(TfrmTelaHeranca)
    QryListagemcategoriaId: TIntegerField;
    QryListagemdescricao: TWideStringField;
    edtCategoriaId: TLabeledEdit;
    edtDescricao: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
    oCategoria:TCategoria;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):boolean; override;
    function Apagar:Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

{$R *.dfm}

function TfrmCadCategoria.Apagar: Boolean;
begin
  Result:=oCategoria.Apagar(QryListagem.FieldByName('categoriaId').AsInteger);
end;

function TfrmCadCategoria.Gravar(EstadoDoCadastro: TEstadoDoCadastro): boolean;
begin
  if EstadoDoCadastro=ecInserir then
     Result:= oCategoria.Inserir
  else if EstadoDoCadastro=ecAlterar then
     Result:= oCategoria.Atualizar;
end;

procedure TfrmCadCategoria.btnAlterarClick(Sender: TObject);
begin
  if oCategoria.Selecionar(QryListagem.FieldByName('categoriaId').AsInteger) then begin
     edtCategoriaId.Text:=IntToStr(oCategoria.codigo);
     edtDescricao.Text:=oCategoria.descricao;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;
end;

procedure TfrmCadCategoria.btnGravarClick(Sender: TObject);
begin
  if edtCategoriaId.Text<>EmptyStr then
     oCategoria.codigo:=StrToInt(edtCategoriaId.Text)
  else
     oCategoria.codigo:=0;

  oCategoria.descricao:=edtDescricao.Text;
  inherited;
end;

procedure TfrmCadCategoria.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmCadCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oCategoria) then
     FreeAndNil(oCategoria);
end;

procedure TfrmCadCategoria.FormCreate(Sender: TObject);
begin
  inherited;
  oCategoria:=TCategoria.Create(DtmPrincipal.ConexaoDB);
  IndiceAtual:='descricao';
end;



end.
