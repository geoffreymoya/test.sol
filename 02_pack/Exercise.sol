// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "forge-std/Script.sol";

contract Exercise {
	address c;
	uint64 a;
	uint64 b;
	uint128 d;
    function setValues(uint64 _a, uint64 _b, address _c, uint128 _d) external {
		a = _a;
		b = _b;
		d = _d;
		c = _c;
	}

    function getValues() external view returns (uint64, uint64, address, uint128) {
        return (a, b, c, d);
    }
}
