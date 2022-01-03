pragma solidity ^0.8.7;

contract FirstContract {
    string public message;

    function setMsg(string memory newMessage) public{
        message = newMessage;
    }
}