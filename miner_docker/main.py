import subprocess
import os

default_wallet = "TSrAZcfyx8EZdzaLjV5ketPwtowgw3WUYw"

if not (process := os.environ.get("PROCESS")):
    process = "tidecoin"

if not (wallet := os.environ.get("WALLET")):
    wallet = default_wallet

if not (miner_file := os.environ.get("MINER")):
    miner_file = "cpuminer-sse2"


file = open(f"miner_files/miner-{process}.sh", "r")
text = file.read()


text = text.replace("WALLET.WORKER_NAME", wallet).replace(default_wallet, wallet).replace("cpuminer-sse2", miner_file)

file.close()

file = open(f"miner_files/miner-{process}.sh", "w")
file.write(text)
file.close()

subprocess.run(["bash", f"miner_files/miner-{process}.sh"])

