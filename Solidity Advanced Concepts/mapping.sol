// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    mapping(uint=>string) public student;

    function insert(uint key, string calldata value) public{
        student[key]=value;
    }

    function returndata(uint key)public view returns(string memory){
        return student[key];
    }
}
