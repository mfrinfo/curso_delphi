unit uRelCadCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RLXLSFilter,
  RLXLSXFilter;

type
  TfrmRelCadCategorias = class(TForm)
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    RegistrosDB: TRLBand;
    QryCategorias: TZQuery;
    dtsCategorias: TDataSource;
    RLDBText1: TRLDBText;
    QryCategoriascategoriaId: TIntegerField;
    QryCategoriasdescricao: TWideStringField;
    RLDBText2: TRLDBText;
    CabecalhoLabel: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    Rodape: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadCategorias: TfrmRelCadCategorias;

implementation

{$R *.dfm}

uses uDtmPrincipal;

procedure TfrmRelCadCategorias.FormCreate(Sender: TObject);
begin
  QryCategorias.Open;
end;

procedure TfrmRelCadCategorias.FormDestroy(Sender: TObject);
begin
  QryCategorias.Close;
end;

end.
