-- 1. Selecionar Todos os Produtos
SELECT * FROM produtos;


-- 2. Selecionar Produtos Específicos

SELECT nome, preco
FROM produtos
WHERE preco > 100;

-- 3. Produtos com Estoque Baixo

SELECT nome, quantidade_estoque
FROM produtos
WHERE quantidade_estoque < 20;


-- 4. Produtos Por Faixa de Preço

SELECT 
    nome,
    preco,
    CASE 
        WHEN preco < 50 THEN 'Abaixo de 50'
        WHEN preco BETWEEN 50 AND 100 THEN 'Entre 50 e 100'
        ELSE 'Acima de 100'
    END AS faixa_de_preco
FROM produtos;


-- 5. Atualização de Preços

SELECT nome, preco * 1.1 AS preco_atualizado
FROM produtos;

-- 6. Ordenar Produtos por Disponibilidade

SELECT nome, preco, quantidade_estoque
FROM produtos
ORDER BY quantidade_estoque DESC;
