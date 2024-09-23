# test.sol

## setup

```
./setup.sh
```

## you must

- make all github actions go green

## you can

- install new foundry libs
- install new npm packages

## you cannot

- edit files listed in `constant.txt`
- edit `constant.txt`
- use `vm` inside the Exercise unless it's explicitely allowed

## difficulty

- `00_welcome`: *
- `01_delegation`: **
- `02_pack`: **
- `03_deposit`: ***
- `04_brute_power`: **********

## hint

- use [`act`](https://github.com/nektos/act) to run the github actions locally

## documentation

- documentating your resolution process is valuable, even more if the exercise is not resolved !
- you can write your notes in the following sections

### `00_welcome`
- SUCCESS : manual removal of array elements by shifting and pop
### `01_delegation`
- SUCCESS : delegate call of inc in random implementations of counter. beware of needed "me" and "_me"  adresses to match the storage offset
### `02_pack`
- SUCCESS : order properly vars to consume less storage slots
### `03_deposit`
- SUCCESS : simulate a 32 stake eth deposit. I retreived the calldatas on an existing tx in deployed mainnet ethereum Staking contract  
### `04_brute_power`
- FAIL
- First approach is as its name is to perform a brute force to find a vanity address. With https://github.com/MrSpike63/vanity-eth-address I manage to find a 7 zero addrress with my RTX 3080 Ti GPU in 10 minutes. It will take several decades to find a 14 zero address.
- On a second way, there is another path :  instead of returning Exteranlly Owned address (EOA), the GetSigner() return a smart contract with EIP1271 implementation of isValidSignature() and return the magic number. But the address contract created by CREATE or CREATE2 doesn't match a 14 zero address. We fall in the same previous issue. 
- Third if foundry cheatcodes are allowed it will be possible to trick the sig verification :  the GetSigner() method returns a 14 zero address and perform a vm.mockCall() on its address to implement a bypass isValidSignature().
- I also tried to manipulate storage vars in an assmbly section. It's useless beacause the script contract get signer value once and store it in a local variable.