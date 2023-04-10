// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{

    uint[] public arr=[10,20,30];

    function insert(uint element) public {
        arr.push(element);
    }

    function pop() public {
        arr.pop();
    }
    
    function display() public view returns(uint[] memory){
        return arr;
    }
}
