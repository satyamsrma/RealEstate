pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RealEstNFT is ERC721URIStorage, Ownable {
    constructor() ERC721("RealEstate Assets", "RE") ownable(0xEa1959181c46045D78961aE1737C3FF88190dd8F){}

    function mint(
        address _to,
        uint256 _tokenId,
        string calldata _uri
    ) external onlyOwner {
        _mint(_to, _tokenId);
        _setTokenURI(_tokenId, _uri);
    }
}
