// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract array{

    uint[5] public arr=[10,20,30,40,50];

    function insert(uint index, uint element) public{
        arr[index]=element;
    }

    function returnElement(uint index) public view returns(uint){
        return arr[index];
    }

    function returnAll() public view returns(uint[5] memory){
        return arr;
    }

    //memory----function-argument--referencedata--variable--read-and-write--mutable
    //calldata----function-argument--referencedata--variable--read-only--immutable

    function arraymultiplyby2(uint[3] memory brr) public pure returns(uint[3] memory){
        for(uint i=0;i<3;i++){
            brr[i]=brr[i]*2;
        }
        return brr;
    }
}
