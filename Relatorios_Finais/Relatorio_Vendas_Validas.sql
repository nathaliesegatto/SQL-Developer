
-- Para que a compra seja v�lida, o volume total de compras mensal do clinete (SOMA DA QUANTIDADE) deve ser menor ou igual ao voluma na tabela de clientes.

SELECT * FROM TABELA_DE_CLIENTES;
SELECT * FROM ITENS_NOTAS_FISCAIS;
SELECT * FROM NOTAS_FISCAIS;

-- RETORNA VOLUME COMPRADO POR CLIENTES POR M�S, ORDENADO POR NOME
SELECT NOME AS CLIENTE, SUM(QUANTIDADE) AS VOLUME_VENDIDO, TO_CHAR (DATA_VENDA, 'YYYY-MM') AS ANO_MES
FROM ITENS_NOTAS_FISCAIS IT
INNER JOIN NOTAS_FISCAIS NF ON IT.NUMERO = NF.NUMERO
INNER JOIN TABELA_DE_CLIENTES TC ON NF.CPF = TC.CPF
GROUP BY NOME, TO_CHAR (DATA_VENDA, 'YYYY-MM')
ORDER BY NOME, TO_CHAR (DATA_VENDA, 'YYYY-MM') ASC;

-- RETORNA TABELA COM CLIENTE, VOLUME VENDIDO, VOLUME DE COMPRA, ANO_MES
SELECT TC.CLIENTE, VOLUME_VENDIDO, TC.VOLUME_DE_COMPRA, ANO_MES 
FROM
(SELECT NOME AS CLIENTE, SUM(QUANTIDADE) AS VOLUME_VENDIDO, TO_CHAR (DATA_VENDA, 'YYYY-MM') AS ANO_MES
FROM ITENS_NOTAS_FISCAIS IT
INNER JOIN NOTAS_FISCAIS NF ON IT.NUMERO = NF.NUMERO
INNER JOIN TABELA_DE_CLIENTES TC ON NF.CPF = TC.CPF
GROUP BY NOME, TO_CHAR (DATA_VENDA, 'YYYY-MM')
ORDER BY NOME, TO_CHAR (DATA_VENDA, 'YYYY-MM') ASC) V
INNER JOIN
(SELECT CPF, NOME AS CLIENTE, VOLUME_DE_COMPRA FROM TABELA_DE_CLIENTES) TC
ON V.CLIENTE = TC.CLIENTE;



---- ***** CASE ***** ----

-- RETORNA 'V�LIDO' SE O VOLUME VENDIDO FOR MENOR OU IGUAL AO VOLUME DE COMPRA, E 'INV�LIDO' CASO CONTR�RIO

SELECT CLIENTE, VOLUME_VENDIDO, VOLUME_DE_COMPRA, ANO_MES,
(CASE
    WHEN VOLUME_VENDIDO <= VOLUME_DE_COMPRA THEN 'V�LIDO'
    ELSE 'INV�LIDO'
    END) AS STATUS_VOLUME
    FROM (SELECT TC.CLIENTE, VOLUME_VENDIDO, TC.VOLUME_DE_COMPRA, ANO_MES 
    FROM
    (SELECT NOME AS CLIENTE, SUM(QUANTIDADE) AS VOLUME_VENDIDO, TO_CHAR (DATA_VENDA, 'YYYY-MM') AS ANO_MES
    FROM ITENS_NOTAS_FISCAIS IT
    INNER JOIN NOTAS_FISCAIS NF ON IT.NUMERO = NF.NUMERO
    INNER JOIN TABELA_DE_CLIENTES TC ON NF.CPF = TC.CPF
    GROUP BY NOME, TO_CHAR (DATA_VENDA, 'YYYY-MM')
    ORDER BY NOME, TO_CHAR (DATA_VENDA, 'YYYY-MM') ASC) V
    INNER JOIN
    (SELECT CPF, NOME AS CLIENTE, VOLUME_DE_COMPRA FROM TABELA_DE_CLIENTES) TC
    ON V.CLIENTE = TC.CLIENTE);







