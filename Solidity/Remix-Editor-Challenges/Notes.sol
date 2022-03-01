//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract SampleToken {
    //Field

    uint public total = 0;


    //Functions
    
    function viewTotal() public view returns (uint) {
        return total;
    }


    function add(uint userInput) public {
        total += userInput;
    }

    function sub(uint userInput) public {
        total -= userInput;
    }

    
    
}


    /*
    //Primitive data types
    string public name = "Man";
    bool public isMinted = false;

    //integers and unassigned integers
    int public num = 1;

    //uint8 has a range from 2^8
    uint8 public num2 = 10;
    //uint16
    //uint256 range 2^256

    //Address
    address public account = 0x28DfdbAeE1157b4FaeE5E77baD78642480eC038E;

    //Zero typed values
    bool public gameRunning; //defaults to 0 (false)
    address public defaultAdress; // 0x000000000000000000000000
    */