//Tina(승은)이 소유한 모든 NFT의 tokenId를 찾아라.
//Tina가 nft의 컨트랙트 주소: 0x3D20616BAacdf51792A0B39642A75fC58e504D58
//Tina의 metamask 지갑 주소: 0x7EE6fAD9Ee306551590E81799C49e576f6e57c8D

// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol";

contract QueryTokens {
    IERC721Enumerable public nftContract;

    constructor(address _nftContract) {
        nftContract = IERC721Enumerable(_nftContract);
    }

    function getTokensOfOwner(address owner) public view returns (uint256[] memory) {
        uint256 tokenCount = nftContract.balanceOf(owner);
        uint256[] memory tokenIds = new uint256[](tokenCount);

        for (uint256 i = 0; i < tokenCount; i++) {
            tokenIds[i] = nftContract.tokenOfOwnerByIndex(owner, i);
        }

        return tokenIds;
    }
}

// QueryTokens deployed to: 0x1763cfCb1009A7F31234CFD06C572f13d14eDC6e
// Tokens of owner 0x7EE6fAD9Ee306551590E81799C49e576f6e57c8D: 1,2,3,5,8,13,21,34,55,89