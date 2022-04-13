pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0-solc-0.7/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {

    constructor () ERC20("FuseVR", "FZ") {
        _setupDecimals(2);
        _mint(msg.sender, 10 * (10 ** uint256(decimals())));
    }
    
    function mint() public returns (bool) {
        _mint( msg.sender, 1000 );
        return true;
    }
}
