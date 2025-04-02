pragma solidity ^0.8.0;

contract MyContract {

    uint count;

    constructor() public {
        count=0;
    }

//Function to read the count
    function getCount() public view returns(uint){
        return count;
    }
// Function to write the count
    function incrementCount() public {
        count=count+1;
    }

}
