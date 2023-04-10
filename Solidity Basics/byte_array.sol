// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract array {
    bytes3 public b3; //3 bytes array
    bytes2 public b2; //2 bytes array

    bytes public b1='abc'; //dynamic array

    function pushelement() public{
        b1.push('d');
    }

    function getelement(uint i) public view returns(bytes1){
        return b1[i];
    }
    function getlength() public view returns(uint){
        return b1.length;
    }

    function setter() public{
        b3='abc';
        b2='ab';
    }
}
