#!/bin/bash
sudo systemctl stop sol.service
python3 /mnt/snapshot-finder.py --snapshot_path /mnt/solana-ledger/snapshot
sudo systemctl start sol.service