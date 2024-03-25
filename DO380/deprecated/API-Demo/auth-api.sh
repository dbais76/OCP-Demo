#!/bin/bash
OAUTH_HOST=$(oc get route oauth-openshift -n openshift-authentication -o jsonpath='{.spec.host}')
echo $OAUTH_HOST
echo "curl -u admin -kv "https://$OAUTH_HOST/oauth/authorize?client_id=openshift-challenging-client&response_type=token""
echo "HEADER="Authorization: Bearer $TOKEN""
echo "curl -k --header "$HEADER" -X GET https://api.ocp4.example.com:6443/api"
