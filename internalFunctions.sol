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