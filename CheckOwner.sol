pragma solidity ^0.8.0;


contract Owner{
    address public owner;
    constructor(){
        owner=msg.sender; // the person who will deploy the contract for the first time will be the owner
    }

    function CheckOwner() public view returns(bool){
        return msg.sender == owner;
    }
}