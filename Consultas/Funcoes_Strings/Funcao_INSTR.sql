
-- RETORNA A POSI��O EM QUE EST� O CARACTETE TRA�O "-"
SELECT NOME_DO_PRODUTO, INSTR(NOME_DO_PRODUTO, '-')
FROM TABELA_DE_PRODUTOS;

-- RETORNA A POSI��O EM QUE EST� O CARACTETE "ml"
SELECT NOME_DO_PRODUTO, INSTR(NOME_DO_PRODUTO, 'ml')
FROM TABELA_DE_PRODUTOS;