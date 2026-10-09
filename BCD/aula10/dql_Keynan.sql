--  Ex 1: SELECT simples 
-- SELECT coluna;
-- from tabela;

SELECT * FROm clientes;
--Consulta todas as colunas da tabela


SELECT nome,telefone FROM clientes;


SELECT nome,ativo FROM produto;

--Consulta dados com varias colunas 



-- Ex2: consultando e personalizando a consulta



SELECT nome as Nome_Cliente, telefone as Contato_cliente
from clientes;


SELECT nome,preco,preco *10 as preco_ajustado
FROM produto;



--Ex 3 : DISTINCT - eliminar repetições


SELECT DISTINCT cidade
FROM clientes;


SELECT cidade FROM clientes;




-- Com o DISTINCT cada resultado é apresentado uma unica vez
-- sem o DISTINCT cada resultado é apresentado varias vezes


-- Ex 4 : uso de WHERE - filtro de registros
-- Inserir condições e utilizar operadores de comparação

--  = Igual
--  <> ou ! = Diferente
--  > = maior que 
--  < = menor que 
 SELECT nome, preco FROM produto WHERE preco > 15;

 -- Consultar precos que possuem valores acima de 15 reais


 SELECT nome, preco FROM produto WHERE ativo = TRUE;


 -- Consultar produtos ativos/inativos
 SELECT id_pedido, data_pedido, valor_total
 FROM pedido WHERE valor_total > 25;



-- Ex 5: uso de and, or e not


-- and - Todas as condições verdadeira

Select nome,preco from produto WHERE preco > 8 and preco <25;



-- or = uma das condições precisam ser verdadeiras 


SELECT nome,cidade FROM clientes WHERE cidade = 'Limeira' or cidade = 'rondonia';




-- NOT criar uma condição de negação 


SELECT nome, cidade FROM clientes WHERE not cidade ='Limeira';


-- and e or juntos precisamos inserir ()

SELECT nome,cidade , ativo From clientes
WHERE ativo = TRUE AND (cidade='limeira' OR cidade ='Piracicaba');


-- Ex 6: BETWEEN - pesquisar por intervalos
-- Limite inicial e final


SELECT nome, preco FROM produto WHERE preco BETWEEN 8.00 and 15.00;
-- Consulta o intervalo de valores


SELECT id_pedido, data_pedido, valor_total FROM pedido WHERE data_pedido BETWEEN '2026-09-01 00:00:00' AND '2026-10-30 23:59:59';

-- Consultar entre um intervalo de tempo 
-- Ex 7: in para muitas possibilidades

SELECT nome,cidade from clientes WHERE cidade IN('Limeira','Piracicaba','Rondonia');


SELECT nome, cidade FROM clientes WHERE cidade NOT IN ('Limeira','Piracicaba');

-- Ex 8: LIKE - pesquisa por texto 

-- Coringas 
-- % Vários caracters  
-- _ apenas um caracter 


SELECT nome FROM produto WHERE nome LIKE 'Café%';
-- Consulta pela palavra que deseja e qual começa

SELECT nome FROM produto
WHERE nome LIKE '%Chocolate';

--Consulta pela palavra que termina com chocolate

SELECT nome FROM clientes
WHERE nome LIKE '%Silva%';

-- Consulta exatamente o nome


SELECT nome FROM produto WHERE nome LIKE '%o_o%';
-- Quando eu não sei a palavra inteira, ele consulta as letras inseridas 


-- Ex 9: Null ausencia de valor 

SELECT nome, telefone FROM clientes WHERE telefone is NULL;
SELECT nome, telefone FROM clientes WHERE telefone is not NULL;

-- SELECT nome, telefone FROM clientes WHERE telefone = NULL -- ERRADO


-- Ex 10 : ORDER BY - ordenar resultados

-- ASC é crescente 
-- Desc é decresente



SELECT nome,preco FROM produto ORDER BY preco ASC;
SELECT nome,preco FROM produto ORDER BY preco DESC;



SELECT nome, preco FROM produto ORDER BY nome ASC, preco  DESC;

-- Ordenar por mais de uma coluna


-- 11 Limit determinar uma quantidade de linhas


SELECT nome, preco FROM produto ORDER BY preco desc LIMIT 5;



SELECT nome,preco FROM produto ORDER BY nome LIMIT 5 OFFSET 5;



-- Ex 12: calculos em colunas 

SELECT nome,preco,preco * 1.2 as Preco_reajuste
from produto;

SELECT id_item, quantidade, preco_unitario, quantidade * preco_unitario as subtotal from item_pedido;


-- Ex 13: Funções 
    -- TEXTOS

SELECT UPPER(nome) as NOME_M, LOWER(cidade) as cidade_m
FROM clientes;
-- Uso de maiusculo e minusculo


SELECT CONCAT(nome,'    |   ',cidade) as cliente_cidade from clientes;


-- Números
SELECT nome, preco , ROUND (preco * 0.90,2) as preco_desconto FROM produto;

-- Datas

SELECT id_pedido, data_pedido, valor_total, DATE(data_pedido) as DATAS, MONTH (data_pedido) as Mês, YEAR (data_pedido) as ano, DAY (data_pedido) as dia, TIME (data_pedido) as horario FROM pedido;


-- Substituir o null por resultado com coalesce


SELECT nome, COALESCE(telefone,'Não informado') as telefone FROM clientes;


-- Ex 14: função de agregação

 count = contar uma quantidade 
 Sum = somar valores 
 avg = calcular media
 min = Valor minimo
 max = valor maximo 


 SELECT COUNT(*) as total_cliente from clientes; 
 -- quantos clientes possuem na tabela 

 SELECT ROUND(AVG(preco),2) as Media_preco FROM produto;

 -- Medias do preco dos produtos 

 SELECT MIN(preco) as preços_baixos,
 max(preco) as preço_alto,
 ROUND(AVG(preco),2) as media_de_precos 
 FROM produto;


SELECT SUM(valor_total) as faturamento
FROM pedido
WHERE status_pedido = 'Preparando';


SELECT  cidade,COUNT(*) as qtde_clientes
from clientes
GROUP BY cidade;

SELECT id_categoria, COUNT(*) as qtde_produtos
FROM produto
GROUP BY id_categoria;

--Quantidade de produtos por categoria






