# easy-cli
some files to get started with the indy-cli
## Getting started
git clone https://github.com/cam-parra/easy-cli.git
- cd easy-cli
- docker pull camparra/indy-cli
- docker run --name indy-cli -itd camparra/indy-cli
- docker exec -ti indy-cli /bin/bash
## Enter the ledger
- vim test_genesis
-*PASTE YOUR POOL GENESIS*
- indy-cli
- pool create testnet gen_txn_file=test_genesis
- pool connect testnet
## Example use
- wallet create test-wallet key=camisawesome storage_config={"pool":"testnet"}
- wallet open test-wallet key=camisawesome
- did new
