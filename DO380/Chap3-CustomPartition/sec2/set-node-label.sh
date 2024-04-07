#!/bin/bash
oc label node/worker03 node-role.kubernetes.io/custom=
echo "Checking node label now"
oc get nodes --selector node-role.kubernetes.io/custom=
sleep 5

