# 📦 Projeto Conceitual de Banco de Dados – E-Commerce & Oficina Mecânica

Este repositório reúne dois projetos desenvolvidos como parte dos desafios da DIO, com foco em modelagem conceitual de banco de dados utilizando o MySQL Workbench.

---

## 🛒 Projeto 1 – E-Commerce

### 🎯 Objetivo

Criar um modelo conceitual que represente as principais entidades e relacionamentos de um sistema de vendas online, incluindo:

- Clientes (Pessoa Física ou Jurídica)
- Pedidos e Produtos
- Formas de Pagamento
- Entregas com status e código de rastreio

### 📋 Regras de Negócio

- Um cliente pode ser PF ou PJ, nunca ambos.
- Um cliente pode ter várias formas de pagamento.
- Cada pedido possui uma entrega com status e código de rastreio.
- Um pedido pode conter vários produtos.

### 🛠️ Ferramentas Utilizadas

- MySQL Workbench
- GitHub

### 📁 Arquivos

- `Esquema-E-Commerce.mwb`: Diagrama conceitual no Workbench
- `Esquema-E-Commerce.sql`: Script SQL gerado via Forward Engineer

---

## 🔧 Projeto 2 – Oficina Mecânica

### 🎯 Objetivo

Modelar um sistema de controle e gerenciamento de ordens de serviço em uma oficina mecânica, contemplando:

- Clientes e seus veículos
- Ordens de serviço com data, status e valor
- Equipes de mecânicos responsáveis pela execução
- Serviços e peças utilizados em cada OS

### 📋 Regras de Negócio

- Um cliente pode ter vários veículos.
- Cada veículo é atendido por uma equipe de mecânicos.
- A OS inclui serviços e peças, com valores calculados a partir de uma tabela de referência.
- O cliente autoriza a execução dos serviços antes da conclusão.

### 🛠️ Ferramentas Utilizadas

- MySQL Workbench
- GitHub

### 📁 Arquivos

- `Esquema-Oficina.mwb`: Diagrama conceitual no Workbench
- `Esquema-Oficina.sql`: Script SQL gerado via Forward Engineer

---

## 👤 Autor

**Julio Oliveira** – Desafio DIO
