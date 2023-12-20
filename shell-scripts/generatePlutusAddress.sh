#!/bin/zsh
#run script: zsh generatePlutusAddress.sh scriptName address
#walletName is fileName of a wallet in wallets folder e.g wallet01
SCRIPTNAME=$1
ADDRESS=$2
$CARDANO_CLI address build --payment-script-file ../generated-plutus-scripts/paasV1/${SCRIPTNAME}.plutus --testnet-magic 1 --out-file ../wallets/${ADDRESS}.addr