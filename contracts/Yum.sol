// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor(
        uint256 initialSupply,
        address[] memory defaultOperators
    ) ERC777("Yum", "YUM", defaultOperators) {
        _mint(msg.sender, initialSupply * 10 ** 18, "", "");
    }
}
