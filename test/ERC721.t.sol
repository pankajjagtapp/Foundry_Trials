// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "src/ERC721.sol";
import "src/MyNFT.sol";

contract ERC721Test is Test {
        ERC721 erc721;
        MyNFT myNFT;

        address bob = address(0x1);
        address alice = address(0x2);

        function testMint() public {
                erc721 = new ERC721();
                myNFT = new MyNFT();
                erc721.mint(bob, 0);
                myNFT.mint(bob, 0);
                address ownerOf = erc721.ownerOf(0);
                assertEq(bob, ownerOf);
        }
}