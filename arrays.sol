// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract array{
    uint[4] public arr=[10,20,30,40];    // static array of size 4

    uint[] public arr1;                  // dynamic array

    function pushelement(uint item) public{
        arr1.push(item);
    }

    function popelement() public{
        arr1.pop();
    }

    function setter(uint index,uint value) public{
        arr[index]=value;
    }

    function length() public view returns(uint){
        return arr1.length;
    }

}
