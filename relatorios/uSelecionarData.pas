unit uSelecionarData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  RxToolEdit;

type
  TfrmSelecionarData = class(TForm)
    EdtDataInicio: TDateEdit;
    Label3: TLabel;
    EdtDataFinal: TDateEdit;
    Label1: TLabel;
    btnGravar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionarData: TfrmSelecionarData;

implementation

uses System.DateUtils;

{$R *.dfm}

procedure TfrmSelecionarData.btnGravarClick(Sender: TObject);
begin
  if (EdtDataFinal.Date) < (EdtDataInicio.Date) then begin
    MessageDlg('Data Final não pode ser maior que a data inicio',mtInformation,[mbok],0);
    EdtDataFinal.SetFocus;
    abort;
  end;

  if (EdtDataFinal.Date=0) OR (EdtDataInicio.Date=0) then begin
    MessageDlg('Data Inicial ou Final são campo obrigatório',MtInformation,[mbok],0);
    EdtDataInicio.SetFocus;
    abort;
  end;


  Close;
end;

procedure TfrmSelecionarData.FormShow(Sender: TObject);
begin
  EdtDataInicio.Date := StartOfTheMonth(Date);
  EdtDataFinal.Date  := EndOfTheMonth(Date);
end;

end.
