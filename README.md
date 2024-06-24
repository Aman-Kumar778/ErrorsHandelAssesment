# Error Handling in Solidity

This is all about the functions which we can use to handel error in our solidity code , while specifying some initial conditions. the functions used are revert(), require() and assert().

## Description
We use these three methods in error-handling process in solidity:
* require(): which is used to validate some condition before execution of the rest  of the function body. it takes 2 parameters, first the condition and second the text which wiil be displayed.
* assert(): this is similar to require , but only takes one parameter i.e condition which is needed to be checked.
* revert(): this function used to flag an error , if the condition are not met , then this will revert back all the function in its initial state and also used to save gas .


### Executing program

* To create this contract either u need to built and account in remix ide online or u can code in your local machine compiler also. 
* first create a contract for this project - "Error.sol".
* below is the code for the error methods.
```
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

```



## Authors

Aman Kumar

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
