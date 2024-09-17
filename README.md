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
- manual removal of array elements by shifting and pop
### `01_delegation`
- delegate call of inc in random implementations of counter. beware of needed me adresses to match the storage offset
### `02_pack`
- order properly vars to consume less storage slots
### `03_deposit`
### `04_brute_power`
