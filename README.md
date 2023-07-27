#SOLIDITY CODE- This Solidity program demonstrates the basic syntax and functionality of the Solidity programming language.

#DESCRIPTION- The provided Solidity smart contract is a basic ERC-20-like token named "MyCoin" (symbol: "MC") that allows users to mint and burn tokens, but it lacks safety checks and constructor initialization.

#GETTING START- #EXECUTING PROGRAM- To run this program use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/

// SPDX-License-Identifier: MIT 
pragma solidity 0.8.18;
contract MyToken {  
string public Tname = "MyCoin"; 
string public Tabbrev = "MC"; 
uint public Ttotal = 0;

// mapping variable here
mapping(address => uint) public Adresstobalance;

// mint function
function mint(address _address, uint _value) public {
    Ttotal += _value;
    Adresstobalance[_address] += _value;
}

// burn function
function burn(address _address, uint _value) public {
    if (Adresstobalance[_address] >= _value) {
        Ttotal -= _value;
        Adresstobalance[_address] -= _value;
    }
}
}

#AUTHOR- Metacrafter Chris @metacraftersio

#LICENSE- This project is licensed under the MIT License - see the LICENSE.md file for details







