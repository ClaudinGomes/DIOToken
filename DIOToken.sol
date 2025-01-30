// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// Interface padrão para um token ERC20
interface IERC20 {

    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

}

// Implementação do contrato DIOCoin seguindo o padrão ERC20
contract DIOCoin is IERC20 {

    // Nome do token
    string public name = "DIO Coin";
    // Símbolo do token
    string public symbol = "DIO";
    // Número de casas decimais
    uint8 public decimals = 18;

    // Total de tokens emitidos
    uint256 private _totalSupply = 10 ether;

    // Mapeamento de saldos dos endereços
    mapping(address => uint256) private _balances;
    // Mapeamento de permissões de gasto
    mapping(address => mapping(address => uint256)) private _allowances;

    // Construtor que inicializa o contrato com um fornecimento inicial de tokens
    constructor() {

        _balances[msg.sender] = _totalSupply;

    }

    // Retorna o total de tokens em circulação
    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    // Retorna o saldo de um endereço específico
    function balanceOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    // Retorna a quantidade que um endereço pode gastar em nome de outro
    function allowance(address owner, address spender) external view override returns (uint256) {
        return _allowances[owner][spender];
    }

    // Transfere tokens para outro endereço
    function transfer(address recipient, uint256 amount) external override returns (bool) {

        require(_balances[msg.sender] >= amount, "Insufficient balance");
        _balances[msg.sender] -= amount;
        _balances[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
        return true;

    }

    // Aprova um endereço para gastar uma quantidade específica de tokens em nome do remetente
    function approve(address spender, uint256 amount) external override returns (bool) {

        _allowances[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;

    }

    // Transfere tokens de um endereço para outro usando a permissão concedida
    function transferFrom(address sender, address recipient, uint256 amount) external override returns (bool) {
        
        require(_balances[sender] >= amount, "Insufficient balance");
        require(_allowances[sender][msg.sender] >= amount, "Allowance exceeded");
        
        _balances[sender] -= amount;
        _balances[recipient] += amount;
        _allowances[sender][msg.sender] -= amount;
        
        emit Transfer(sender, recipient, amount);
        return true;

    }

}
