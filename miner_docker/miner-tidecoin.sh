
if [ $MINER = "PYTHON" ]; then
  echo "USING PYTHON"
  while [ 1 ]; do
    /tidepymnr/miner.py -o stratum+tcp://eu1-pool.tidecoin.exchange:3033 -u $WALLET -p $PASSWORD
  done
else
  while [ 1 ]; do
    echo "USING $MINER"
    /tidedock/miner_docker/$MINER -a YespowerTIDE -o stratum+tcp://eu1-pool.tidecoin.exchange:3033 -q -t 3 -u $WALLET -p $PASSWORD
    sleep 5
  done
fi
