SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' OR TAMANHO = '470 ml'; --Onde sabor � manga ou tamanho � 470 ml.
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' AND TAMANHO = '470 ml'; --Onde sabor � manga e o tamanho � 470 ml.

SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' OR TAMANHO = '470 ml'); --Onde sabor n�o � manga ou tamanho n�o � 470 ml.
SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' AND TAMANHO = '470 ml'); --Onde sabor n�o � manga e o tamanho n�o � 470 ml.

SELECT * FROM TABELA_DE_PRODUTOS WHERE (SABOR = 'Manga' AND NOT (TAMANHO = '470 ml')); --Onde sabor � manga, por�m o tamanho n�o � 470 ml.

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR IN ('Laranja', 'Manga'); --Onde sabor � manga ou laranja (como se fosse um "or" de forma mais simples).

SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro', 'S�o Paulo') AND IDADE >= 20; -- Quem mora no RJ ou em SP que tenha idade maior ou igual a 20 anos.







