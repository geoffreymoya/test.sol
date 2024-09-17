// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;


//private 0x106531b018919cbc80224816f53acab5840d59eeb81c88cd70ea05bdf37e007c 

contract Exercise {
    function getSigner() external pure returns (address) {
		return 0xc8CfBe5000172cA300b27d0000005300cDBd007D;
        //return 0x76C09917EF1A6E885affCb8B14c0E09df271F393;
    }
	
	

    function getSignature() external pure returns (bytes memory) {
        return	hex"e4063ae474d9f2c5b51f11c511d82f4d38acd5d23f4747ec4b17816127961e5c7d3a7c8121ddbf174120b583581246ce046a4c5e9bfa564044134efa89c0e11b1b";
        //hex"2b7fe067cf63bbfff8df636002eb6f71f4610b3958e75e759a2f6633c75c0a03147da8cbcbf788174b3c771e829ac5089a3cbc6511f9b76f2575ba2dd64dbfdd1b";
    }
}
