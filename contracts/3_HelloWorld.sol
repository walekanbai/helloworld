// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.12;

contract HelloWorld {
    string public name;
    string public firstGreeting = "HelloWorld ";

    constructor (string memory initialName) {
        name = initialName;
    }

    function setName(string memory newName) public {
        name = newName;
    }

    function getGreeting() public view returns (string memory) {
        return string (abi.encodePacked(firstGreeting, name));
    }
}

