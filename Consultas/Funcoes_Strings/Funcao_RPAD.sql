
--Retorna dados preenchidos com "*" à DIREITA, totalizando até 60 caracteres
SELECT NOME_DO_PRODUTO, RPAD(NOME_DO_PRODUTO, 60, '*')
FROM TABELA_DE_PRODUTOS;