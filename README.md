# 📦 Projeto de Banco de Dados – E-Commerce & Oficina Mecânica

Este repositório reúne dois projetos desenvolvidos como parte dos desafios da DIO, com foco em modelagem conceitual e lógica de banco de dados utilizando o MySQL Workbench.

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

### 🧱 Modelagem Lógica

O modelo lógico foi implementado com:

- Chaves primárias e estrangeiras
- Tipos de dados apropriados (INT, VARCHAR, DATE, DECIMAL)
- Constraints como `CHECK`, `UNIQUE`, `NOT NULL`
- Relacionamentos 1:N e N:N devidamente mapeados

### 🧪 Consultas SQL

O projeto inclui consultas SQL com:

- Recuperações simples (`SELECT`)
- Filtros (`WHERE`)
- Atributos derivados (ex: soma de valores)
- Ordenações (`ORDER BY`)
- Agrupamentos com filtros (`GROUP BY` + `HAVING`)
- Junções entre tabelas (`JOIN`)

Exemplos de perguntas respondidas:

- Quantos pedidos foram feitos por cada cliente?
- Qual o valor total calculado por pedido?
- Qual o status e rastreio de cada entrega?
- Relação entre clientes, pedidos e produtos comprados

### 🛠️ Ferramentas Utilizadas

- MySQL Workbench
- GitHub

### 📁 Arquivos

- `Esquema-E-Commerce.mwb`: Diagrama conceitual no Workbench
- `Esquema-E-Commerce.sql`: Script SQL gerado via Forward Engineer
- `consultas.sql`: Consultas SQL complexas para testes e validação

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

