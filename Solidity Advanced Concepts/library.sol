// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;
//A library can be imported to any other smart contract using import command
//It doesnt have any state variables and cannot inherit any element and cannot be inherited
//Only pure and view functions can be called from outside the library
//It cannot be destroyed as it is stateless

library Add{
    function sum(uint a, uint b) public pure returns(uint){
        return a+b;
    }
}

contract demo{

    function add(uint _a,uint _b) public pure returns(uint){
        return Add.sum(_a,_b);
    }
}
