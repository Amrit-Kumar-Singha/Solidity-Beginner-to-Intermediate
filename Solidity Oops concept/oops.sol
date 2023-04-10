// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{
    function f1() public pure returns(uint){
        return 1;
    }
    function f2() private pure returns(uint){
        return 2;
    }
    function f3() internal pure returns(uint){
        return 3;
    }
    function f4() external pure returns(uint){
        return 4;
    }
}

contract otherContract{
    demo public obj=new demo(); //created an object
    uint public x=obj.f1();
    uint public y=obj.f4();
}
