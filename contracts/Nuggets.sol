// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Experimental hackathon scaffold. Do not use on mainnet as-is.
// The cook outcome uses block data and is NOT secure randomness.
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Nuggets is ERC721, Ownable {
    uint256 public constant MAX_SUPPLY = 333;
    uint256 public totalMinted;

    enum State { RAW, COOKED, BURNT }
    mapping(uint256 => State) public stateOf;

    event NuggetMinted(address indexed owner, uint256 indexed tokenId);
    event NuggetCooked(address indexed owner, uint256 indexed tokenId, State result);

    constructor() ERC721("333 Nuggets", "NUGGET") Ownable(msg.sender) {}

    function mint() external returns (uint256 tokenId) {
        require(totalMinted < MAX_SUPPLY, "Sold out");
        tokenId = ++totalMinted;
        stateOf[tokenId] = State.RAW;
        _safeMint(msg.sender, tokenId);
        emit NuggetMinted(msg.sender, tokenId);
    }

    function cook(uint256 tokenId) external {
        require(ownerOf(tokenId) == msg.sender, "Not your nugget");
        require(stateOf[tokenId] == State.RAW, "Already cooked");

        // Demo-only pseudo-randomness. Validators/block producers may influence this.
        uint256 roll = uint256(keccak256(abi.encodePacked(
            block.prevrandao,
            block.timestamp,
            blockhash(block.number - 1),
            tokenId,
            msg.sender
        ))) % 100;

        State outcome = roll < 18 ? State.BURNT : State.COOKED;
        stateOf[tokenId] = outcome;
        emit NuggetCooked(msg.sender, tokenId, outcome);
    }
}
