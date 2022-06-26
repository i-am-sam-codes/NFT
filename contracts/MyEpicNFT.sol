// SPDX-License-Identifier: UNLICENSED

pragma solidity  ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";
import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("SquareNFT", "SQUARE") {
        console.log("Yo I created an NFT contract. WOOOO! LFG");
    }

    function makeAnEpicNFT() public {
        //Get the current tokenId, this starts at 0.
        uint256 newItemId = _tokenIds.current();

        // Actually mint the NFT to the sender using msg.sender
        _safeMint(msg.sender, newItemId);
        //Set the NFTs data.
        _setTokenURI(newItemId, "https://jsonkeeper.com/b/4G2Cblah");
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
        //Increment the counter for when the next NFT is mintered
        _tokenIds.increment();

    }
}