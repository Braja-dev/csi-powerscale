#!/bin/sh
# This is used for mocking different node IPs in order to test accessModes

# This should be like 111.222.333.444
export X_CSI_ISI_ENDPOINT="1.1.1.1"
export X_CSI_ISI_USER="root"
export X_CSI_ISI_PASSWORD=""
export X_CSI_ISI_PATH="/ifs/data/csi/integration"
export X_CSI_ISI_PORT="8080"
export X_CSI_ISI_QUOTA_ENABLED="false"
export X_CSI_NODE_IP="1.1.1.2"
NODEFQDN=`hostname -f`
NODENAME=`hostname`
SEPARATOR="=#=#="
NODEID=$NODENAME$SEPARATOR$NODEFQDN$SEPARATOR$X_CSI_NODE_IP
export X_CSI_NODE_NAME=$NODEID
export X_CSI_ISI_INSECURE="true"
export X_CSI_ISI_AUTOPROBE="false"
export X_CSI_ISILON_NO_PROBE_ON_START="true"
export X_CSI_MODE=""

# Variables for using tests
export CSI_ENDPOINT=`pwd`/unix_sock
