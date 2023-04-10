// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract State{
    enum user{allowed,not_allowed,hold,wait}
    user public u1=user.not_allowed;
    user public u2=user.wait;

    uint public lottery=1000;
    uint public lottery1=100;
    function owner() public {
        if(u1==user.allowed){
            lottery=0;
        }
        else if(u1==user.wait){
            lottery=500;
        }
        else if(u2==user.wait){
            lottery1=1000;
        }
    }

    function changeowner() public {
        u1=user.allowed;
    }
}
