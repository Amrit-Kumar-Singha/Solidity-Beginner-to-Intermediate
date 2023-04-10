// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract demo{
    string public str="hello vaish";

    function compare(string calldata str1,string calldata str2)public pure returns(string memory){
        if(keccak256(abi.encodePacked(str1)) == keccak256(abi.encodePacked(str2))){
            return "string is same";
        }
        else{
            return "string is not same";
        }
    }
    
    function stringconcat(string calldata str1,string calldata str2) public pure returns(string memory){
        return string(abi.encodePacked(str1,' ',str2));
    }
}
