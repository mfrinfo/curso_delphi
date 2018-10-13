unit uRelCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RLXLSFilter,
  RLXLSXFilter;

type
  TfrmRelCadClientes = class(TForm)
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    RegistrosDB: TRLBand;
    QryClientes: TZQuery;
    dtsClientes: TDataSource;
    RLDBText1: TRLDBText;
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
    QryClientesclienteId: TIntegerField;
    QryClientesNome: TWideStringField;
    QryClientesemail: TWideStringField;
    QryClientestelefone: TWideStringField;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadClientes: TfrmRelCadClientes;

implementation

{$R *.dfm}

uses uDtmPrincipal;

procedure TfrmRelCadClientes.FormCreate(Sender: TObject);
begin
  QryClientes.Open;
end;

procedure TfrmRelCadClientes.FormDestroy(Sender: TObject);
begin
  QryClientes.Close;
end;

end.
