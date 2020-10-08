#!/bin/bash

set -ea

# FIX [fsGroup: Invalid value: []int64{10101}: 10101 is not an allowed group]
oc adm policy add-scc-to-group restricted 10101

helm install gloo gloo-os-with-ui/gloo-os-with-ui --namespace gloo-system -f os-values-ent.yaml

oc apply -f gloo-proxy-route.yaml
oc apply -f gloo-ui-route.yaml