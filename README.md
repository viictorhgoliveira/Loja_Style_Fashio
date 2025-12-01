# Loja Style Fashion – Projeto SQL (Mini-mundo)

## 💻 Objetivo do Projeto

Este projeto tem como objetivo implementar e manipular dados de um banco de dados relacional para uma loja de moda masculina ("Style Fashion"), utilizando comandos SQL (DML).  
Foram criados scripts para povoamento de tabelas, consultas, atualizações e exclusões, garantindo coerência com o modelo lógico, integridade referencial e boas práticas de manipulação de dados.

O projeto permite aplicar os conceitos de SQL e ferramentas reais (SQLite, Workbench ou PGAdmin) para:

- Inserção de dados (INSERT)  
- Consultas (SELECT) com filtros, ordenação e JOINs  
- Atualizações (UPDATE)  
- Exclusões (DELETE)  

---

## 🏗 Estrutura do Banco de Dados

O banco contém as seguintes tabelas principais:

1. **cliente** → informações dos clientes (nome, telefone, email, endereço)  
2. **categoria** → categorias de produtos (camisetas, calças, acessórios)  
3. **tamanho** → tamanhos disponíveis para os produtos (P, M, G)  
4. **fornecedor** → informações dos fornecedores (nome, CNPJ)  
5. **produto** → produtos da loja, com referência à categoria, tamanho e fornecedor  
6. **estoque** → quantidade disponível de cada produto  
7. **venda** → registros das vendas realizadas, com referência ao cliente  
8. **item_venda** → produtos vendidos em cada venda  
9. **reposicao** → reposições de produtos por fornecedor  
10. **item_reposicao** → produtos repostos em cada reposição  
11. **pagamento** → pagamentos das vendas, incluindo forma, valor e data  

> Observação: os scripts SQL enviados manipulam os dados dessas tabelas, que já devem existir no banco de dados.

---

## 📂 Scripts SQL Disponíveis

Todos os scripts estão na pasta `sql-scripts/`:

- **02_insert_data.sql** → povoamento das tabelas  
- **03_select_queries.sql** → consultas SELECT (2 a 5 consultas)  
- **04_update_queries.sql** → atualizações (pelo menos 3 UPDATEs)  
- **05_delete_queries.sql** → exclusões (pelo menos 3 DELETEs)  

---

## 📝 Instruções de Execução

1. Criar o banco de dados no SQLite, Workbench ou PGAdmin.  
2. Executar os scripts na seguinte ordem:

   1. `02_insert_data.sql` → insere dados nas tabelas  
   2. `03_select_queries.sql` → executa consultas para análise dos dados  
   3. `04_update_queries.sql` → realiza atualizações de registros  
   4. `05_delete_queries.sql` → realiza exclusões de registros  

3. Conferir os resultados das consultas e alterações no banco de dados.

---

## ✅ Observações

- Todos os scripts foram testados no SQLite e estão compatíveis com SQL padrão.  
- Garantia de integridade referencial e coerência dos dados.  
- Permite aprendizado prático de DML (INSERT, SELECT, UPDATE, DELETE).  

---

## 📌 Autor / Curso / Disciplina

- **Aluno:** Victor Hugo de Oliveira Luiz  
- **Curso:** Analise e desenvolvimento de sistemas 
- **Disciplina:** Modelagem de Dados  

---


