-- Exercícios de Revisão:

-- 0)

-- Cria tabelas.

CREATE TABLE TbGenero (
    PkCodGen INT NOT NULL,
    NomeGen VARCHAR(20) NOT NULL
);

CREATE TABLE TbFilme (
    PkCodFilme INT NOT NULL,
    Titulo VARCHAR(30) NOT NULL,
    FkCodGen INT NOT NULL,
    FkCodClass INT NOT NULL
);

CREATE TABLE TbClassificacao (
    PkCodClass INT NOT NULL,
    NomeClass VARCHAR(20) NOT NULL,
    ValorDiaria NUMBER NOT NULL
);

CREATE TABLE TbRelFilmeLoc (
    PkCodRel INT NOT NULL,
    FkCodFilme INT NOT NULL,
    FkCodLoc INT NOT NULL
);

CREATE TABLE TbLocacao (
    PkCodLoc INT NOT NULL,
    DataLoc DATE NOT NULL,
    FkCodCli INT NOT NULL
);

CREATE TABLE TbCliente (
    PkCodCli INT NOT NULL,
    NomeCli VARCHAR(30) NOT NULL,
    EndCli VARCHAR(30) NOT NULL,
    CidadeCli VARCHAR(30) NOT NULL,
    UfCli VARCHAR(2) NOT NULL
);

-- Cria chaves primárias.

ALTER TABLE TbGenero ADD CONSTRAINT TbGeneroPk PRIMARY KEY(PkCodGen);
ALTER TABLE TbFilme ADD CONSTRAINT TbFilmePk PRIMARY KEY(PkCodFilme);
ALTER TABLE TbClassificacao ADD CONSTRAINT TbClassificacaoPk
    PRIMARY KEY(PkCodClass);
ALTER TABLE TbRelFilmeLoc ADD CONSTRAINT TbRelFilmeLocPk PRIMARY KEY(PkCodRel);
ALTER TABLE TbLocacao ADD CONSTRAINT TbLocacaoPk PRIMARY KEY(PkCodLoc);
ALTER TABLE TbCliente ADD CONSTRAINT TbClientePk PRIMARY KEY(PkCodCli);

-- Cria chaves estrangeiras.

ALTER TABLE TbFilme ADD CONSTRAINT TbFilme_FkCodGen FOREIGN KEY(FkCodGen)
    REFERENCES TbGenero (PkCodGen);
ALTER TABLE TbFilme ADD CONSTRAINT TbFilme_FkCodClass FOREIGN KEY(FkCodClass)
    REFERENCES TbClassificacao (PkCodClass);

ALTER TABLE TbRelFilmeLoc ADD CONSTRAINT TbRelFilmeLoc_FkCodFilme
    FOREIGN KEY(FkCodFilme) REFERENCES TbFilme (PkCodFilme);
ALTER TABLE TbRelFilmeLoc ADD CONSTRAINT TbRelFilmeLoc_FkCodLoc
    FOREIGN KEY(FkCodLoc) REFERENCES TbLocacao (PkCodLoc);

ALTER TABLE TbLocacao ADD CONSTRAINT TbLocacao_FkCodCli
    FOREIGN KEY(FkCodCli) REFERENCES TbCliente (PkCodCli);

-- Dados base.

INSERT INTO TBCLASSIFICACAO (PKCODCLASS, NOMECLASS, VALORDIARIA) VALUES (1, 'Lancamento', 9.3);
INSERT INTO TBCLASSIFICACAO (PKCODCLASS, NOMECLASS, VALORDIARIA) VALUES (2, 'Destaque', 5.6);
INSERT INTO TBCLASSIFICACAO (PKCODCLASS, NOMECLASS, VALORDIARIA) VALUES (3, 'Antigo', 2.9);
INSERT INTO TBCLASSIFICACAO (PKCODCLASS, NOMECLASS, VALORDIARIA) VALUES (4, 'Muito Antigo', 1.99);

INSERT INTO TBGENERO (PKCODGEN, NOMEGEN) VALUES (1, 'Aventura');
INSERT INTO TBGENERO (PKCODGEN, NOMEGEN) VALUES (2, 'Acao');
INSERT INTO TBGENERO (PKCODGEN, NOMEGEN) VALUES (3, 'Romance');
INSERT INTO TBGENERO (PKCODGEN, NOMEGEN) VALUES (4, 'Drama');

INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (1, 'Garrastazu Medici', 'Rua XXX , 70', 'Porto Alegre', 'RS');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (2, 'Ernesto Geisel', 'AV yyyy, 500', 'Canoas', 'RS');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (3, 'Joao Figueiredo', 'Rua wwww, 65', 'Sapucaia', 'RS');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (4, 'Tancredo Neves', 'AV yyyy, 800', 'Porto Alegre', 'RS');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (5, 'Jose Sarney', 'AV yyyy, 739', 'Sapucaia', 'RS');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (6, 'Fernando Collor', 'Rua XXX , 120', 'Porto Alegre', 'RS');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (7, 'Itamar Franco', 'AV. qqq, 5', 'Porto Alegre', 'RS');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (8, 'Fernando Henrique Cardoso', 'Rua XXX , 90', 'Camboriu', 'SC');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (9, 'Luiz Inacio Lula da Silva', 'AV. hhhh 88', 'Camboriu', 'SC');
INSERT INTO TBCLIENTE (PKCODCLI, NOMECLI, ENDCLI, CIDADECLI, UFCLI) VALUES (10, 'Dilma Rousseff', 'Rua abc, 44', 'Canoas', 'RS');

INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (1, 'A Regra do Jogo', 1, 1);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (2, 'Um Corpo Que Cai', 4, 3);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (3, '2001, uma Odisseia no Espaco', 2, 2);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (4, 'O Poderoso Chefao 2', 3, 2);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (5, 'O Encouracado Potekim ', 2, 4);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (6, 'Cantando na Chuva', 2, 3);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (7, 'O Poderoso Chefao', 1, 3);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (8, 'Era Uma Vez em Toquio', 3, 2);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (9, 'Mil e uma aventuras', 3, 2);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (10, 'Os Sete Samurais', 3, 3);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (11, 'Rastros de Odio ', 2, 1);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (12, 'Ladroes de Bicicletas', 4, 1);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (13, 'A Paixao de Joana DArc ', 4, 1);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (14, 'Lawrence da Arabia', 3, 4);
INSERT INTO TBFILME (PKCODFILME, TITULO, FKCODGEN, FKCODCLASS) VALUES (15, 'O Touro Indomavel', 2, 4);

INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (1, '01/07/2011', 3);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (2, '01/07/2011', 2);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (3, '10/07/2011', 3);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (4, '20/08/2011', 8);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (5, '20/08/2011', 8);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (6, '25/08/2011', 1);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (7, '01/09/2011', 8);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (8, '01/09/2011', 7);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (9, '10/09/2011', 7);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (10, '15/09/2011', 3);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (11, '20/09/2011', 8);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (12, '20/09/2011', 1);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (13, '23/09/2011', 9);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (14, '26/09/2011', 10);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (15, '28/09/2011', 9);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (16, '28/09/2011', 8);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (17, '30/09/2011', 9);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (18, '07/10/2011', 10);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (19, '07/10/2011', 9);
INSERT INTO TBLOCACAO (PKCODLOC, DATALOC, FKCODCLI) VALUES (20, '07/10/2011', 10);

INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (1, 2, 1);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (2, 11, 1);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (3, 4, 1);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (4, 10, 1);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (5, 13, 1);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (6, 1, 2);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (7, 5, 2);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (8, 11, 3);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (9, 12, 3);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (10, 4, 3);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (11, 6, 4);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (12, 3, 5);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (13, 7, 5);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (14, 4, 6);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (15, 1, 7);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (16, 6, 7);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (17, 9, 7);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (18, 3, 8);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (19, 1, 9);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (20, 7, 9);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (21, 4, 9);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (22, 5, 10);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (23, 2, 11);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (24, 1, 12);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (25, 12, 12);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (26, 3, 13);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (27, 5, 13);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (28, 3, 14);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (29, 14, 14);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (30, 5, 14);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (31, 7, 14);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (32, 15, 14);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (33, 12, 14);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (34, 3, 15);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (35, 2, 16);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (36, 2, 17);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (37, 6, 17);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (38, 5, 17);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (39, 13, 18);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (40, 2, 19);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (41, 9, 19);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (42, 11, 20);
INSERT INTO TBRELFILMELOC (PKCODREL, FKCODFILME, FKCODLOC) VALUES (43, 10, 20);

-- 1)

INSERT INTO TbClassificacao VALUES (5, 'Novo', 12.23);

-- 2)

UPDATE TbClassificacao SET
    NomeClass = 'Bem Novo',
    ValorDiaria = 13.41
WHERE PkCodClass = 5;

-- 3)

SELECT ValorDiaria, ValorDiaria * 0.18, ValorDiaria + (ValorDiaria * 0.18) 
FROM TbClassificacao
WHERE NomeClass LIKE 'A%'
    OR NomeClass LIKE 'D%';

UPDATE TbClassificacao SET
ValorDiaria = ValorDiaria + (ValorDiaria * 0.18)
WHERE NomeClass LIKE 'A%'
    OR NomeClass LIKE 'D%';

-- 4)

INSERT INTO TbCliente VALUES (11, 'Teste', 'Rua Teste, 1', 'Canoas', 'RJ');

SELECT *
FROM TbCliente
WHERE (UfCli = 'RJ' OR UfCli = 'SC')
AND (PkCodCli BETWEEN 10 AND 12)

DELETE FROM TbCliente
WHERE (UfCli = 'RJ' OR UfCli = 'SC')
AND (PkCodCli BETWEEN 10 AND 12)



