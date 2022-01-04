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
            drawWinner();
        }
    }

    function drawWinner() private {
        uint index = randome() % players.lenght;
        uint amount = address(this).balance;

        address payable winner = players[index];
        winner.transfer(amount);

        players = new address payable[](0);
        playersCounter = 0;
    }

    function random() private view returns (uint) {
        return uint(keccak256(
            abi.encodePacked(block.difficulty, block.timestamp, players)));
    }
}