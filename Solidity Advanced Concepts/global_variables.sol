// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{

    uint public a=100;

    uint[4] public b=[10,20,30,40];

    function time() public view returns(uint){
        return block.timestamp;
    }

    function sender() public view returns(address){
        return msg.sender;
    }

    function deleteA(uint index) public{
        delete a;
        delete b[index];
    }
}
