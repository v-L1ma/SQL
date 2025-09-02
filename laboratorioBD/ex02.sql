INSERT INTO ESTADO (sg_Estado, nm_Estado) VALUES
('SP', 'SÃO PAULO'),
('RJ', 'RIO DE JANEIRO');

INSERT INTO CIDADE (cd_Cidade, nm_Cidade, sg_Estado) VALUES
(1, 'SÃO PAULO', 'SP'),
(2, 'SANTO ANDRÉ', 'SP'),
(3, 'CAMPINAS', 'SP'),
(4, 'RIO DE JANEIRO', 'RJ'),
(5, 'NITERÓI', 'RJ');

INSERT INTO BAIRRO (cd_Bairro, nm_Bairro, cd_Cidade, sg_Estado) VALUES
(1, 'JARDINS', 1, 'SP'),
(2, 'MORUMBI', 1, 'SP'),
(3, 'AEROPORTO', 1, 'SP'),
(4, 'AEROPORTO', 4, 'RJ'),
(5, 'NITERÓI', 5, 'RJ');

INSERT INTO VENDEDOR (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email) VALUES
(1, 'MARIA DA SILVA', 'RUA DO GRITO, 45', 'msilva@nova.com'),
(2, 'MARCO ANDRADE', 'AV. DA SAUDADE, 325', 'mandrade@nova.com'),
(3, 'ANDRÉ CARDOSO', 'AV. BRASIL, 401', 'acardoso@nova.com'),
(4, 'TATIANA SOUZA', 'RUA DO IMPERADOR, 778', 'tsouza@nova.com');

INSERT INTO IMOVEL (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_preco) 
VALUES
(1, 1, 1, 1, 'SP', 'AL. TIETE, 3304/101', 250, 400, 180000),
(2, 1, 2, 1, 'SP', 'AV. MORUMBI, 2230', 150, 250, 135000),
(3, 2, 1, 1, 'RJ', 'R. GAL. OSORIO, 445/34', 250, 400, 185000),
(4, 2, 2, 2, 'RJ', 'R. D. PEDRO I, 882', 120, 200, 110000),
(5, 3, 3, 1, 'SP', 'AV. RUBEN BERTA, 2355', 110, 200, 95000),
(6, 4, 1, 1, 'RJ', 'R. GETULIO VARGAS, 552', 200, 300, 99000);


INSERT INTO COMPRADOR (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email) VALUES
(1, 'EMANUEL ANTUNES', 'R. SARAIVA, 452', 'eantunes@nova.com'),
(2, 'JOANA PEREIRA', 'AV PORTUGAL, 52', 'jpereira@nova.com'),
(3, 'RONALDO CAMPELO', 'R. ESTADOS UNIDOS,13', 'rcampelo@nova.com'),
(4, 'MAURÍCIO AUGUSTO', 'AV. BRASIL,351', 'maugusto@nova.com');

INSERT INTO OFERTA (cd_Comprador, cd_Imovel, vl_Oferta, dt_Oferta) VALUES
(1, 1, 170000, '10/01/09'),
(1, 3, 180000, '10/01/09'),
(2, 2, 135000, '15/01/09'),
(2, 4, 100000, '15/02/09'),
(3, 1, 160000, '05/01/09'),
(3, 2, 140000, '20/02/09');

UPDATE Imovel 
SET vl_preco = vl_preco * 1.10;

UPDATE Imovel 
SET vl_preco = vl_preco * 0.95 
WHERE cd_Vendedor=1;

UPDATE Oferta 
SET vl_Oferta = vl_Oferta * 1.05 
WHERE cd_Comprador=2;

UPDATE Comprador
SET ds_Endereco = 'R. ANANÁS, 45', sg_Estado = 'RJ'
WHERE cd_Comprador = 1;

UPDATE Oferta
SET vl_Oferta = 101.000
WHERE cd_Comprador=2 AND cd_Imovel=4;

DELETE FROM Oferta
WHERE cd_Comprador = 3 AND cd_Imovel=1;

DELETE FROM Cidade
WHERE cd_Cidade = 3 AND sg_Estado = 'SP';

INSERT INTO FAIXA_IMOVEL (cd_Faixa, nm_Faixa, vl_Minimo, vl_Maximo) VALUES
(1, 'BAIXO', 0, 105000),
(2, 'MÉDIO', 105001, 180000),
(3, 'ALTO', 180001, 999999);
