// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract RiToken is ERC20 {
    address public owner;

    event MintedToken(address indexed receiver, uint256 amount);
    event BurnedToken(address indexed burner, uint256 amount);
    event TransferredToken(address indexed from, address indexed to, uint256 amount);


    constructor() ERC20("Rianne Token", "RT") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can execute this action.");
        _;
    }

    function mint(address _receiver, uint256 _amount) public onlyOwner {
        _mint(_receiver, _amount);
        emit MintedToken(_receiver, _amount);
    }

    function burn(uint256 _amount) public {
        require(_amount > 0, "Amount must be greater than zero");
        require(balanceOf(msg.sender) >= _amount, "Not enough balance");

        _burn(msg.sender, _amount);
        emit BurnedToken(msg.sender, _amount);
    
    }
    function transfer(address _to, uint256 _amount) public override returns (bool) {
        bool success = super.transfer(_to, _amount);
        if (success) {
            emit TransferredToken(msg.sender, _to, _amount);
        }
        return success;
    }
}
