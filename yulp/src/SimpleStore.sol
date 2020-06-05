// SPDX-License-Identifier: MIT

pragma solidity ^0.6.7;

contract SimpleStore {
    uint256 val;
    function store(uint256 val_) external {
        val = val_;
    }
    function get() external view returns (uint256) {
        return val;
    }
}