pragma solidity ^0.8.7;

contract Lottery {

    address public manager;
    
    address payable[] public players;
    uint public playersCounter;

    uint public maxPlayersNumber;

    constructor(uint maxPlayersNumber) public{
        maxPlayersNumber = maxPlayersNumber;
        manager = msg.sender;
    }

}