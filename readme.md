# Projeto DIOCoin - Criação de Criptomoeda em Solidity

Este projeto visa a criação de um token **DIOCoin**, utilizando o padrão **ERC-20** com **Solidity**. O contrato implementa funcionalidades principais como transferências de tokens, aprovação de gastos e consultas de saldo, com segurança extra por meio das bibliotecas **OpenZeppelin**.

## Índice

- [Visão Geral](#visão-geral)
- [Funcionalidades do Token](#funcionalidades-do-token)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Instalação e Configuração](#instalação-e-configuração)
- [Exemplos de Uso](#exemplos-de-uso)
- [Simulação de Funcionamento](#simulação-de-funcionamento)
- [Contribuições](#contribuições)
- [Licença](#licença)

## Visão Geral

O contrato **DIOCoin** é um token ERC-20 desenvolvido com **Solidity**. O contrato permite a criação de um token personalizável com funcionalidades essenciais para um ERC-20, como transferência, aprovação de gastos e consulta de saldos. O contrato também incorpora a biblioteca **OpenZeppelin** para garantir segurança no código.

## Funcionalidades do Token

O contrato oferece as funcionalidades principais para um token ERC-20, incluindo:

- **Total Supply**: Retorna a quantidade total de tokens em circulação.
- **BalanceOf**: Consulta o saldo de um endereço específico.
- **Allowance**: Verifica a quantidade de tokens que um endereço pode gastar de outro.
- **Transfer**: Permite que um endereço transfira tokens para outro.
- **Approve**: Autoriza um endereço a gastar tokens em nome do proprietário.
- **TransferFrom**: Permite transferir tokens de um endereço para outro, utilizando permissões.

## Tecnologias Utilizadas

- **Solidity**: Linguagem para desenvolvimento de contratos inteligentes.
- **OpenZeppelin**: Biblioteca de contratos inteligentes que proporciona funcionalidades seguras e testadas.
- **Ganache**: Ambiente de blockchain local para simulação de contratos.
- **MetaMask**: Extensão de navegador para interação com a blockchain Ethereum.

## Instalação e Configuração

### Pré-requisitos

Para rodar o contrato, você precisa ter as seguintes ferramentas instaladas:

- [Node.js](https://nodejs.org/)
- [Ganache](https://www.trufflesuite.com/ganache)
- [MetaMask](https://metamask.io/)
- [OpenZeppelin Contracts](https://openzeppelin.com/contracts/)

### Passos de Instalação

1. **Clone este repositório**:
   ```bash
   git clone https://github.com/ClaudinGomes/DIOCoin.git


