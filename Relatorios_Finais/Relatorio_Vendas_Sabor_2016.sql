SELECT * FROM TABELA_DE_PRODUTOS;
SELECT * FROM ITENS_NOTAS_FISCAIS;
SELECT * FROM NOTAS_FISCAIS;

-- RETORNA SABOR E QUANTIDADE VENDIDOS EM 2016, ORDENADOS PELO SABOR MAIS VENDIDO
SELECT SABOR, SUM(QUANTIDADE) AS QUANTIDADE, TO_CHAR(DATA_VENDA, 'YYYY') AS ANO
FROM TABELA_DE_PRODUTOS TP
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = 2016
GROUP BY SABOR, TO_CHAR(NF.DATA_VENDA, 'YYYY')
ORDER BY QUANTIDADE DESC;


-- RETORNA SABOR E QUANTIDADE VENDIDOS EM 2016, ORDENADOS PELO SABOR MAIS VENDIDO E PERCENTUAL QUE CADA SABOR REPRESENTA
SELECT S.SABOR, S.QUANTIDADE, S.ANO, ROUND((S.QUANTIDADE / T.TOTAL)*100,2) || '%' AS PERCENTUAL
FROM
(
SELECT SABOR, SUM(QUANTIDADE) AS QUANTIDADE, TO_CHAR(DATA_VENDA, 'YYYY') AS ANO
FROM TABELA_DE_PRODUTOS TP
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = 2016
GROUP BY SABOR, TO_CHAR(NF.DATA_VENDA, 'YYYY')
ORDER BY QUANTIDADE DESC
) S
INNER JOIN
(
SELECT SUM(QUANTIDADE) AS TOTAL, TO_CHAR(DATA_VENDA, 'YYYY') AS ANO
FROM TABELA_DE_PRODUTOS TP
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = 2016
GROUP BY TO_CHAR(NF.DATA_VENDA, 'YYYY')
) T
ON S.ANO = T.ANO;

-- QUERY FORMATADA
SELECT
    s.sabor,
    s.quantidade,
    s.ano,
    round((s.quantidade / t.total) * 100, 2)
    || '%' AS percentual
FROM
         (SELECT
            sabor,
            SUM(quantidade) AS quantidade,
            to_char(data_venda, 'YYYY') AS ano
        FROM
                 tabela_de_produtos tp
            INNER JOIN itens_notas_fiscais inf
            ON tp.codigo_do_produto = inf.codigo_do_produto
            INNER JOIN notas_fiscais nf
            ON inf.numero = nf.numero
        WHERE
            to_char(data_venda, 'YYYY') = 2016
        GROUP BY
            sabor,
            to_char(nf.data_venda, 'YYYY')
        ORDER BY
            quantidade DESC
           ) s
    INNER JOIN (
        SELECT
            SUM(quantidade)             AS total,
            to_char(data_venda, 'YYYY') AS ano
        FROM
                 tabela_de_produtos tp
            INNER JOIN itens_notas_fiscais inf ON tp.codigo_do_produto = inf.codigo_do_produto
            INNER JOIN notas_fiscais       nf ON inf.numero = nf.numero
        WHERE
            to_char(data_venda, 'YYYY') = 2016
        GROUP BY
            to_char(nf.data_venda, 'YYYY')
                )t
    ON s.ano = t.ano;











