// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "../src/ICO.sol";

// ICOFuzzTest.sol
contract ICOFuzzTest is ICO {

    constructor() {
        is_paused = true;
        owner = address(0x0);
    }

    function echidna_test_pause() public view returns (bool) {
        return (is_paused == true);
    }
}