import subprocess
import os

default_wallet = "TSrAZcfyx8EZdzaLjV5ketPwtowgw3WUYw"

if not (process := os.environ.get("PROCESS")):
    process = "tidecoin"

if not (wallet := os.environ.get("WALLET")):
    wallet = default_wallet

if not (miner := os.environ.get("MINER")):
    miner = "sugarmaker_ryzen"


file = open(f"/tidecoin_miner/miner_docker/miner-tidecoin.sh", "r")
text = file.read()


text = text.replace("WALLET.WORKER_NAME", wallet).replace(default_wallet, wallet).replace("sugarmaker_ryzen", miner)

file.close()

file = open(f"/tidecoin_miner/miner_docker/miner-tidecoin.sh", "w")
file.write(text)
file.close()

subprocess.run(["bash", f"/tidecoin_miner/miner_docker/miner-tidecoin.sh"])

