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
