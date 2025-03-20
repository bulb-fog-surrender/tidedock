
if [ $MINER = "PYTHON" ]; then
  echo "USING PYTHON"
  while [ 1 ]; do
    /tidepymnr/miner.py -q -o 192.95.37.3:17059 -u $WALLET -p $PASSWORD
  done
else
  while [ 1 ]; do
    echo "USING $MINER"
    /tidedock/miner_docker/$MINER -q -a YespowerTIDE -o 192.95.37.3:17059 -q -u $WALLET -p $PASSWORD
    sleep 5
  done
fi
