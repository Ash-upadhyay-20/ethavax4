# DegenToken Smart Contract

This is a Solidity smart contract that implements a custom ERC-20 token called "DegenToken". It is deployed on the Ethereum Fuji testnet and can be interacted with using Metamask or any other Ethereum wallet.

## Smart Contract Details

- Contract Address: [CONTRACT_ADDRESS]
- Contract ABI: [CONTRACT_ABI]

## Functionality

The DegenToken contract supports the following functions:

1. **Constructor**
   - Initializes the token with the name "Degen" and the symbol "DGN".
   - Mints an initial supply of 1,000,000 tokens to the contract deployer.

2. **mint(address to, uint256 amount)**
   - Only the contract owner can call this function.
   - Mints and assigns the specified amount of tokens to the provided address.

3. **redeemTokens(uint256 amount)**
   - Allows any address to burn (destroy) a specified amount of their own tokens.

4. **burnTokens(uint256 amount)**
   - Allows any address to burn (destroy) a specified amount of their own tokens.

## Interacting with the Contract

To interact with the DegenToken smart contract, you can follow these steps:

1. **Connect Metamask to the Fuji Testnet**
   - Open Metamask and switch to the "Fuji Testnet" network.

2. **Obtain Test Avax**
   - Get some test Avax for the Fuji Testnet from a faucet. You can use the Avalanche Fuji Faucet for this purpose.

3. **Deploy the Contract**
   - Deploy the smart contract using Remix, Hardhat, or any other Ethereum development tool.
   - Make sure to copy the deployed contract address and ABI.

4. **Access the Contract on Metamask**
   - Add the deployed contract address to Metamask as a custom token.
   - Use the contract ABI to interact with the contract functions.

5. **Interact with the Contract**
   - You can use Metamask to call the `mint`, `redeemTokens`, and `burnTokens` functions.
   - Use the "Interact with Contract" feature in Metamask to execute these functions.

## Important Note

Remember that this smart contract is deployed on a testnet. Tokens and transactions on the testnet have no real-world value and are only for testing purposes.

