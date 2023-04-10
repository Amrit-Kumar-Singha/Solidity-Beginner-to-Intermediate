// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    function set() public view returns(uint block_no,uint timestamp,address msgsender){
        return(block.number,block.timestamp,msg.sender);
    }
}
