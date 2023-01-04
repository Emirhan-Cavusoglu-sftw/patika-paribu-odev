// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FeeCollector { // 
    // we are declaring important values
    address public owner;
    uint256 public balance;
    // starts when our contract deployed and runs only once because of this owner will never change
    constructor() {
        owner = msg.sender; 
    }
    
    receive() payable external {
        balance += msg.value; // keep track of balance (in WEI)
    }
    
    
    function withdraw(uint amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        
        destAddr.transfer(amount); // send funds to given address  we can use call function instead of transfer 
        balance -= amount;
    }
}