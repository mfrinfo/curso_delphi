unit uCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  RxToolEdit, RxCurrEdit, cCadProduto, uEnum, cFuncao, uCadCategorias;

type
  TfrmCadProduto = class(TfrmTelaHeranca)
    QryListagemprodutoId: TIntegerField;
    QryListagemnome: TWideStringField;
    QryListagemdescricao: TWideStringField;
    QryListagemvalor: TFloatField;
    QryListagemquantidade: TFloatField;
    QryListagemcategoriaId: TIntegerField;
    QryListagemDescricaoCategoria: TWideStringField;
    edtProdutoId: TLabeledEdit;
    edtNome: TLabeledEdit;
    Bevel1: TBevel;
    edtDescricao: TMemo;
    Label1: TLabel;
    edtValor: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtQuantidade: TCurrencyEdit;
    lkpCategoria: TDBLookupComboBox;
    Label4: TLabel;
    QryCategoria: TZQuery;
    QryCategoriacategoriaId: TIntegerField;
    QryCategoriadescricao: TWideStringField;
    dtsCategoria: TDataSource;
    btnIncluirCategoria: TSpeedButton;
    btnPesquisarCategoria: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirCategoriaClick(Sender: TObject);
    procedure btnPesquisarCategoriaClick(Sender: TObject);
  private
    { Private declarations }
    oProduto:TProduto;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses uDtmPrincipal, uPrincipal, uConCategoria;

{$region 'Override'}
function TfrmCadProduto.Apagar: Boolean;
begin
  if oProduto.Selecionar(QryListagem.FieldByName('produtoId').AsInteger) then begin
     Result:=oProduto.Apagar;
  end;
end;

function TfrmCadProduto.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
  if edtProdutoId.Text<>EmptyStr then
     oProduto.codigo:=StrToInt(edtProdutoId.Text)
  else
     oProduto.codigo:=0;

  oProduto.nome           :=edtNome.Text;
  oProduto.descricao      :=edtDescricao.Text;
  oProduto.categoriaId    :=lkpCategoria.KeyValue;
  oProduto.valor          :=edtValor.Value;
  oProduto.quantidade     :=edtQuantidade.Value;

  if (EstadoDoCadastro=ecInserir) then
     Result:=oProduto.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=oProduto.Atualizar;
end;
procedure TfrmCadProduto.btnIncluirCategoriaClick(Sender: TObject);
begin
  inherited;
  TFuncao.CriarForm(TfrmCadCategoria, oUsuarioLogado, DtmPrincipal.ConexaoDB);
  QryCategoria.Refresh;
end;

procedure TfrmCadProduto.btnPesquisarCategoriaClick(Sender: TObject);
begin
  inherited;
  frmConCategoria:=TfrmConCategoria.Create(Self);

  if lkpCategoria.KeyValue<>Null then
     frmConCategoria.aIniciarPesquisaId:=lkpCategoria.KeyValue;

  frmConCategoria.ShowModal;

  if frmConCategoria.aRetornarIdSelecionado<>Unassigned then  //Não Atribuido
     lkpCategoria.KeyValue:=frmConCategoria.aRetornarIdSelecionado;

  frmConCategoria.Release;
end;

{$endregion}

procedure TfrmCadProduto.btnAlterarClick(Sender: TObject);
begin

  if oProduto.Selecionar(QryListagem.FieldByName('produtoId').AsInteger) then begin
     edtProdutoId.Text     :=IntToStr(oProduto.codigo);
     edtNome.Text          :=oProduto.nome;
     edtDescricao.Text     :=oProduto.descricao;
     lkpCategoria.KeyValue :=oProduto.categoriaId;
     edtValor.value        :=oProduto.valor;
     edtQuantidade.value   :=oProduto.quantidade;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

procedure TfrmCadProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  QryCategoria.Close;
  if Assigned(oProduto) then
     FreeAndNil(oProduto);
end;

procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  oProduto:=TProduto.Create(dtmPrincipal.ConexaoDB);

  IndiceAtual:='nome';
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  QryCategoria.Open;
end;

end.
