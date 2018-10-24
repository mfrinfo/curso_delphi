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



--TESTES DE INCLUSAO
  INSERT INTO categorias (descricao) VALUES ('Celulares'), ('Computadores'), ('Tablets')

  INSERT INTO produtos (nome, descricao, valor, quantidade, categoriaId)
       VALUES ('Smartphone Samsung Wave Y S5380 Prata', 
	           'Celular Samsung Wave Y S5380 Desbloqueado Quadriband, utilize diversos recursos ao mesmo tempo e com mais velocidade com o processador de 832 MHz.',
			   399.90,
			   100,
			   1),
			   ('Smartphone Samsung Galaxy J5 Prime', 
	           'Smartphone Samsung Galaxy J5 Prime SM-G570M, Quad Core 1.4Ghz, Android 6.0.1,Tela 5, 32GB, 13MP, Leitor Digital, Dual Chip, Desbl - Dourado.',
			   752.90,
			   50,
			   1),
			   ('Computador HP Intel Core I3-7100', 
	           'Computador HP Intel Core I3-7100, 4GB, HD 500GB, Windows 10 Pro - 2SE06LA',
			   2148.10,
			   40,
			   2),
			   ('Notebook Acer 15.6´ Core I3-6006', 
	           'Notebook Acer 15.6´ Core I3-6006, 4GB, 500GB.',
			   2352.82,
			   100,
			   2),
			   ('Tablet Multilaser M9-3G Quad-Core 9', 
	           'Tablet Multilaser M9-3G Quad-Core 9, 8GB, Bluetooth, Dual Chip, Câmera Preto - NB247.',
			   599.50,
			   80,
			   3)

INSERT INTO clientes (nome, endereco, cidade, bairro, estado, telefone, cep, email, dataNascimento)
VALUES ('Severino Oliver Luan Fogaça', 'Av. Joaquim Ferreira Souto 524', 'Agudos', 'CENTRO', 'SP', 
        '(14) 2808-3989', '17.120-970', 'severinooliverluanfogaca-81@lphbrasil.com.br', '22/03/1996')

INSERT INTO clientes (nome, endereco, cidade, bairro, estado, telefone, cep, email, dataNascimento)
VALUES ('Iago Vitor Matheus Porto', 'Rua Antônio Sartoratto, s/n', 'Eleutério', 'CENTRO', 'SP', 
        '(19) 2513-6046', '17.120-971', 'iagovitormatheusporto..iagovitormatheusporto@hotmail.com.br', '22/03/1996')IF OBJECT_ID ('categorias') IS NULL 
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



--TESTES DE INCLUSAO
  INSERT INTO categorias (descricao) VALUES ('Celulares'), ('Computadores'), ('Tablets')

  INSERT INTO produtos (nome, descricao, valor, quantidade, categoriaId)
       VALUES ('Smartphone Samsung Wave Y S5380 Prata', 
	           'Celular Samsung Wave Y S5380 Desbloqueado Quadriband, utilize diversos recursos ao mesmo tempo e com mais velocidade com o processador de 832 MHz.',
			   399.90,
			   100,
			   1),
			   ('Smartphone Samsung Galaxy J5 Prime', 
	           'Smartphone Samsung Galaxy J5 Prime SM-G570M, Quad Core 1.4Ghz, Android 6.0.1,Tela 5, 32GB, 13MP, Leitor Digital, Dual Chip, Desbl - Dourado.',
			   752.90,
			   50,
			   1),
			   ('Computador HP Intel Core I3-7100', 
	           'Computador HP Intel Core I3-7100, 4GB, HD 500GB, Windows 10 Pro - 2SE06LA',
			   2148.10,
			   40,
			   2),
			   ('Notebook Acer 15.6´ Core I3-6006', 
	           'Notebook Acer 15.6´ Core I3-6006, 4GB, 500GB.',
			   2352.82,
			   100,
			   2),
			   ('Tablet Multilaser M9-3G Quad-Core 9', 
	           'Tablet Multilaser M9-3G Quad-Core 9, 8GB, Bluetooth, Dual Chip, Câmera Preto - NB247.',
			   599.50,
			   80,
			   3)

INSERT INTO clientes (nome, endereco, cidade, bairro, estado, telefone, cep, email, dataNascimento)
VALUES ('Severino Oliver Luan Fogaça', 'Av. Joaquim Ferreira Souto 524', 'Agudos', 'CENTRO', 'SP', 
        '(14) 2808-3989', '17.120-970', 'severinooliverluanfogaca-81@lphbrasil.com.br', '22/03/1996')

INSERT INTO clientes (nome, endereco, cidade, bairro, estado, telefone, cep, email, dataNascimento)
VALUES ('Iago Vitor Matheus Porto', 'Rua Antônio Sartoratto, s/n', 'Eleutério', 'CENTRO', 'SP', 
        '(19) 2513-6046', '17.120-971', 'iagovitormatheusporto..iagovitormatheusporto@hotmail.com.br', '22/03/1996')
		
		
 -- '987Fxgj{s' = mudar@123
 DELETE FROM usuarios
 DBCC CHECKIDENT('usuarios', RESEED, 0)
 INSERT INTO usuarios (nome, Senha) Values ('ADMIN', '987Fxgj{s') 