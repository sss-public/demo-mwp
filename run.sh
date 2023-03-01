#!/bin/bash

set -Eeuxoa pipefail

rm -rf test/* artifacts cache coverage* typechain-types
npx hardhat compile
npx hardhat testgen 2>&1 --show-stack-traces
#npx hardhat test
