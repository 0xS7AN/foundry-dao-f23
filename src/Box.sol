// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    event numberChanged(uint256 number);

    function store(uint256 newNumber) public onlyOwner {
        s_number = newNumber;
        emit numberChanged(newNumber);
    }

    function getNumber() external view returns (uint256) {
        return s_number;
    }
}
