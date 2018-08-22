unit uDtmPrincipal;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Vcl.forms;

type
  TDtmPrincipal = class(TDataModule)
    ConexaoDB: TZConnection;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmPrincipal: TDtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



end.
