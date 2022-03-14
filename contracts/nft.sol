// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
 
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
 
contract newNFT is ERC721URIStorage{
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721("Blessing Emah", " BE") {}

  function createNFT(string memory tokenURI, address _address) public returns(uint256) {
    _tokenIds.increment();
    uint256 newItemId = _tokenIds.current();
    _mint(_address, newItemId);
    _setTokenURI(newItemId, tokenURI);

    return newItemId;
  }

  function updateTokenURI(uint newItemId, string memory baseURI) public {
    _setTokenURI(newItemId, baseURI);
  }

}