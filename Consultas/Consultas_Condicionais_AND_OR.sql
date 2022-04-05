SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' OR TAMANHO = '470 ml'; --Onde sabor é manga ou tamanho é 470 ml.
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' AND TAMANHO = '470 ml'; --Onde sabor é manga e o tamanho é 470 ml.

SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' OR TAMANHO = '470 ml'); --Onde sabor não é manga ou tamanho não é 470 ml.
SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' AND TAMANHO = '470 ml'); --Onde sabor não é manga e o tamanho não é 470 ml.

SELECT * FROM TABELA_DE_PRODUTOS WHERE (SABOR = 'Manga' AND NOT (TAMANHO = '470 ml')); --Onde sabor é manga, porém o tamanho não é 470 ml.

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR IN ('Laranja', 'Manga'); --Onde sabor é manga ou laranja (como se fosse um "or" de forma mais simples).

SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro', 'São Paulo') AND IDADE >= 20; -- Quem mora no RJ ou em SP que tenha idade maior ou igual a 20 anos.







