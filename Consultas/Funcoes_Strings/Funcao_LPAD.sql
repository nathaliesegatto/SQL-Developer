
--Retorna dados preenchidos com "*" � ESQUERDA, totalizando at� 60 caracteres
SELECT NOME_DO_PRODUTO, LPAD(NOME_DO_PRODUTO, 60, '*')
FROM TABELA_DE_PRODUTOS;