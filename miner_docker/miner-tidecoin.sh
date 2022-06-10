while [ 1 ]; do
/tidecoin_miner/miner_docker/$MINER -a YespowerTIDE -o stratum+tcp://78.46.37.174:3032 -u $WALLET -p $PASSWORD
sleep 5
done
