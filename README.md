# Echdnia Test

## Installtion with docker 

Run the command below
```bash
docker run -it -v "$PWD":/share trailofbits/eth-security-toolbox
```
Go to the repertory /share/
```bash
ethsec@579fe7a15cb0:/share$ 
```

## Test Echidna with property mode

We will test Counter.sol Contract
```javascript
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
```

Create the Echidna test file
```javascript
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Counter} from "../src/Counter.sol";

contract TestCounter is Counter {

    function echidna_check_number() public view returns(bool) {
        return (number >= 0 && number <= 100);
    }
}
```

To run Echidna property test , run the command below
```bash
 echidna ./test/TestCounter.sol --contract TestCounter
 ```

You should the result below, that show that the est fail , and the call that make it fail 
[result ](./img/echidna-prop.png)



