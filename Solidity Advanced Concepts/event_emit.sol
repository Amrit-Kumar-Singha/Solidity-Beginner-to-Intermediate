// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{

    event etherTransfer(address sender,address receiver,uint amount);
    function sendEth(address payable _receiver) public payable{
        _receiver.transfer(msg.value);
        emit etherTransfer(msg.sender,_receiver,msg.value);
    }
}
