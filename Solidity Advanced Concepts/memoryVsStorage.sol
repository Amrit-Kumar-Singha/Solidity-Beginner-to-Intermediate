// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{
    //keyword - memory vs storage
    uint[3] public arr=[10,20,30];

    function memarr(uint[3] memory memoryarr) public view{// state-change-->no change
        memoryarr=arr;
        memoryarr[2]=90;
    }

    function stoarr() public {// state-change----> Yes change
        uint[3] storage abcarr=arr;
        abcarr[2]=90;
    }
}
