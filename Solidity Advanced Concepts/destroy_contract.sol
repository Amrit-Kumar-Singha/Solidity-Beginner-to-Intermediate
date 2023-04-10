// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract transfer{

    address payable public manager;
    bool destroyed; //contract destroyed or not destroyed

    modifier isNotDestroyed(){
        require(destroyed==false,"Contract is destroyed");
        _;
    }

    constructor(){
        manager=payable(msg.sender);
    }

    function sendEth() public payable isNotDestroyed(){

    }

    function balance() public view isNotDestroyed() returns(uint){
        return address(this).balance;
    }

    receive() external payable isNotDestroyed(){

    }

    function destroy() public{
        require(msg.sender==manager,"You are not the manager");
        destroyed=true;
        manager.transfer(address(this).balance);
    }
}
