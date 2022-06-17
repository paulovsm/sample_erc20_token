pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SampleToken is ERC20 {

    constructor(string memory _name, string memory _symbol, uint _initialSupply, uint8 _decimals) 
    ERC20(_name, _symbol) public {
        require(_initialSupply > 0, "Initial supply must be greater than 0");
        _mint(msg.sender, _initialSupply);
    }
}