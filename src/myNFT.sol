// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC721.sol";

contract MyNFT is ERC721 {
    function mint(address to, uint id) external {
        _mint(to, id);
    }
    
    function burn(uint id) external {
        require(msg.sender == _ownerOf[id], "not owner");
        _burn(id);
    }
}
