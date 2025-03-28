# Setting up the Lighter Edge CLI node

This is the guide to setting up Node Lighter Edge with the help of CLI.

## 1. Cloning the repository
First, clone the repository:
```
git clone https://github.com/0MrM0/LayerEdge-CLI-Node-Setup-Guide.git
cd LayerEdge-CLI-Node-Setup-Guide
```

## 2. Environmental settings
Paste the wallet settings and other environmental variables into the .env file.
Environmental Settings File (.env):

This is the most important part because you need to enter the necessary environmental variables for the Lighter Edge CLI. These variables include your URLs, contract addresses, and private key.

GRPC_URL: This URL corresponds to the GRPC server address that your node is communicating with.

CONTRACT_ADDR: The smart contract address that your node interacts with.

ZK_PROVER_URL: The address of the ZK Prover service used for calculations.

POINTS_API: API address to access node data.

PRIVATE_KEY: The private key of your wallet that is needed to register Nood.

## 3. Installing Prerequisites
Run the prerequisite installation nasscript:
```
./scripts/setup.sh
```

## 4. Implementation of Nood
To set up ZK-Prover(Merkle) & Node, run the Node Start script:
```
./scripts/start-node.sh
```
### On Ubuntu (WSL)
If you are using **Ubuntu on Windows (WSL)**, navigate to the directory where your repository is cloned. You can access your Windows files under the `/mnt/` folder in WSL.

1. Open your Ubuntu terminal (WSL).
2. Navigate to the directory where you have cloned your repository:

```
   cd /mnt/e/Layeredge-CLI-Setup/LayerEdge-CLI-Node-Setup-Guide
```
and in the end:

```
bash setup.sh
bash start-node.sh
```

## 5. Monitoring & Logs
To view your node logs and status, use the following command:
```
tail -f /var/log/layeredge-node.log
```

## 6. Connecting the Node to the LayerEdge Dashboard
To connect your CLI node to the LayerEdge dashboard:

Fetch Points via CLI
Enter the following URL to get points from the CLI:
```
https://light-node.layeredge.io/api/cli-node/points/{your_wallet_Address}
```
Replace {walletAddress} with your actual wallet address.

## 7. Connecting to the dashboard:

1.Go to dashboard.layeredge.io address.
2.Connect your wallet.
3.Link your Node CLI public key.

## Important Notes:
A CLI wallet can only be connected to a dashboard wallet.

can use diffrent wallet other connected to dashbord for Browser-Based Node.

Can use a different wallet than the wallet connected to the dashbord for a browser-based node but you need to make sure to connect to the volt that is in the Connect dashboard.

Connecting to the dashboard is essential even if the CLI wallet and dashboard are similar.

## 8. Common problems
Problem: gRPC connection is disabled. Solution: Check the gRPC settings.

Problem: The Risc0 prover service is not running. Solution: Restart the prover service and check the logs.

Problem: Incorrect wallet or signature settings. Solution: Double-check the wallet addresses and environmental variables.
