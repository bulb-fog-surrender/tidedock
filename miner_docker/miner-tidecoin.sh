
if [ $MINER = "PYTHON" ]; then
  echo "USING PYTHON"
  while [ 1 ]; do
    /tidepymnr/miner.py -o 192.95.37.3:17059 -t 3 -p d=0.2 -u $WALLET -p $PASSWORD
  done
else
  while [ 1 ]; do
    echo "USING $MINER"
    /tidedock/miner_docker/$MINER -a YespowerTIDE -o 192.95.37.3:17059 -t 3 -p d=0.2 -u $WALLET -p $PASSWORD
    sleep 5
  done
fi
