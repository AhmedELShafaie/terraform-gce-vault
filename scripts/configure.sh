#!/bin/bash

export VAULT_ADDR="$(terraform output -module=vault vault_addr)"
export VAULT_CACERT="$(pwd)/ca.crt"

vault operator init -recovery-shares 5 -recovery-threshold 3

vault login

vault audit enable file file_path=/var/log/vault/audit.log
