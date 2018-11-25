unit uTelaHerancaConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfrmTelaHerancaConsulta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnFechar: TBitBtn;
    mskPesquisa: TMaskEdit;
    grdPesquisa: TDBGrid;
    QryListagem: TZQuery;
    DtsListagem: TDataSource;
    lblIndice: TLabel;
    procedure mskPesquisaChange(Sender: TObject);
    procedure grdPesquisaTitleClick(Column: TColumn);
    procedure grdPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdPesquisaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirLabelIndice(Campo: string; aLabel: TLabel);
    function RetornarCampoTraduzido(Campo: string): string;
  public
    { Public declarations }
    aRetornarIdSelecionado:Variant;
    aIniciarPesquisaId:Variant;
    aCampoId:String;
    IndiceAtual:String;
  end;

var
  frmTelaHerancaConsulta: TfrmTelaHerancaConsulta;

implementation

{$R *.dfm}

procedure TfrmTelaHerancaConsulta.FormCreate(Sender: TObject);
begin
  if QryListagem.Active then
     QryListagem.Close;

  ExibirLabelIndice(IndiceAtual, lblIndice);
  QryListagem.IndexFieldNames:=IndiceAtual;
  QryListagem.Open;

end;

procedure TfrmTelaHerancaConsulta.FormShow(Sender: TObject);
begin
  if (aIniciarPesquisaId<>Unassigned) then
  begin
    QryListagem.Locate(aCampoId, aIniciarPesquisaId,[loPartialKey])
  end;
end;

procedure TfrmTelaHerancaConsulta.grdPesquisaDblClick(Sender: TObject);
begin
  aRetornarIdSelecionado := QryListagem.FieldByName(aCampoId).AsVariant;
  Close;
end;

procedure TfrmTelaHerancaConsulta.grdPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //Bloqueia o CTRL + DEL
  if (Shift = [ssCtrl]) and (Key = 46) then
     Key := 0;
end;

procedure TfrmTelaHerancaConsulta.grdPesquisaTitleClick(Column: TColumn);
begin
  IndiceAtual                :=Column.FieldName;
  QryListagem.IndexFieldNames:=IndiceAtual;
  ExibirLabelIndice(IndiceAtual, lblIndice);
end;

procedure TfrmTelaHerancaConsulta.mskPesquisaChange(Sender: TObject);
begin
  QryListagem.Locate(IndiceAtual, TMaskEdit(Sender).Text,[loPartialKey])
end;

procedure TfrmTelaHerancaConsulta.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaHerancaConsulta.ExibirLabelIndice(Campo: string; aLabel:TLabel);
begin
  aLabel.Caption:=RetornarCampoTraduzido(Campo);
end;

function TfrmTelaHerancaConsulta.RetornarCampoTraduzido(Campo: string):string;
var i:Integer;
begin
  for I := 0 to QryListagem.FieldCount-1 do begin
    if LowerCase(QryListagem.Fields[i].FieldName) = LowerCase(Campo) then begin
       Result:=QryListagem.Fields[i].DisplayLabel;
       Break;
    end;
  end;
end;

end.
