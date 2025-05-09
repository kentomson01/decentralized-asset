;; Title: BitAssetX - Decentralized Asset Protocol
;;
;; Summary:
;; A Bitcoin-native asset protocol for NFT creation, fractionalization, marketplace, and yield-generating
;; staking - all secured by Stacks layer 2 technology and Bitcoin's robust settlement layer.
;;
;; Description:
;; BitAssetX enables the creation of collateralized digital assets on Bitcoin's ecosystem through
;; Stacks' smart contract capabilities. The protocol supports full asset lifecycle management including
;; minting with collateral backing, transparent marketplace operations, fractional ownership, and 
;; yield-generating staking mechanisms - all designed with Bitcoin's security philosophy in mind.
;;
;; This contract adheres to Bitcoin's principles of transparency, security, and finality while
;; leveraging Stacks' programmability to create a powerful digital asset ecosystem.

;; Constants & Error Codes

(define-constant contract-owner tx-sender)

;; Access Control
(define-constant err-owner-only (err u100))
(define-constant err-not-token-owner (err u101))

;; Financial
(define-constant err-insufficient-balance (err u102))
(define-constant err-insufficient-collateral (err u106))

;; NFT Operations
(define-constant err-invalid-token (err u103))
(define-constant err-listing-not-found (err u104))
(define-constant err-invalid-price (err u105))

;; Staking
(define-constant err-already-staked (err u107))
(define-constant err-not-staked (err u108))

;; Validation
(define-constant err-invalid-percentage (err u109))
(define-constant err-invalid-uri (err u110))
(define-constant err-invalid-recipient (err u111))
(define-constant err-overflow (err u112))

;; Protocol Configuration

(define-data-var min-collateral-ratio uint u150)  ;; 150% minimum collateral ratio
(define-data-var protocol-fee uint u25)           ;; 2.5% fee in basis points
(define-data-var total-staked uint u0)
(define-data-var yield-rate uint u50)             ;; 5% annual yield rate in basis points
(define-data-var total-supply uint u0)

;; Data Maps

;; Core NFT Data
(define-map tokens
    { token-id: uint }
    {
        owner: principal,
        uri: (string-ascii 256),
        collateral: uint,
        is-staked: bool,
        stake-timestamp: uint,
        fractional-shares: uint
    }
)

;; Marketplace Listings
(define-map token-listings
    { token-id: uint }
    {
        price: uint,
        seller: principal,
        active: bool
    }
)

;; Fractional Ownership Records
(define-map fractional-ownership
    { token-id: uint, owner: principal }
    { shares: uint }
)

;; Staking Rewards Tracking
(define-map staking-rewards
    { token-id: uint }
    { 
        accumulated-yield: uint,
        last-claim: uint
    }
)