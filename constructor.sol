// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract local{
    uint public count;

    constructor(uint new_count){    //constructor is executed only once  
        count=new_count;
        
    }
}
