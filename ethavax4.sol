// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    event PrizeRedeemed(address indexed user, uint256 amount);

    constructor() ERC20("Degen", "DGN") {
        _mint(msg.sender, 1000000 * 0 ** decimals());
    }
    function redeemPrize(uint256 prizeAmount) public {
        require(prizeAmount > 0, "Prize amount must be greater than 0");
        require(balanceOf(msg.sender) >= prizeAmount, "Not enough tokens");
        _burn(msg.sender, prizeAmount);
        // Emit an event to indicate successful redemption
        emit PrizeRedeemed(msg.sender, prizeAmount);
    }
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
