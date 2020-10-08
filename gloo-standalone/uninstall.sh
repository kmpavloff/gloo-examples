#!/bin/bash

set -ea

helm uninstall gloo

oc delete route gloo-proxy -n gloo-system
oc delete route gloo-ui -n gloo-system
