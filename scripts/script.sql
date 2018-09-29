IF OBJECT_ID ('categorias') IS NULL 
BEGIN
	CREATE TABLE categorias(
	   categoriaId int IDENTITY(1,1) NOT NULL,
	   descricao  varchar(30) NULL,
	   PRIMARY KEY (categoriaId)
)
END

IF OBJECT_ID ('produtos') IS NULL 
BEGIN
	CREATE TABLE produtos(
		produtoId int IDENTITY(1,1) NOT NULL,
		nome varchar(60) NULL,
		descricao varchar(255) null,
		valor decimal(18,5) default 0.00000 null,
		quantidade decimal(18,5) default 0.00000 null,
		categoriaId int null,
		PRIMARY KEY (produtoId),
		CONSTRAINT FK_ProdutosCategorias 
		FOREIGN KEY (categoriaId) references categorias(categoriaId)
	)
END


IF OBJECT_ID ('clientes') IS NULL 
BEGIN
	CREATE TABLE clientes(
		clienteId int IDENTITY(1,1) NOT NULL,
		nome varchar(60) NULL,
		endereco varchar(60) null,
		cidade varchar(50) null,
		bairro varchar(40) null,
		estado varchar(2) null,
		cep varchar(10) null,
		telefone varchar(14) null,  
		email varchar(100) null,
		dataNascimento datetime null
		PRIMARY KEY (clienteId),
	)
END

IF OBJECT_ID ('vendas') IS NULL 
BEGIN
	Create table vendas (
	  vendaId int identity(1,1) not null,
	  clienteId int not null,
	  dataVenda datetime default getdate(),
	  totalVenda decimal(18,5) default 0.00000,


	  PRIMARY KEY (vendaId),
	  CONSTRAINT FK_VendasClientes FOREIGN KEY (clienteId)
		REFERENCES clientes(clienteId)
	)
END;

IF OBJECT_ID ('vendasItens') IS NULL 
BEGIN
	Create table vendasItens (
	  vendaId int not null,
	  produtoId int not null,
	  valorUnitario decimal (18,5) default 0.00000,
	  quantidade decimal (18,5) default 0.00000,
	  totalProduto decimal (18,5) default 0.00000,
	  PRIMARY KEY (vendaId,produtoId),
	  CONSTRAINT FK_VendasItensProdutos FOREIGN KEY (produtoId)
		REFERENCES produtos(produtoId)
	)
END