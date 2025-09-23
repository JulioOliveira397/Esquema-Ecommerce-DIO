# Projeto Conceitual de Banco de Dados – E-Commerce

Este projeto foi desenvolvido como parte do desafio da DIO para modelar um banco de dados de um sistema de E-Commerce.

## Objetivo

Criar um modelo conceitual que represente as principais entidades e relacionamentos de um sistema de vendas online, incluindo:

- Clientes (Pessoa Física ou Jurídica)
- Pedidos e Produtos
- Formas de Pagamento
- Entregas com status e código de rastreio

## Regras de Negócio

- Um cliente pode ser PF ou PJ, nunca ambos.
- Um cliente pode ter várias formas de pagamento.
- Cada pedido possui uma entrega com status e código de rastreio.
- Um pedido pode conter vários produtos.

## Ferramentas Utilizadas

- MySQL Workbench
- GitHub

## Arquivos

- `Modelo_E-Commerce.mwb`: Diagrama conceitual no Workbench
- `Modelo_E-Commerce.sql`: Script SQL gerado via Forward Engineer

## Autor

Julio Oliveira – Desafio DIO
