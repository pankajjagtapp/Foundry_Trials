// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter2.sol";

contract Counter2Test is Test {
        Counter2 public counterTwo;

        function setUp() public {
                counterTwo = new Counter2();
                counterTwo.setUp(5);
        }

        function testCounter() public {
                int value = counterTwo.counter();
                assertEq(value, 5);
        }

        function testIncrementCounter() public {
                counterTwo.incrementCounter();
                assertEq(counterTwo.counter(), 6);
                emit log_named_int("The incremented value is: ", 6);
        }

        function testDecrementCounter() public {
                counterTwo.decrementCounter();
                // counterTwo.decrementCounter();
                assertEq(counterTwo.counter(), 4);
                emit log_named_int("The decremented value is: ", 4);
        }


}

