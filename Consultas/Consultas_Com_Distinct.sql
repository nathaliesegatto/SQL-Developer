SELECT EMBALAGEM FROM TABELA_DE_PRODUTOS; -- Retorna todas as embalagens.
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS; -- Retorna todos os tipos de embalagens, sem repeti��es.

SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS; -- Retorna todos os sabores, sem repeti��es.

SELECT DISTINCT  SABOR FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'Garrafa';  -- Retorna todos os sabores cujos produtos vem em garrafas.

SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS; -- Retorna os sabores dispon�veis por embalagem.

SELECT DISTINCT BAIRRO, CIDADE FROM TABELA_DE_CLIENTES WHERE CIDADE = 'Rio de Janeiro'; -- Retorna todos os bairros do Rio de Janeiro onde h� clientes.

