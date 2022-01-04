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

    function join() payable public {
        require(msg.value >= .1 ether);
        players.push(msg.sender);
        playersCounter++;

        if (playersCounter >= maxPlayersNumber) {
            //losowanie
        }
    }
}