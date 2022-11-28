#!/bin/bash
gaiad query provider consumer-genesis schwifty -o json | jq . > ccv.json
curl -s https://raw.githubusercontent.com/hyphacoop/ics-testnets/main/game-of-chains-2022/schwifty/schwifty-fresh-genesis.json | jq . > fresh.json
jq -s '.[0].app_state.ccvconsumer = .[1] | .[0]' fresh.json ccv.json > schwifty-genesis.json
sha256sum schwifty-genesis.json