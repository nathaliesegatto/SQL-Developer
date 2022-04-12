
--Retorna dados preenchidos com "*" à ESQUERDA, totalizando até 60 caracteres
SELECT NOME_DO_PRODUTO, LPAD(NOME_DO_PRODUTO, 60, '*')
FROM TABELA_DE_PRODUTOS;