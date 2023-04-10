// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{

    struct Student{
        string name;
        uint roll;
        bool pass;
    }

    Student public s1;

    function insert(string memory _name,uint _roll,bool _pass) public{
        s1.name=_name;
        s1.roll=_roll;
        s1.pass=_pass;
    }

    function retrive() public view returns(Student memory){
        return s1;
    }

    function returnName() public view returns(string memory){
        return s1.name;
    }
}
