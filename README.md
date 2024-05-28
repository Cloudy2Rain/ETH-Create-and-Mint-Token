# ETH-Create-and-Mint-Token

A smart contract that uses ERC20 contract and deploy it using Remix. The contract owner is the only one who is able to mint tokens to a provided address and any user is be able to burn and transfer tokens.

## Description

The RiToken Smart Contract on the Ethereum blockchain is an implementation of an ERC20 token. Tokens can be created, transferred, and burned using it. Tokens can be burned by any user or transferred to another address, but only the contract owner has the authority to mint new ones. The contract uses a modification called onlyOwner to limit some activities to the contract owner and is based on OpenZeppelin's ERC20 implementation for normal token functionality.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., RiToken.sol). Copy and paste the code in the RiToken file together with this repository.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.20" (or another compatible version), and then click on the "Compile RiToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. This will open a new window that allows you to deploy the contract. Do not forget to select the “RiToken” contract before deploying.

Once the contract is deployed, you can interact with it using Remix's user-friendly interface. As the contract owner, you have the ability to mint fresh tokens to specific addresses using the mint function. Furthermore, any user can make token transfers to other addresses by using the transfer function. Additionally, users can burn their own tokens using the burn function. The Remix Ethereum IDE allows you to explore with these functions and acquire insights into their behavior within Solidity smart contracts. Test the contract's functionality by using the mint, transfer, and burn functions, as well as the onlyOwner modifier's ability to enforce ownership and permissions.


```

pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract RiToken is ERC20 {
    address public owner;
    }
}

```


## Authors

Rianne Mikaela Gayos 8215086@ntc.edu.ph


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
