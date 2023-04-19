// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    struct Student{
        uint roll;
        string name;
        uint[3] marks;
    }
    address Teacher;
    uint public stdNumber=0;
    mapping(uint=>Student)public stdRecords;

    constructor(){
        Teacher=msg.sender;
    }

    modifier onlyTeacher{
        require(Teacher==msg.sender,"You are not the teacher");
        _;
    }

    function add_Record(uint _roll,string memory _name,uint[3] memory _marks)public onlyTeacher{
        stdRecords[_roll]=Student(_roll,_name,_marks);
        stdNumber=stdNumber+1;
    }

    function get_Record(uint _roll)public onlyTeacher view returns(Student memory){
        require(stdRecords[_roll].roll!=0,"Record doesn't exists");
        return(stdRecords[_roll]);
    }

    function delete_Record(uint _roll)public onlyTeacher{
        delete stdRecords[_roll];
    }
}
