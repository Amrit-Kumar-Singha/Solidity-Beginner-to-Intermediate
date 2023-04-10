// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{

    // payable function - contract becomes capable of receiving ethers
    // payable variable - variable becomes capable of sending and receiving ethers

    function sendEther(address payable receiver) public payable{
        receiver.transfer(msg.value);
    }
}
