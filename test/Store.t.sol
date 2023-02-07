// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "../lib/forge-std/src/Test.sol";
import "../src/Store.sol";

contract TestStore {
    Store store;
    function setUp() public {
        store = new Store();
    }
}