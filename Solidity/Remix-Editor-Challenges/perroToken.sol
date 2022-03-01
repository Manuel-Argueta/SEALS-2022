//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract perroToken {

    string public constant name = "Perro Coin";
    string public constant symbol = "PRC";
    uint public constant decimal = 8;

    // MAPPING  { key:value }
    // address: 100000 PRC
    mapping(address => uint256) balances;

    // Supply
    uint _totalSupply;

    constructor(uint inputSupply) {
        _totalSupply = inputSupply;
        // msg.sender => your metamask address
        balances[msg.sender] = _totalSupply;

    } 

    // ERC-20 Standard Functions
    
    // First required function
    function totalSupply() public view returns(uint) {
        return _totalSupply;
    }

    // Second required function
    function balanceOf(address owner) public view returns(uint) {
        return balances[owner];
    }

    /*
        balances = {
            keys        values
            0x0000000 : 1000,
            0x50000666 : 300
        }
    */


    // Transfers a specifed amount of PRC from the senders account (default) to another
    function transfer(address receiver, uint amount) public returns(bool) {
        if (balanceOf(msg.sender) >= amount) {   
            balances[msg.sender] -= amount;
            balances[receiver] += amount;
            return true;
        } else {
            return false;
        }
    }

    // Transfers a specifed amount of PRC from one account to another
    function transferFrom(address sender, address receiver, uint amount) public returns(bool) {
        if (balanceOf(sender) >= amount) {
            balances[sender] -= amount;
            balances[receiver] += amount;
            return true;
        } else {
            return false;
        }
    }
}