pragma solidity ^0.8.0;

contract HashMaps{
    mapping(uint => string) public names;
    
    constructor(){
        names[1]="Anil";
        names[2]="Ravi";
        names[3]="Nirmal";
    }

    function AddNames(uint _id,string memory _str) public{
        names[_id]=_str;
    }
}