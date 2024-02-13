// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Token} from "../src/Token.sol";

contract TestToken is Token {
    function echidna_balance_under_1000() public view returns (bool) {
        return balances[msg.sender] <= 1000;
    }
}