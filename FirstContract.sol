pragma solidity ^0.8.7;

contract FirstContract {
    
    string private message;

    constructor(string memory initialMessage) public{
        message = initialMessage;
    }

    function setMsg(string memory newMessage) public{
        message = newMessage;
    }

    function getMsg() public view returns (string memory){
        return message;
    }
}