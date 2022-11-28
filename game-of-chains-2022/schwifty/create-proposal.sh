#!/bin/bash
export ACCOUNT="cosmos1xqnf6w60t3shcn5sey75a634w48aky3f4scf5r"
gaiad tx gov submit-proposal consumer-addition schwifty-proposal.json \
--from=$ACCOUNT \
--keyring-backend file \
--chain-id=provider \
--gas auto


gaiad tx gov submit-proposal consumer-removal schwifty-proposal-stop.json \
--from=$ACCOUNT \
--keyring-backend file \
--chain-id=provider \
--gas auto
