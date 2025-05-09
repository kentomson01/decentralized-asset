# BitAssetX — Bitcoin-Native Asset Protocol

**BitAssetX** is a decentralized digital asset protocol built on Bitcoin, leveraging the smart contract capabilities of the **Stacks Layer 2**. It enables the creation, fractionalization, staking, and marketplace exchange of NFTs — all secured by Bitcoin’s settlement layer.

## Overview

**BitAssetX** redefines asset tokenization by enabling NFT minting with collateral backing, decentralized marketplace listings, fractional ownership distribution, and yield-generating staking — all while upholding Bitcoin's core principles: **security**, **transparency**, and **finality**.

* **Bitcoin-Native NFTs** — Mint digital assets backed by collateral and governed on Bitcoin via Stacks.
* **Marketplace Ready** — List, buy, and sell NFTs in a decentralized manner.
* **Fractionalization** — Split asset ownership into transferable shares.
* **Yield Staking** — Stake NFTs to earn rewards based on protocol-defined yield rates.

## Features

### NFT Minting

* Mint NFTs backed by a minimum collateral ratio (default: 150%).
* Each NFT includes metadata, ownership, and collateral tracking.

### NFT Transfers & Marketplace

* Transfer NFTs securely to other users.
* List NFTs for sale; buyers pay both seller and protocol fee (default: 2.5%).

### Fractional Ownership

* Divide NFTs into shares.
* Transfer fractional shares between addresses securely.

### Staking & Yield

* Stake NFTs to earn protocol-defined yield (default: 5% APY).
* Unstake to claim accumulated rewards.
* Yield calculated per block for accurate distribution.

## Configuration

| Variable               | Default | Description                                |
| ---------------------- | ------- | ------------------------------------------ |
| `min-collateral-ratio` | `u150`  | Minimum collateral required to mint (150%) |
| `protocol-fee`         | `u25`   | Fee applied on marketplace sales (2.5%)    |
| `yield-rate`           | `u50`   | Annual yield rate (5% APY)                 |

## Contract Structure

### Key Data Maps

* `tokens`: Core NFT metadata and ownership
* `token-listings`: Marketplace listings
* `fractional-ownership`: Fractional share records
* `staking-rewards`: Yield and claim timestamps

### Access Control & Errors

All major operations include error handling for:

* Invalid tokens, transfers, and recipients
* Insufficient balances or collateral
* Staking and ownership violations

## Security Philosophy

BitAssetX is designed around the principles of **Bitcoin-native security**, meaning:

* Final settlement on Bitcoin
* Transparent and auditable smart contracts
* Collateralized asset guarantees
* Immutable ownership records

## Functions Overview

### Public Functions

* `mint-nft`: Create new collateral-backed NFT
* `transfer-nft`: Transfer ownership
* `list-nft`, `purchase-nft`: Marketplace operations
* `transfer-shares`: Move fractional shares
* `stake-nft`, `unstake-nft`: Stake NFTs to earn rewards

### Read-Only Functions

* `get-token-info`, `get-listing`, `get-fractional-shares`, `get-staking-rewards`
* `calculate-rewards`: Estimate staking yield

## Built On

* **Bitcoin** — Settlement and finality layer
* **Stacks** — Smart contract layer for programmability

## Testing & Deployment

Use [Clarinet](https://docs.hiro.so/clarinet) or [Stacks.js](https://github.com/hirosystems/stacks.js) for testing and deploying contracts. Ensure your contract is audited and tested in various staking, minting, and transfer scenarios.

## Contribute

We welcome community contributions to improve and extend BitAssetX. If you’d like to help enhance decentralized assets on Bitcoin, fork the repo, open issues, or submit PRs.
