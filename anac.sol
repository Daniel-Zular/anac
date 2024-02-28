// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// contrato anac
contract Anac {
    // idade 18 padrao
    uint public idade = 18;
    
    address public dono;
    // armazena endereco do dono (ir alem)
    constructor() {
        dono = msg.sender;
    }

    // funcao para receber valor idade e atribuir
    // e só consegue ser executada pelo dono
    function setIdade(uint _idade) public {
        // verifica dono
        require(msg.sender == dono, "so o dono muda a idade");
        // atualiza idade
        idade = _idade;
    }

    // funcao para retornar idade
    function getIdade() public view returns (uint) {
        return idade;
    }
}
