-- ============================
-- CLIENTES
-- ============================
INSERT INTO cliente (nome, telefone, email, endereco) VALUES
('Lucas Mendes', '31999999999', 'lucas@gmail.com', 'Rua Alpha, 123'),
('Gabriel Costa', '31988888888', 'gabriel@gmail.com', 'Rua Beta, 456'),
('Rafael Souza', '31977777777', 'rafael@gmail.com', 'Rua Gama, 789');

-- ============================
-- CATEGORIAS
-- ============================
INSERT INTO categoria (nome) VALUES
('Camisetas'), ('Calças'), ('Acessórios');

-- ============================
-- TAMANHOS
-- ============================
INSERT INTO tamanho (descricao) VALUES
('P'), ('M'), ('G');

-- ============================
-- FORNECEDORES
-- ============================
INSERT INTO fornecedor (nome, cnpj) VALUES
('Fashion Import', '12345678000190'),
('Style Supplier', '98765432000150');

-- ============================
-- PRODUTOS
-- ============================
INSERT INTO produto (nome, preco, id_categoria, id_tamanho, id_fornecedor) VALUES
('Camiseta Estampa X', 49.90, 1, 2, 1),
('Calça Jeans Slim', 129.90, 2, 3, 2),
('Boné Street', 59.90, 3, 2, 1),
('Camiseta Básica', 39.90, 1, 1, 2),
('Relógio Masculino', 199.90, 3, 3, 2);

-- ============================
-- ESTOQUE
-- ============================
INSERT INTO estoque (id_produto, quantidade) VALUES
(1, 50), (2, 30), (3, 70), (4, 40), (5, 20);

-- ============================
-- REPOSIÇÕES
-- ============================
INSERT INTO reposicao (id_fornecedor, data) VALUES
(1, '2025-11-25'),
(2, '2025-11-26');

-- ============================
-- ITENS DE REPOSIÇÃO
-- ============================
INSERT INTO item_reposicao (id_reposicao, id_produto, quantidade, custo) VALUES
(1, 1, 20, 30.00),
(1, 3, 50, 25.00),
(2, 2, 15, 80.00),
(2, 5, 10, 150.00);

-- ============================
-- VENDAS
-- ============================
INSERT INTO venda (id_cliente, data, valor_total) VALUES
(1, '2025-11-27', 159.80),
(2, '2025-11-28', 189.80);

-- ============================
-- ITENS DE VENDAS
-- ============================
INSERT INTO item_venda (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 49.90),
(1, 4, 1, 39.90),
(2, 2, 1, 129.90),
(2, 3, 1, 59.90);

-- ============================
-- PAGAMENTOS
-- ============================
INSERT INTO pagamento (id_venda, forma_pagamento, valor, data) VALUES
(1, 'Cartão', 159.80, '2025-11-27'),
(2, 'Dinheiro', 189.80, '2025-11-28');
