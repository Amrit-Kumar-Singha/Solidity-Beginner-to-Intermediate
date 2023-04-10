// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{

    uint public a=100;

    function pay() public payable{

    }

    receive() external payable{
        a=90;
    }
}
