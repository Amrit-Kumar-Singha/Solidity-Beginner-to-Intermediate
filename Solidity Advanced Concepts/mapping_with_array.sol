// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{
    mapping(uint=>uint[])public student;

    function insert(uint key, uint value) public{
        student[key].push(value);
    }

    function returnData(uint key,uint index) public view returns(uint){
        return student[key][index];
    } 
}
