// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    constructor() ERC20("Degen", "DGN") {
        _mint(msg.sender, 1000000 * 0 ** decimals());
    }
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function redeemTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}

