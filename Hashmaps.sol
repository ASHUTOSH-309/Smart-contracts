// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract HashMaps{
    mapping(uint => string) public names; // simple id->name mapping
    mapping(uint=>Book) public Books; // Book is a struct type , mapping id to the Book type

   struct Book{
    string title;
    string author;
   }

    
    constructor(){
        names[1]="Anil";
        names[2]="Ravi";
        names[3]="Nirmal";
    }

    function AddNames(uint _id,string memory _str) public{
        names[_id]=_str;
    }

    // Let's add some books
    // book --> title , author

   // function to add a book with its id , title and author in the Books hashmap
    function AddBooks(uint _id, string memory _title, string memory _author) public {
        Books[_id]=Book(_title,_author);
    }


}