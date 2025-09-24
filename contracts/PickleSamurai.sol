// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PickleSamurai is ERC20, Ownable {
    constructor() ERC20("Pickle Samurai", "PICKLE") {
        _mint(msg.sender, 1_000_000 * 10 ** decimals()); // Mint initial supply
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
