// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract Counter { 
    uint256 public count; 

    function inc() external { 
        count += 1; // count++ da diyebilirsin
    }

    function dec() external { 
        count -= 1; // count --
    }
}