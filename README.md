# Delivery Smart Contract

This is a simple Solidity smart contract for managing a delivery service with basic payment and item purchase functionality.

## Features

- Users can specify the number of items they want to purchase.
- Tracks customers who interact with the contract.
- Checks and updates user balance for payment.
- Provides bill calculation and delivery confirmation.
- Keeps a simple balance and income tracking internally.

## Functions

- `no_Of_Items_Purchase(uint n)`: Allows customers to specify and purchase `n` items. Requires `n > 0`.
- `get_Self_Balance()`: Returns the current contract balance (for demonstration).
- `Deliver_Items()`: Processes the payment and confirms delivery if the balance is sufficient.
- `Bill()`: Returns the total bill amount based on the number of items.

## Contract Details

- Each item costs 5 units plus 1 unit delivery fee.
- The contract owner (deployer) is stored as `app`.
- The contract starts with a balance of 100 units.

## Usage

1. Deploy the contract on a compatible Ethereum environment (Solidity version ^0.8.0).
2. Call `no_Of_Items_Purchase` to select the number of items.
3. Check your balance with `get_Self_Balance`.
4. Call `Deliver_Items` to make the payment and initiate delivery.
5. Use `Bill` to see the total amount to pay.
