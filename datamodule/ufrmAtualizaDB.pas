unit ufrmAtualizaDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmAtualizaBancoDados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    chkCategoria: TCheckBox;
    chkCliente: TCheckBox;
    chkProduto: TCheckBox;
    chkVendas: TCheckBox;
    chkItensVendas: TCheckBox;
    chkConexao: TCheckBox;
    chkUsuarios: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualizaBancoDados: TfrmAtualizaBancoDados;

implementation

{$R *.dfm}

end.
