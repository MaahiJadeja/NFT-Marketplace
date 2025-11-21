// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFT is ERC721URIStorage, Ownable {
    uint256 public tokenCounter;

    constructor() ERC721("ArtNFT", "ART") {}

    function mintNFT(
        address recipient,
        string memory tokenURI
    ) public returns (uint256) {
        uint256 newItemId = tokenCounter;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter++;
        return newItemId;
    }
}
