unit uProVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  RxToolEdit, RxCurrEdit, uDtmVendas;

type
  TfrmProVenda = class(TfrmTelaHeranca)
    edtVendaId: TLabeledEdit;
    lkpCliente: TDBLookupComboBox;
    Label1: TLabel;
    edtDataVenda: TDateEdit;
    Label3: TLabel;
    pnlItemVenda: TPanel;
    pnlItens: TPanel;
    pnlTotalizador: TPanel;
    Label2: TLabel;
    edtValorTotal: TCurrencyEdit;
    Panel2: TPanel;
    lkpProduto: TDBLookupComboBox;
    Label4: TLabel;
    edtQuantidade: TCurrencyEdit;
    Label5: TLabel;
    edtValorUnitario: TCurrencyEdit;
    Label6: TLabel;
    edtTotalProduto: TCurrencyEdit;
    Label7: TLabel;
    btnAdicionarItem: TBitBtn;
    btnApagarItem: TBitBtn;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    dtmVendas: TdtmVendas;
  public
    { Public declarations }
  end;

var
  frmProVenda: TfrmProVenda;

implementation

{$R *.dfm}

procedure TfrmProVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(dtmVendas) then
     FreeAndNil(dtmVendas);
end;

procedure TfrmProVenda.FormCreate(Sender: TObject);
begin
  inherited;
  dtmVendas := TdtmVendas.Create(self);
end;

end.
