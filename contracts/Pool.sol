// contracts/Pool.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <=0.8.0;

import "@openzeppelin/contracts/payment/escrow/ConditionalEscrow.sol";

contract Pool is ConditionalEscrow {
    mapping(address => bool) private _allowed;

    function setAllowed(address payee, bool allowed) public {
        _allowed[payee] = allowed;
    }

    function withdrawalAllowed(address payee) public view override returns (bool) {
        return _allowed[payee];
    }
}