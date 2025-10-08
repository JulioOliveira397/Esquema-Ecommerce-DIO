# 📦 Projeto de Banco de Dados – E-Commerce, Oficina Mecânica & Conceitual

Este repositório reúne três projetos desenvolvidos como parte dos desafios da DIO, com foco em modelagem conceitual e lógica de banco de dados utilizando o MySQL Workbench e scripts SQL.

---

## 🛒 Projeto 1 – E-Commerce

### 🎯 Objetivo

Modelar e implementar um sistema de banco de dados para uma plataforma de vendas online, contemplando:

- Clientes (Pessoa Física ou Jurídica)
- Pedidos e Produtos
- Formas de Pagamento
- Entregas com status e código de rastreio

### 📋 Regras de Negócio

- Um cliente pode ser PF ou PJ, nunca ambos.
- Um cliente pode ter várias formas de pagamento.
- Cada pedido possui uma entrega com status e código de rastreio.
- Um pedido pode conter vários produtos.
- O relacionamento entre pedidos e produtos é resolvido via `ItemPedido`.

### 📁 Arquivos

- `Esquema-E-Commerce.mwb`: Diagrama conceitual no Workbench
- `Esquema-E-Commerce.sql`: Script SQL gerado via Forward Engineer
- `consultas.sql`: Consultas SQL complexas para testes e validação

---

## 🔧 Projeto 2 – Oficina Mecânica

### 🎯 Objetivo

Modelar um sistema de controle e gerenciamento de ordens de serviço em uma oficina mecânica, contemplando:

- Clientes e seus veículos
- Ordens de serviço com data, status, valor e autorização
- Equipes de mecânicos responsáveis pela execução
- Serviços e peças utilizados em cada OS

### 📋 Regras de Negócio

- Um cliente pode ter vários veículos.
- Cada veículo é atendido por uma equipe de mecânicos.
- A OS inclui serviços e peças, com valores calculados a partir de uma tabela de referência.
- O cliente autoriza a execução dos serviços antes da conclusão.

### 📁 Arquivos

- `modelo-logico-oficina.sql`: Script SQL com criação das tabelas e relacionamentos
- `dados-teste.sql`: Inserção de dados fictícios para testes
- `consultas.sql`: Consultas SQL com SELECT, WHERE, JOIN, GROUP BY, HAVING, ORDER BY

---

## 🧠 Projeto 3 – Esquema Conceitual de Banco de Dados

### 🎯 Objetivo

Criar modelos conceituais utilizando o MySQL Workbench para representar cenários de negócio com entidades, atributos e relacionamentos.

### 📁 Arquivos

- `Esquema-Conceitual-E-Commerce.mwb`
- `Esquema-Conceitual-Oficina.mwb`

---

## 🛠️ Ferramentas Utilizadas

- MySQL Workbench
- VS Code
- GitHub

---

## 👤 Autor

**Julio Oliveira** – Desafio DIO


