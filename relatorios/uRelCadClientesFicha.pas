unit uRelCadClientesFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RLXLSFilter,
  RLXLSXFilter, Vcl.Imaging.pngimage;

type
  TfrmRelCadClientesFicha = class(TForm)
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
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    QryClientescep: TWideStringField;
    QryClientesendereco: TWideStringField;
    QryClientesbairro: TWideStringField;
    QryClientescidade: TWideStringField;
    QryClientesestado: TWideStringField;
    QryClientesdataNascimento: TDateTimeField;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText10: TRLDBText;
    RLDraw3: TRLDraw;
    RLAngleLabel1: TRLAngleLabel;
    RLImage1: TRLImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadClientesFicha: TfrmRelCadClientesFicha;

implementation

{$R *.dfm}

uses uDtmPrincipal;

procedure TfrmRelCadClientesFicha.FormCreate(Sender: TObject);
begin
  QryClientes.Open;
end;

procedure TfrmRelCadClientesFicha.FormDestroy(Sender: TObject);
begin
  QryClientes.Close;
end;

end.
