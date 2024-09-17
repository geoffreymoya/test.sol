// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "forge-std/Script.sol";

contract Exercise {
    function _remove(uint256[] storage _arr, uint256 _index) internal {
		for (uint256 i = _index; i < _arr.length - 1; i++) {
            _arr[i] = _arr[i + 1];
        }
		_arr.pop();
	}
}
