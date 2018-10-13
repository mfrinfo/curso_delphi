unit uRelCadProdutosComGrupoCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RLXLSFilter,
  RLXLSXFilter;

type
  TfrmRelCadProdutosComGrupoCategoria = class(TForm)
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    QryProdutos: TZQuery;
    dtsProdutos: TDataSource;
    Rodape: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    QryProdutosprodutoId: TIntegerField;
    QryProdutosNome: TWideStringField;
    QryProdutosDescricao: TWideStringField;
    QryProdutosValor: TFloatField;
    QryProdutosQuantidade: TFloatField;
    QryProdutoscategoriaId: TIntegerField;
    QryProdutosDescricaoCategoria: TWideStringField;
    BandaDoGrupo: TRLGroup;
    RLBand2: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RegistrosDB: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand1: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel11: TRLLabel;
    RLDraw3: TRLDraw;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadProdutosComGrupoCategoria: TfrmRelCadProdutosComGrupoCategoria;

implementation

{$R *.dfm}

uses uDtmPrincipal;

procedure TfrmRelCadProdutosComGrupoCategoria.FormCreate(Sender: TObject);
begin
  QryProdutos.Open;
end;

procedure TfrmRelCadProdutosComGrupoCategoria.FormDestroy(Sender: TObject);
begin
  QryProdutos.Close;
end;

end.
