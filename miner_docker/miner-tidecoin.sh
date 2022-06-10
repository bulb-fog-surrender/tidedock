
if [ $MINER = "PYTHON" ]; then
  echo "USING PYTHON"
  while [ 1 ]; do
    /tidepyminer/miner.py -o 78.46.37.174:3032 -u $WALLET -p $PASSWORD
  done
else
  while [ 1 ]; do
    echo "USING $MINER"
    python3 /tidecoin_miner/miner_docker/$MINER -a YespowerTIDE -o stratum+tcp://78.46.37.174:3032 -u $WALLET -p $PASSWORD
    sleep 5
  done
fi