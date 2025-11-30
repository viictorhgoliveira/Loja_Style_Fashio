# Loja Style Fashion - Banco de Dados SQL

## Objetivo do Projeto
Este projeto consiste na implementação de um banco de dados relacional para uma **loja de itens masculinos - Style Fashion**, utilizando SQL.  
O objetivo é aplicar conceitos de **modelagem lógica**, **DML (Data Manipulation Language)** e integridade referencial em um mini-mundo real, com funcionalidades de **vendas, estoque, reposição e pagamentos**.

---

## Ferramenta Utilizada
- SQLite (DB Browser for SQLite)  
- Alternativa: MySQL Workbench ou PGAdmin  

---

## Estrutura do Repositório


## Ordem de Execução dos Scripts

1. **Inserir dados (02_insert_data.sql)**  
   - Executar para povoar todas as tabelas: clientes, fornecedores, produtos, estoque, reposições, vendas e pagamentos.  

2. **Consultar dados (03_select_queries.sql)**  
   - Executar para visualizar produtos, vendas por cliente, estoque baixo, total de compras e histórico de reposições.  

3. **Atualizar dados (04_update_queries.sql)**  
   - Executar para alterar preços de produtos, quantidades de estoque e informações de clientes.  
   - Teste os updates com SELECT após execução.  

4. **Remover dados (05_delete_queries.sql)**  
   - Executar para deletar registros específicos de clientes, produtos, reposições, itens de venda e pagamentos.  
   - Teste os deletes com SELECT após execução.  

---

## Observações
- Todos os scripts estão **compatíveis com SQLite**, utilizando tipos de dados `INTEGER`, `REAL` e `TEXT`.  
- A execução deve ser feita na ordem recomendada para evitar erros de integridade referencial.  
- Este projeto demonstra a aplicação prática de **DML**, **relacionamentos entre tabelas** e **integridade de dados**.

---

## Autor
- Nome: Victor hugo de oliveira luiz  
- Curso/Disciplina: Banco de Dados / SQL - Mini-mundo
