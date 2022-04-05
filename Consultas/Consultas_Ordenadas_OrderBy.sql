SELECT * FROM TABELA_DE_CLIENTES ORDER BY NOME; --Retorna clientes em ordem alfab�tica.
SELECT * FROM TABELA_DE_CLIENTES ORDER BY NOME ASC; --Retorna clientes em ordem alfab�tica (ascendente).
SELECT * FROM TABELA_DE_CLIENTES ORDER BY NOME DESC; --Retorna clientes em ordem alfab�tica (descendente).
SELECT * FROM TABELA_DE_CLIENTES ORDER BY NOME, IDADE DESC; --Retorna clientes em ordem alfab�tica (descendente) e idade (descendente)


SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA; --Retorna produtos dos mais baratos para os mais caros (ascendente).
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC; --Retorna produtos dos mais caros para os mais baratos (descendente).
SELECT EMBALAGEM, PRECO_DE_LISTA FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM ASC, PRECO_DE_LISTA DESC; --Retorna produtos dos mais caros para os mais baratos por embalagem.
