


OUTPUT=$(forge create ./src/BankerCoin.sol:BankerCoin --rpc-url $BASE_MAINNET_RPC --account deployer --json)

CONTRACT_ADDR=$(echo "$OUTPUT" | jq -r '.deployedTo')

forge verify-contract $CONTRACT_ADDR ./src/BankerCoin.sol:BankerCoin --chain 8453 --watch

echo $CONTRACT_ADDR
