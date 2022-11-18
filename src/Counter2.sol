// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Counter2 {
        int public counter;

        function setUp(int _counter) public {
                counter = _counter; 
        }

        function incrementCounter() public {
                counter++;
        }

        function decrementCounter() public {
                counter--;
        }

        // function getCounter() public view returns(int) {
        //         return counter;
        // }
}