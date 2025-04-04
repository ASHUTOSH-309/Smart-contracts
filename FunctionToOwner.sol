pragma solidity ^0.8.0;

contract FunctionToOwner{

    address public owner;

    constructor(){
        owner=msg.sender;
    }

    modifier  IsOwner(){
        require(msg.sender==owner,"You are not the owner, you are not allowed to execute this function");
        _;
    }

    function ExclusiveToOwner()public view IsOwner{
        require(true,"Cool you are the owner");
    }

}