// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    string[] public stu=['Ravi','Rita','Aman'];

    function mem() public view{
        string[] memory s1=stu;
        s1[0]='Amrit';
    }

    function sto() public {
        string[] storage s1=stu;
        s1[0]='Amrit';
    }
}
