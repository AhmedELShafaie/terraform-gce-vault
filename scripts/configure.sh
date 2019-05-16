#!/bin/bash

export VAULT_ADDR="$(terraform output vault_addr)"
export VAULT_CACERT="$(pwd)/ca.crt"

vault operator init -recovery-shares 5 -recovery-threshold 3
