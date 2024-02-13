// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Counter} from "../src/Counter.sol";

contract TestCounter is Counter {

    function echidna_check_number() public view returns(bool) {
        return (number >= 0 && number <= 100);
    }
}
