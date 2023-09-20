//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Lesson2 {
    uint256 public myUint = 42;

    int256 public myInt = -10;

    bool public isReady = true;

    address public owner = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    string public greeting = "Hello, World!";

    bytes32 public data = "Hello!";

    uint256[] public numbers = [1, 2, 3, 4, 5];

    struct Person {
        string name;
        uint256 age;
    }

    Person public alice = Person("Alice", 30);

    mapping(address => uint256) public balances;

}