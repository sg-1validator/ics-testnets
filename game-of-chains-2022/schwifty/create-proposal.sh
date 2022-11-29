#!/bin/bash
export ACCOUNT="cosmos1l0u0nr0327lecg00ac0z7cgph67v8xtdqdg09x"
gaiad tx gov submit-proposal consumer-addition schwifty-proposal.json \
--from=$ACCOUNT \
--chain-id=provider \
--gas auto

