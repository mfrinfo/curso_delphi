unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmTelaHeranca = class(TForm)
    pnlRodaPe: TPanel;
    pnlCentro: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    bntNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    BitBtn1: TBitBtn;
    pnlListagemTop: TPanel;
    pnlListagemCentro: TPanel;
    DBGrid1: TDBGrid;
    mskPesquisa: TMaskEdit;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}

end.
