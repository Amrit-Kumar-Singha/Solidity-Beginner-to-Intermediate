// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

interface Parent{
    //Interface can hold only non implemented functions.
    
    function random() external returns(uint);// non implemented function
}

contract Child is Parent{

    string public good="yes";
    bool public bheryhonest=true;

    function caresfor() public pure returns(string memory){
        return "Amrit";
    }

    function random() public pure override returns(uint){
        uint a=10;
        return a;
    }
}
