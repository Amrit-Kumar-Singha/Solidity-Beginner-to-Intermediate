// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{
    mapping(uint=>mapping(string=>bool)) public data;

    function insert(uint key1,string memory key2,bool value)public {
        data[key1][key2]=value;
    }

    function returnData(uint key1,string memory key2)public view  returns(bool){
        return data[key1][key2];
    }
}
