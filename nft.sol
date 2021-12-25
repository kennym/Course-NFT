// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
 
import "https://github.com/nibbstack/erc721/blob/master/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/nibbstack/erc721/blob/master/src/contracts/ownership/ownable.sol";
 
contract ParticipationNFT is NFTokenMetadata, Ownable {
  constructor() {
    nftName = "Crypto El Nuevo Ahora 19/12/22";
    nftSymbol = "KM-1";
  }
 
  function mint(address _to, uint256 _tokenId, string calldata _uri) external onlyOwner {
    super._mint(_to, _tokenId);
    super._setTokenUri(_tokenId, _uri);
  }
}
