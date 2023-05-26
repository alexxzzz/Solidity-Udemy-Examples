// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract padre {

    //Almacenamiento de la informacion del Factory
    mapping(address => address) public personal_contract;

    //Emision dfe los nuevos Smart Contracts
    function Factory() public {
        address addr_personal_contract = address(new hijo(msg.sender, address(this)));
        personal_contract[msg.sender] = addr_personal_contract;
    }

}

contract hijo {

    // Estructura de datos del propietario
    Owner public propietario;
    struct Owner {
        address _owner;
        address _smartcontractPadre;
    }

    // Datos recibidos al Smart Contract

    constructor (address _account, address _accountSC){
        propietario._owner = _account;
        propietario._smartcontractPadre = _accountSC;

    }

}