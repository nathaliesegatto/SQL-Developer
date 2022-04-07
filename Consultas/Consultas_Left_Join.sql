SELECT COUNT (*) FROM TABELA_DE_CLIENTES;
SELECT * FROM TABELA_DE_CLIENTES;

-- Retorna as notas fiscais emitidas agrupadas por cliente (falta 1 cliente, pois na tabela de clientes há 16 registros)
SELECT CPF, COUNT(*) FROM NOTAS_FISCAIS
GROUP BY CPF;

-- Retorna clientes com cpf cadastrado (A.CPF na TABELA_DE_CLIENTES) junto com clientes que nunca compraram (B.CPF na tabela NOTAS_FISCAIS)
SELECT DISTINCT A.CPF AS CPF_CADASTRO, A.NOME, B.CPF AS CPF_NOTA  -- DISTINCT PARA NÃO REPETIR LINHAS IGUAIS, POIS O MESMO CLIENTE FAZ COMPRAS VÁRIAS VEZES
FROM TABELA_DE_CLIENTES A LEFT JOIN NOTAS_FISCAIS B
ON A.CPF = B.CPF;

-- Retorna somente clientes que estão cadastrados mas que nunca compraram (B.CPF na  tabela NOTAS_FISCAIS)
SELECT DISTINCT A.CPF AS CPF_CADASTRO, A.NOME, B.CPF AS CPF_NOTA
FROM TABELA_DE_CLIENTES A LEFT JOIN NOTAS_FISCAIS B
ON A.CPF = B.CPF
WHERE B.CPF IS null;
