// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract poly{
    //same name and signature --> not allowed in solidity

    function add(uint a,uint b) public pure returns(uint){
        return a+b;
    }

    function add(uint a,uint b,uint c)public pure returns(uint){
        return a+b+c;
    }
}
