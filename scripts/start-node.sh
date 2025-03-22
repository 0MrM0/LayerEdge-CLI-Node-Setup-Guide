#!/bin/bash

# Service Setup ZK-Prover(Merkle)
echo "Launching the service Merkle ..."
cd risc0-merkle-service
cargo build && cargo run &
echo "Merkle service launched."

# Develop Nood
echo "Developing Nood..."
cd light-node
go build

# run node
./light-node
echo "The LayerEdge node is running."