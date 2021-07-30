pragma solidity 0.5.1;



library Math {
     function divide(uint a, uint b) internal pure returns (uint) {
         require( b > 0 );
         uint c = a / b;
         return c;
         
     }
}



contract MyContract {
    uint public value;
    
    function calculate(uint _value1, uint _value2) public {
            value  = Math.divide(_value1, _value2);                
        } 
}
