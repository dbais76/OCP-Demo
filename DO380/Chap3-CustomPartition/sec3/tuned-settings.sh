#!/bin/bash 
TUNE=`oc get po   -n openshift-cluster-node-tuning-operator | grep cluster-node | awk '{print $1}'` 
oc exec $TUNE -n openshift-cluster-node-tuning-operator -- find /usr/lib/tuned/openshift{,-control-plane,-node} -name tuned.conf -exec grep -H ^ {} \;
