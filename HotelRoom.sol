pragma solidity ^0.8.0;

contract Hotel {
    address payable public owner;
    address public CurrentPerson;
    constructor() {
        owner = payable (msg.sender);
    }

    enum Statuses {
        Vacant,
        Occupied
    }

    Statuses public Room1 = Statuses.Vacant;
    event CheckedOut(address indexed sender, Statuses roomStatus);


    modifier checkMoney() {
        require(msg.value>=2 ether,"Not enough Money Provided");
        _;
    }

    modifier checkStatus(){
        require(Room1== Statuses.Vacant,"Room alredy occupied, can't book now");
        _;
    }

    function BookHotel() public payable  checkMoney checkStatus {
        // Room is vacant and enough money is provided, then transfer the money to the owner
        owner.transfer(msg.value);
        Room1=Statuses.Occupied;
        CurrentPerson=msg.sender;// To hold the address of the person who is currently staying in the room
    }

    function CheckOut() public  {
       require(msg.sender == CurrentPerson, "Only the current occupant can check out.");
    // Reset room status and occupant
            Room1 = Statuses.Vacant;
            CurrentPerson = address(0);
            emit CheckedOut(msg.sender, Room1);
    }

    // function to check the owner of the contract
    function IsOwner() public view returns (bool) {
        return msg.sender == owner;
    }
}
