# SolidityCollections
Collections of Smart Contracts written in Solidity

# Solidity

- Start with the compiler version.
`pragma solidity ^0.5.0; `

- Structure of contract
```solidity
contract SimpleAuction {
	function bid() public payable {
	
	}
}
```

- Events are interfaces for EVM loggin facilities.
- Enums are also present
```
contract Purchase {
	enum State { Created, Locked , Inactive }
}
```


## Types in Solidity

- int : ` int256 , uint256 , int8`
- fixed point numbers : `ufixed , fixed`
	- `fixedMxN` : M in number fo butes and N is number of decimal points available.
- Address: 20 byte value of etherium address.
	- Has members : `balance` and `transfer` and others
-  Fixed Size byte arrays. `bytes1 bytes2 bytes3`
- Dynamic size byte array

Example for internal function
```
pragma solidity ^0.4.int168
library ArrayUtils {
    function map(uint[] memory self, funcion (uint) pure returns  (uint) f) 
    internal 
    pure 
    returns (uint[] memory r){
        
        r = new uint[](self.length);
        for(uint i = 0 ; i < self.length; i++) {
            r[i] = f(self[i]);
        }
    }
}

```

- mappings are basically a key value pair
- Visibility of functions
		- `public` , `internal` 

### modifiers

- public , internal are all modifiers .
- Can create custom modifier too.
	
	```
	modifier onlyAfterSomeTime{
		require(block.timestamp >= 13423423423);
	}
	
	modifier onlyOwner{
		require(msg.sender == owner);
	}
	```


### Global variables in solidity

-msg and block
-msg.sender , msg.value etc
- block.timestamp 