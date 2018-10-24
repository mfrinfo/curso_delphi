program Vendas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmMenuPrincipal},
  uDtmPrincipal in 'datamodule\uDtmPrincipal.pas' {DtmPrincipal: TDataModule},
  uTelaHeranca in 'heranca\uTelaHeranca.pas' {frmTelaHeranca},
  uCadCategorias in 'cadastros\uCadCategorias.pas' {frmCadCategoria},
  Enter in 'terceiros\Enter.pas',
  uEnum in 'heranca\uEnum.pas',
  cCadCategoria in 'classes\cCadCategoria.pas',
  uCadCliente in 'cadastros\uCadCliente.pas' {frmCadCliente},
  cCadCliente in 'classes\cCadCliente.pas',
  uCadProdutos in 'cadastros\uCadProdutos.pas' {frmCadProduto},
  cCadProduto in 'classes\cCadProduto.pas',
  uDtmVendas in 'datamodule\uDtmVendas.pas' {dtmVendas: TDataModule},
  ufrmAtualizaDB in 'datamodule\ufrmAtualizaDB.pas' {frmAtualizaBancoDados},
  uProVendas in 'processos\uProVendas.pas' {frmProVenda},
  cProVenda in 'classes\cProVenda.pas',
  cControleEstoque in 'classes\cControleEstoque.pas',
  uRelProVenda in 'relatorios\uRelProVenda.pas' {frmRelProVenda},
  uRelCadClientesFicha in 'relatorios\uRelCadClientesFicha.pas' {frmRelCadClientesFicha},
  uRelCadCategorias in 'relatorios\uRelCadCategorias.pas' {frmRelCadCategorias},
  uRelCadClientes in 'relatorios\uRelCadClientes.pas' {frmRelCadClientes},
  uRelCadProdutos in 'relatorios\uRelCadProdutos.pas' {frmRelCadProdutos},
  uRelCadProdutosComGrupoCategoria in 'relatorios\uRelCadProdutosComGrupoCategoria.pas' {frmRelCadProdutosComGrupoCategoria},
  uRelProVendaPorData in 'relatorios\uRelProVendaPorData.pas' {frmRelProVendaPorData},
  uSelecionarData in 'relatorios\uSelecionarData.pas' {frmSelecionarData},
  uFuncaoCriptografia in 'heranca\uFuncaoCriptografia.pas',
  uCadUsuario in 'cadastros\uCadUsuario.pas' {frmCadUsuario},
  cCadUsuario in 'classes\cCadUsuario.pas',
  uLogin in 'login\uLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;
end.
