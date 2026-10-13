# 333 Nuggets — project submission notes

## One-line pitch
333 Nuggets is a playful NFT experiment where each collectible starts RAW and can be cooked exactly once, resulting in either COOKED or BURNT.

## Problem / idea
Most collectibles are static. 333 Nuggets experiments with a simple irreversible action that gives each holder a tiny story and a little risk.

## Core loop
1. Mint a RAW Nugget (maximum planned supply: 333).
2. The holder chooses when to cook it.
3. The Nugget permanently changes to COOKED or BURNT.
4. The outcome is part of the collectible's identity.

## What is in this repository
- `index.html`: interactive front-end concept demo. It runs locally without a build step.
- `contracts/Nuggets.sol`: an experimental Solidity scaffold for a 333-supply ERC-721 with a one-time cook action.

## Current status — be transparent
This is an early prototype, not a finished on-chain dApp. The front-end result is simulated locally. The Solidity contract has not been compiled, audited, deployed, or verified. Wallet integration, token metadata/art updates, production-grade randomness, and deployment are not complete.

The contract's block-data-based outcome is explicitly demo-only and can be influenced; it must be replaced with a suitable verifiable randomness approach before any real-value deployment.

## Next steps
- Compile and test the contract with OpenZeppelin dependencies.
- Deploy to Monad testnet and verify the contract.
- Connect wallet, mint, read token state, and call cook from the UI.
- Store and expose metadata for RAW, COOKED, and BURNT states.
- Replace demo randomness with a verifiable mechanism.
- Test the full flow end-to-end before describing it as live.

## Intended ecosystem
Monad. The project is an experiment in on-chain collectibles and irreversible, stateful NFT interactions.
