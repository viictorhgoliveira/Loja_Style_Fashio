-- 1. Listar todos os produtos com sua categoria e fornecedor
SELECT 
    p.nome AS produto,
    c.nome AS categoria,
    f.nome AS fornecedor,
    p.preco
FROM produto p
JOIN categoria c ON p.id_categoria = c.id_categoria
JOIN fornecedor f ON p.id_fornecedor = f.id_fornecedor
ORDER BY p.nome;

-- 2. Listar vendas de um cliente específico com itens e preços
SELECT 
    v.id_venda,
    c.nome AS cliente,
    i.id_produto,
    p.nome AS produto,
    i.quantidade,
    i.preco_unitario,
    (i.quantidade * i.preco_unitario) AS subtotal
FROM venda v
JOIN cliente c ON v.id_cliente = c.id_cliente
JOIN item_venda i ON v.id_venda = i.id_venda
JOIN produto p ON i.id_produto = p.id_produto
WHERE c.nome = 'Lucas Mendes';

-- 3. Listar produtos com estoque abaixo de 30 unidades
SELECT 
    p.nome AS produto,
    e.quantidade
FROM estoque e
JOIN produto p ON e.id_produto = p.id_produto
WHERE e.quantidade < 30;

-- 4. Total de vendas por cliente
SELECT 
    c.nome AS cliente,
    SUM(i.quantidade * i.preco_unitario) AS total_compras
FROM cliente c
JOIN venda v ON c.id_cliente = v.id_cliente
JOIN item_venda i ON v.id_venda = i.id_venda
GROUP BY c.nome
ORDER BY total_compras DESC;

-- 5. Produtos e suas reposições (quantidade reposta e custo)
SELECT 
    p.nome AS produto,
    r.data AS data_reposicao,
    ir.quantidade AS quantidade_reposta,
    ir.custo AS custo_unitario
FROM item_reposicao ir
JOIN produto p ON ir.id_produto = p.id_produto
JOIN reposicao r ON ir.id_reposicao = r.id_reposicao
ORDER BY r.data DESC;
