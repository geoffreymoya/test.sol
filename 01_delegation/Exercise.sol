// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import "./ICounter.constant.sol";

contract Exercise {

	address public immutable me;
    address internal _me;
	
	uint256 public counter;

	address public counter_addr;
	
	constructor() {
       	me = address(this);
       	_me = address(this);
   	}	

    function setCounter(address _counter) external {
		counter_addr =_counter;   
	}

	function inc() external {
	 	(bool success, bytes memory data) = counter_addr.delegatecall(
         	 abi.encodeWithSignature("inc()") 
		);
	}
	
}
