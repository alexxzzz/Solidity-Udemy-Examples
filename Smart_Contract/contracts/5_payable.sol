// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract etherSend {

    constructor() payable {}
    receive() external payable{}

    // Eventos

    event SendStatus(bool);
    event callStatus(bool, bytes);

    // Transfer

    function sendViaTransfer(address payable _to) public payable{
        _to.transfer(1 ether); //sin ether es unidad de gas
    }

    // Send

    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(1 ether);
        emit SendStatus(sent);
        require(sent == true, "el envio ha fallado");
    }

    // Call

    function sendViaCall(address payable _to) public payable {
        (bool sucess, bytes memory data) = _to.call{value: 1 ether}("");
        emit callStatus(sucess,data);
        require(sucess == true, "El envio ha fallado");
    }
     

}

contract ethReceiver {

    event log(uint amount, uint gas);

    receive() external payable {
        emit log(address(this).balance, gasleft());
    }

}