// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

abstract contract Parent{
    // Abstract can hold both implemented and non implemented functions

    uint public a=10;
    uint public b=20;
    uint public c=30;

    function name() public pure returns(string memory){
        return "Amrit";
    }
    
    function random() public virtual returns(uint); //non implemented function
}

contract Child is Parent{

    string public good="yes";
    bool public bheryhonest=true;

    function caresfor() public pure returns(string memory){
        return "vaish";
    }

    function random() public pure override returns(uint){
        uint a=10;
        return a;
    }
}
