pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract SampleToken is ERC20, ERC20Detailed {
    constructor(string memory _name, string memory _symbol, address _initialSupply, uint8 _decimals) 
    ERC20Detailed(_name, _symbol, _decimals) public {
        require(_initialSupply > 0, "Initial supply must be greater than 0");
        _mint(msg.sender, _initialSupply);
    }
}