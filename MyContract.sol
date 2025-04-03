pragma solidity ^0.8.0;


contract MyContract{
    // State Variables
    uint[] public arr;
    uint[][] public TwoDimensionalArray=[[1,2,3],[4,5,6],[7,8,9]];


// Function to add an item in the 1 d-array
    function AddItem(uint  _item) public {
    // will modify the state hence can't be public view
            arr.push(_item);
    }

    

    function AddItemIn2dArray(uint val,uint first, uint second) public {

            uint rows=TwoDimensionalArray.length;
            uint cols=TwoDimensionalArray[0].length;

            if(first<rows && second< cols){
                TwoDimensionalArray[first][second]=val;
            }

    }
    


// Function to find the length of the array 
    function FindLengthofSingleDimensionArray() public view returns(uint){
        return arr.length;
    }

}


