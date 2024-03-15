#!/bin/bash
export SOLANA_METRICS_CONFIG="host=https://metrics.solana.com:8086,db=mainnet-beta,u=mainnet-beta_write,p=password"
exec /mnt/solana/target/release/solana-validator \
    --identity /home/solana/rpc_node.json \
    --entrypoint entrypoint.mainnet-beta.solana.com:8001 \
    --entrypoint entrypoint2.mainnet-beta.solana.com:8001 \
    --entrypoint entrypoint3.mainnet-beta.solana.com:8001 \
    --entrypoint entrypoint4.mainnet-beta.solana.com:8001 \
    --entrypoint entrypoint5.mainnet-beta.solana.com:8001 \
    --rpc-port 8899 \
    --dynamic-port-range 8000-8099 \
    --gossip-port 8001 \
    --no-voting \
    --no-port-check \
    --rpc-bind-address 0.0.0.0 \
    --enable-cpi-and-log-storage \
    --account-index program-id spl-token-owner spl-token-mint \
    --enable-rpc-transaction-history \
    --wal-recovery-mode skip_any_corrupted_record \
    --log /mnt/logs/solana-validator.log \
    --accounts /mnt/solana-accounts \
    --ledger /mnt/solana-ledger \
    --snapshots /mnt/solana-accounts/snapshots \
    --no-snapshot-fetch \
    --limit-ledger-size 50000000 \
    --rpc-send-retry-ms 1 \
    --use-snapshot-archives-at-startup \
    --full-rpc-api \
    --account-index-exclude-key kinXdEcpDQeHPEuQnqmUgtYykqKGVFq6CeVX5iAHJq6 \
    --account-index-exclude-key TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA \
