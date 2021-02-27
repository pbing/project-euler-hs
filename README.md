# [Project Euler](https://projecteuler.net/) in Haskell

This project is a mere test vehicle for `cabal` and `hspec`.

## Installation

```shell
git clone https://github.com/pbing/project-euler-hs.git
cd project-euler-hs
cabal update && cabal install hspec
```

## Run tests
```shell
cabal run test-project-euler-hs
```
or
```shell
cabal test --test-show-details=direct
```

## Solve all problems

```shell
cabal run project-euler-hs
```
