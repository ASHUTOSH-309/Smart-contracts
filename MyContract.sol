pragma solidity ^0.8.0;


contract MyContract{
    // State Variables
    uint myUint=1; // Scope inside the entire smart contract
    uint256 public myInt=1;
    uint8 public EightByteInt=23;
   
    string public mystr="I am a dummy string";
    bytes32 public my32bytestr="32 bytes string";

    address public myAddress= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    struct Student{
        string name;
        uint cgpa;
    }

    Student public s1=Student("Ashutosh",8);

    // Local Variables
    function getValue() public pure returns(uint) {
        uint value=1;
        return value;
    }
}


