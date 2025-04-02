pragma solidity ^0.8.0;

contract MyContract {

    uint public count=0;


// Function to write the count
    function incrementCount() public {
        count=count+1;
    }

}
