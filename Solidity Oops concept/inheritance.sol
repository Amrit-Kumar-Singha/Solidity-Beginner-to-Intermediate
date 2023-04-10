// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Parent{
    uint public a=10;
    uint public b=20;
    uint public c=30;

    function name() public pure returns(string memory){
        return "Amrit";
    }
}

contract Child is Parent{

    string public good="yes";
    bool public bheryhonest=true;

    function caresfor() public pure returns(string memory){
        return "vaish";
    }
}
