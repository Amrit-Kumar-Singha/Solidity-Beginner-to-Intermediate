// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{

    struct Student{
        string name;
        uint roll;
        bool pass;
    }

    Student[4] public s;

    function insert(uint index,string memory _name,uint _roll,bool _pass)public{
        s[index]=Student(_name,_roll,_pass);
    }

    function returnData()public view returns(Student[4] memory){
        return s;
    }

    function returnName(uint index) public view returns(string memory){
        return s[index].name;
    }
}
