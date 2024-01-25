// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

/**
 * @title Spectre Token
 * @author Arian Hosseini
 * @notice An ERC-20 token
 */
contract SpectreToken is ERC20Capped {
    address public owner;

    constructor(
        uint256 cap
    ) ERC20("Spectre", "SPEC") ERC20Capped(cap * (10 ** decimals())) {
        owner = msg.sender;
        _mint(owner, 10000000 * (10 ** decimals()));
    }
}
