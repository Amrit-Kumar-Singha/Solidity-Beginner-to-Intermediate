// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Array{
    uint[3] public arr;
    
    uint public count;

    function doloop() public{

        while(count<arr.length){
        arr[count]=count;
        count++;}
    }

    function forloop() public{
        for(uint i=count;i<arr.length;i++){
            arr[count]=count;
            count++;
        }
    }

    function dowhileloop() public{
        do{
            arr[count]=count;
            count++;
        }while(count<arr.length);
    }
}
