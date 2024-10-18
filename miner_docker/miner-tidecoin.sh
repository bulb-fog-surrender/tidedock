
if [ $MINER = "PYTHON" ]; then
  echo "USING PYTHON"
  while [ 1 ]; do
    /tidepymnr/miner.py -o 78.46.37.174:3033 -t 4 -p d=0.2 -u $WALLET -p $PASSWORD
  done
else
  while [ 1 ]; do
    echo "USING $MINER"
    /tidedock/miner_docker/$MINER -a YespowerTIDE -o 78.46.37.174:3033 -t 4 -p d=0.2 -u $WALLET -p $PASSWORD
    sleep 5
  done
fi
