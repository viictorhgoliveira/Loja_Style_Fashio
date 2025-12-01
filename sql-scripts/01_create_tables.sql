-- ============================
-- 01_create_tables.sql
-- Script para criar todas as tabelas do projeto Loja Style Fashion
-- ============================

-- TABELA CLIENTE
CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    email TEXT,
    endereco TEXT
);

-- TABELA CATEGORIA
CREATE TABLE IF NOT EXISTS categoria (
    id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- TABELA TAMANHO
CREATE TABLE IF NOT EXISTS tamanho (
    id_tamanho INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL
);

-- TABELA FORNECEDOR
CREATE TABLE IF NOT EXISTS fornecedor (
    id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cnpj TEXT
);

-- TABELA PRODUTO
CREATE TABLE IF NOT EXISTS produto (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    id_categoria INTEGER NOT NULL,
    id_tamanho INTEGER NOT NULL,
    id_fornecedor INTEGER NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
    FOREIGN KEY (id_tamanho) REFERENCES tamanho(id_tamanho),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

-- TABELA ESTOQUE
CREATE TABLE IF NOT EXISTS estoque (
    id_estoque INTEGER PRIMARY KEY AUTOINCREMENT,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- TABELA VENDA
CREATE TABLE IF NOT EXISTS venda (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER NOT NULL,
    data TEXT NOT NULL,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- TABELA ITEM_VENDA
CREATE TABLE IF NOT EXISTS item_venda (
    id_item_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    id_venda INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- TABELA REPOSICAO
CREATE TABLE IF NOT EXISTS reposicao (
    id_reposicao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_fornecedor INTEGER NOT NULL,
    data TEXT NOT NULL,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

-- TABELA ITEM_REPOSICAO
CREATE TABLE IF NOT EXISTS item_reposicao (
    id_item_reposicao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_reposicao INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    custo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_reposicao) REFERENCES reposicao(id_reposicao),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- TABELA PAGAMENTO
CREATE TABLE IF NOT EXISTS pagamento (
    id_pagamento INTEGER PRIMARY KEY AUTOINCREMENT,
    id_venda INTEGER NOT NULL,
    forma_pagamento TEXT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data TEXT NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda)
);
