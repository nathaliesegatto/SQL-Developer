
-- RETORNA DO 3� AO 5� CARACTERE DOS DADOS DA COLUNA "NOME_DO_PRODUTO"
SELECT NOME_DO_PRODUTO, SUBSTR(NOME_DO_PRODUTO, 3, 5) FROM TABELA_DE_PRODUTOS;

-- RETORNA DO 1� AO 3� CARACTERE DOS DADOS DA COLUNA "NOME_DO_PRODUTO"
SELECT NOME_DO_PRODUTO, SUBSTR(NOME_DO_PRODUTO, 1, 3) FROM TABELA_DE_PRODUTOS;