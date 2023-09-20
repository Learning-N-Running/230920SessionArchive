// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GenesisNFT is ERC721URIStorage, Ownable {
    uint256 public tokenId;
    event Minted(address indexed recipient, uint256 indexed tokenId, string uri);
    constructor() ERC721("GenesisNFT", "GNFT") {}

    function mintNFT(address recipient, string memory uri) external onlyOwner returns (uint256) {
        tokenId++;
        _mint(recipient, tokenId);
        _setTokenURI(tokenId, uri);
        emit Minted(recipient, tokenId, uri);  // 이벤트 발생


        return tokenId;
    }
}
