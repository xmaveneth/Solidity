// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyContract {
    uint256 public myVariable; // Public state variable
    address public owner;

    constructor() {
        myVariable = 100;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }
    
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
    
    function getMyVariable() public view returns (uint256) {
        return myVariable;
    }

    event ValueChanged(uint256 newValue);
    
    function setMyVariable(uint256 newValue) public {
        myVariable = newValue;
        emit ValueChanged(newValue);
    }
}


