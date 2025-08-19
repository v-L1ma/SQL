CREATE DATABASE LABDB;

USE LABDB;

CREATE TABLE Vendedor(
	cd_Vendedor int NOT NULL,
	nm_Vendedor VARCHAR(40),
	ds_Endereco VARCHAR(40),
	cd_CPF decimal(11),
	nm_Cidade VARCHAR(20),
	nm_Bairro VARCHAR(20),
	sg_Estado char(2),
	cd_Telefone VARCHAR(20),
	ds_Email VARCHAR(80)
);

CREATE TABLE Imovel(
	cd_Imovel int NOT NULL,
	cd_Vendedor int NOT NULL,
	cd_Bairro int NOT NULL,
	cd_Cidade int NOT NULL,
	sg_Estado char(2),
	ds_Endereco varchar(40),
	qt_AreaUtil decimal(10,2),
	qt_AreaTotal decimal(10,2),
	ds_Imovel varchar(300),
	vl_preco money,
	qt_Ofertas int,
	ic_Vendido char(1),
	dt_Lancto date,
	qt_ImovelIndicado int
);

CREATE TABLE Estado(
	sg_Estado char(2) NOT NULL,
	nm_Estado varchar(20)
);

CREATE TABLE Cidade(
	cd_Cidade int NOT NULL,
	sg_Estado char(2),
	nm_Cidade varchar(20)
);

CREATE TABLE Bairro(
	cd_Bairro int NOT NULL,
	cd_Cidade int NOT NULL,
	sg_Estado char(2),
	nm_Bairro varchar(20)
);

CREATE TABLE Comprador(
	cd_Comprador int NOT NULL,
	nm_Comprador varchar(40),
	ds_Endereco varchar(40),
	cd_CPF decimal(11),
	nm_Cidade varchar(20),
	nm_Bairro varchar(20),
	sg_Estado varchar(2),
	cd_Telefone varchar(20),
	ds_Email varchar(80)
);

CREATE TABLE Oferta(
	cd_Comprador int NOT NULL,
	cd_Imovel int NOT NULL,
	vl_Oferta money,
	dt_Oferta date
);

CREATE TABLE Faixa_Imovel(
	cd_Faixa int NOT NULL,
	nm_Faixa varchar(30),
	vl_Maximo money,
	vl_Minimo money
);

ALTER TABLE Vendedor 
	ADD PRIMARY KEY (cd_Vendedor);

ALTER TABLE Imovel
	ADD PRIMARY KEY (cd_Imovel);

ALTER TABLE Estado
	ADD PRIMARY KEY (sg_Estado);

ALTER TABLE Cidade
	ADD PRIMARY KEY (cd_Cidade);

ALTER TABLE Bairro
	ADD PRIMARY KEY (cd_Bairro);

ALTER TABLE Comprador
	ADD PRIMARY KEY (cd_Comprador);

ALTER TABLE Faixa_Imovel
	ADD PRIMARY KEY (cd_Faixa);

ALTER TABLE Imovel
	ADD  FOREIGN KEY (cd_Vendedor) REFERENCES Vendedor(cd_Vendedor);

ALTER TABLE Imovel
	ADD  FOREIGN KEY (cd_Bairro) REFERENCES Bairro(cd_Bairro);

ALTER TABLE Imovel
	ADD  FOREIGN KEY (cd_Cidade) REFERENCES Cidade(cd_Cidade);

ALTER TABLE Imovel
	ADD  FOREIGN KEY (sg_Estado) REFERENCES Estado(sg_Estado);

ALTER TABLE Oferta
ADD FOREIGN KEY (cd_Comprador) REFERENCES Comprador(cd_Comprador);

ALTER TABLE Oferta
ADD FOREIGN KEY (cd_Imovel) REFERENCES Imovel(cd_Imovel);
