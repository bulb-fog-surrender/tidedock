
if [ $MINER = "PYTHON" ]; then
  echo "USING PYTHON"
  while [ 1 ]; do
    /tidepyminer/miner.py -o 192.95.37.3:17059 -u $WALLET -p $PASSWORD
  done
else
  while [ 1 ]; do
    echo "USING $MINER"
    /tidecoin_miner/miner_docker/$MINER -a YespowerTIDE -o stratum+tcp://192.95.37.3:17059 -u $WALLET -p $PASSWORD
    sleep 5
  done
fi
