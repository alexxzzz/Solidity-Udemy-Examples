//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract variables_modificadores {

    // Valores enteros sin signo (uint)
    uint256 a;
    uint8 public b = 3;

    // Valores a enteros con signo (int)
    int256 c;
    int8 public d = -32;
    int e = 65;

    // Variable string
    string str;
    string public str_public = "Esto es publico";
    string private str_private = "Esto es privado";

    // Variable booleana
    bool boolean;
    bool public boolean_true = true;
    bool private boolean_false = false;

    // Variable bytes
    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 byte_1;

    // Algoritmo de hash (ver si vale para documento)
    bytes32 public hashing_keccak256 = keccak256(abi.encodePacked("Hello world", uint(10), msg.sender, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4));
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("Hello world"));
    bytes20 public hashing_ripemd160 = ripemd160(abi.encodePacked("Hello world"));

    // Variable address
    address my_address;
    address public address1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public address2 = msg.sender;

    // Variable de enumaracion
    enum options {ON, OFF}
    options state;
    options constant defaultChoice = options.OFF;

    function turnOn() public {
        state = options.ON;
    }

    function turnOff() public {
        state = options.OFF;
    }
    
    function displayState() public view returns (options) {
        return state;
    }



} 