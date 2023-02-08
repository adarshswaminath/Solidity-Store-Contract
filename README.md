# Solidity-Store-Contract

This is a Solidity contract code for an online store where an owner can add products and manage their availability, and buyers can buy items from the store.

## Technology Stack & Tools
 - Solidity ( Writing Contract)
 - Foundry (smart contract development toolchain)
 - Forge (command-line tool that ships with Foundry. Forge tests, builds, and deploys smart contracts)

## Contract Functions
The contract implements the following functionalities:
 - Adding products to the store by the owner
 - Increasing the availability of a product by the owner
 - Transferring the contract balance to the owner's address by the owner
 - Buying items from the store by buyers

## Contract Variables
The contract uses the following variables:
 - **owner**: The address of the contract owner
 - **Total**: The total number of products in the store
 - **item**: A mapping data structure to store the items in the store
 - **order**: A mapping data structure to store the orders placed by buyers
## Data Structures
The contract uses the following data structures:
 - Item: A struct to store the information about a product in the store
 - Order: A struct to store the information about an order placed by a buyer
## How to use 
For installing [foundry](https://book.getfoundry.sh/getting-started/installation)
```  
 git clone https://github.com/adarshswaminath/Solidity-Store-Contract
 cd Solidity-Store-Contract
 forge compile
 forge test
```
## Note
This code is for demonstration purposes only and is not meant for production use. It is advised to thoroughly test the contract before deployment and use it at your own risk.
