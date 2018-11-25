unit uConCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaConsulta, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmConCategoria = class(TfrmTelaHerancaConsulta)
    QryListagemcategoriaId: TIntegerField;
    QryListagemdescricao: TWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConCategoria: TfrmConCategoria;

implementation

{$R *.dfm}

procedure TfrmConCategoria.FormCreate(Sender: TObject);
begin
  aCampoId :='categoriaId';
  IndiceAtual:='descricao';
  inherited;

end;

end.
