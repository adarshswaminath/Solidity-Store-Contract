// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "../lib/forge-std/src/Test.sol";
import "../src/Store.sol";


contract TestStore is Test{
     Store store;
    function setUp() public {
        store = new Store();
    }

    function testAdd() public {
        store.Add("HP","Laptop",200, 3, 5);   

    }
    function testTotal() public {
        store.Add("HP","Laptop",200, 3, 5);
        assertEq(store.Total(),1); 
    }
    function testBuy() public {
        store.Add("HP","Laptop",200, 3, 5);
        store.Buy(1, 2);
    }
    function testFailTransferNonOwner() public {
        vm.prank(address(0));
        store.Transfer();
    }
   
}