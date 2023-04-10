// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{

    uint public a=10;

    function abc() public{
        a=20;
    }

    fallback() external{// A contract can have at most 1 fallback function not more than one
                        // Fallback functions are always external
                        // They can be payable also
        a=30;
    }
}
