
-- Retorna cada cliente que o vendedor tem no seu bairro, todos os vendedores que não tem clientes no bairro e todos os bairros que não tem vendedor.
SELECT A.NOME AS NOME_VENDEDOR, A.BAIRRO AS BAIRRO_VENDEDOR, B.NOME AS NOME_CLIENTE, B.BAIRRO AS BAIRRO_CLIENTE
FROM TABELA_DE_VENDEDORES A FULL JOIN TABELA_DE_CLIENTES B
ON A.BAIRRO = B.BAIRRO
ORDER BY A.NOME ASC;

-- Retorna cada cliente que o vendedor tem no seu bairro, todos os vendedores que não tem clientes no bairro e todos os bairros que não tem vendedor.
-- Retorna mensagem 'Vendedor Vazio' caso nome do vendedor esteja como nulo
SELECT NVL(A.NOME, 'Vendedor Vazio') AS NOME_VENDEDOR, A.BAIRRO AS BAIRRO_VENDEDOR, B.NOME AS NOME_CLIENTE, B.BAIRRO AS BAIRRO_CLIENTE
FROM TABELA_DE_VENDEDORES A FULL JOIN TABELA_DE_CLIENTES B
ON A.BAIRRO = B.BAIRRO
ORDER BY A.NOME ASC;