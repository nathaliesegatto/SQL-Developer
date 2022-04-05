SELECT * FROM tabela_de_clientes WHERE PRODUTO = '1086543'

SELECT * FROM tabela_de_produtos WHERE CIDADE = 'RIO DE JANEIRO'

SELECT * FROM tabela_de_clientes WHERE IDADE = 22;

SELECT * FROM tabela_de_clientes WHERE IDADE <= 22;

SELECT * FROM tabela_de_clientes WHERE IDADE >= 22; 

SELECT * FROM tabela_de_clientes WHERE IDADE <> 22; <<< MENOR OU IGUAL

SELECT * FROM tabela_de_clientes WHERE NOME > 'Fernando Cavalcante'; <<< De acordo tabela ISO-Latin-1

SELECT * FROM tabela_de_produtos WHERE PRECO_LISTA >= 16.007 AND PRECO_LISTA <= 21;

SELECT * FROM tabela_de_clientes WHERE IDADE > 22 AND SEXO = 'F';

SELECT * FROM tabela_de_produtos WHERE CIDADE = 'RIO DE JANEIRO' OR CIDADE = 'SÃO PAULO';

SELECT * FROM tabela_de_produtos WHERE (IDADE > 22 AND SEXO = 'F') AND (CIDADE = 'RIO DE JANEIRO' OR CIDADE = 'SÃO PAULO');

