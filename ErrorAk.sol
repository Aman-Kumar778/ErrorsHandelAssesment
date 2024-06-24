// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract ErrorHandling {
    function balance(uint256 amount) public pure returns (uint256) {
        require(amount > 0, "Amount must be greater than zero");

        return amount;
    }

    function square(uint256 s) public pure returns (uint) {
        if (s <= 0) {
            revert("Input should be greater than 0 to calculate square");
        } else {
            return s * s;
        }
    }

    // lets specify condition for assert function

    uint256 public bal = 0;

    function Total() public view returns (uint) {
        assert(bal >= 0);
        return bal + 2;
    }
}
