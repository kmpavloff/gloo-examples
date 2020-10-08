#!/bin/bash

oc delete svc petstore -n petstore-istio
oc delete deployment petstore -n petstore-istio
oc delete virtualservice petstore -n petstore-istio
