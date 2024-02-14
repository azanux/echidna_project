// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Flag} from "./Flag.sol";

contract EchidnaTest {
    Flag f;

    constructor() {
        f = new Flag();
    }

    function test_flag_is_false() public {
        assert(f.get() == false);
    }
}
