// SPDX-License-Identifier: MIT  
// Licencia del MIT 

//Version solidity
pragma solidity ^0.8.18;

// Importar un Smart Contract desde Openzeppelin
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Declaracion del Smart Contract (heredamos el smart de open zeppelin
contract FirstContract is ERC721 {
    
    // Direccion de la persona que despliega el contrato
    address public owner;

    /* Almacenamos en la variable owner la direccion de la persona
    que despliega el contrato. */
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol){
        owner = msg.sender;

    }
}