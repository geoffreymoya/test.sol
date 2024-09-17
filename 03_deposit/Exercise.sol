// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "forge-std/Script.sol";

import "./DepositContract.constant.sol";

// steth is your friend
contract Exercise {
    address dc;
	

    function getValues() external pure returns (bytes memory publicKey, bytes memory signature, address withdrawal) {
		bytes memory _publicKey = new bytes(24);
		bytes memory _signature = new bytes(48);
		_publicKey = abi.encodePacked(hex"98db08a70f066cb2695fc7be51c35aa44b6ab28d578dae077967ba74ee6c7162b19c4a86639c7c544826a31502f0fc40");
		_signature = abi.encodePacked(hex"a52edfa02d6a17912b1589465913243adeeaf99b6d2a9bc75e93fb6a3f4171e42d7376d04ff919a78d72e061badfa4d9159d2b730402585c2c577df412f89a34", hex"1f39d86224426c106ef9bacfc6f34ca2f9c5adcefeec74cb7b6a5aeebae47941");
		address _withdrawal = 0xE5fb5b912cf9f7e87B1A58CF9D9f1997ef9EF539;
		return (_publicKey,_signature,_withdrawal);
			
	}

    function setDepositContract(address _dc) external {
        dc = _dc;
    }

    function deposit(bytes calldata pubkey, bytes calldata signature, address) external payable {
		
		
		bytes memory withdrawal_credentials = new bytes(16);
		bytes memory root = abi.encodePacked(hex"b8626ca2ec9b78908153bbad1d835478b007704ba401ba6975847200849415ef");
		withdrawal_credentials = abi.encodePacked(hex"010000000000000000000000e5fb5b912cf9f7e87b1a58cf9d9f1997ef9ef539");
		
		DepositContract dc_ctr = DepositContract(dc);
	
		dc_ctr.deposit{value: 32 ether}(pubkey,withdrawal_credentials,signature,bytes32(root));
	}
}
