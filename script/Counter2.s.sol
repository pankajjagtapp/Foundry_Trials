// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {Counter2 } from "src/Counter2.sol";

contract CounterTwoScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new Counter2();
        // Counter2.setUp(5);

        vm.stopBroadcast();
        }
}
