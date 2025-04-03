pragma solidity ^0.8.0;




contract LoopExample {

    uint[] public arr;
    uint n=1;

    function GenerateSquaresTillN() public {
        resetArray();
        for(uint i=1;i<=n;i++){
            arr.push(i*i);
        }
    }

    function resetArray() public {
         delete arr;
    }
    

    function IncrementN() public {
            n++;
    }

}
