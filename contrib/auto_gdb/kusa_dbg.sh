#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.kusacore/kusad.pid file instead
kusa_pid=$(<~/.kusacore/testnet3/kusad.pid)
sudo gdb -batch -ex "source debug.gdb" kusad ${kusa_pid}
