
-- Retorna o primeiro dia do ANO em que está a data 1 se estiver na primeira metade
-- ou 
-- Retorna o primeiro dia do ANO SEGUINTE que está a data 1 se estiver na segunda metade. 

-- ***** DATA DE HOJE: 07/04/2022 ***** -- 

SELECT ROUND(SYSDATE, 'YEAR') FROM DUAL; -- Como estamos no início do ano (abril), arredonda pra baixo (01/01/22)

SELECT ROUND(SYSDATE, 'MONTH') FROM DUAL; -- Como estamos no início do mês (dia 07), arredonda pra baixo (01/04/22)

SELECT ROUND(TO_DATE('01/09/2019', 'DD-MM-YYYY'), 'YEAR') FROM DUAL; -- Como a data é do segundo semestre, arredonda pra cima (01/01/20)

SELECT ROUND(TO_DATE('17/09/2019', 'DD-MM-YYYY'), 'MONTH') FROM DUAL; -- Como o dia da data é da segunda quinzena, arredonda pra cima (01/10/2019)

SELECT ROUND(SYSDATE - 10, 'MONTH') FROM DUAL; -- como a data subtraída resulta em 27/03/22, arredonda para 01/04/22