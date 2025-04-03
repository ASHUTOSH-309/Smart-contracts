pragma solidity ^0.8.0;


contract Library{
    
  struct Book{
    string title;
    string author;
  }

 mapping(address=> mapping(uint => Book)) public UserToBooks;  // It's like each user is mapped to the container of books he posses


// Implement the function to add the book in the container of the guy who invokes the function


function AddBookAndAssociateItWithTheAddress(uint _id, string memory _title, string memory _author) public {
        // msg.sender implies the address of the guy who invokes this function on the blockchain
        UserToBooks[msg.sender][_id]=Book(_title,_author);
}


}