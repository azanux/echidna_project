// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Flag {
    bool flag = false;

    function flip() public {
        flag = !flag;
    }

    function get() public returns (bool) {
        return flag;
    }

    function test_fail() public {
        assert(false);
    }
}
