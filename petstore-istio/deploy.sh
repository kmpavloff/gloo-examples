#!/bin/bash

oc apply -f petstore.yaml -n petstore-istio
oc apply -f petstore-vs.yaml -n petstore-istio