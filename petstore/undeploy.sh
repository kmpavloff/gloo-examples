#!/bin/bash

oc delete svc petstore -n petstore
oc delete deployment petstore -n petstore
oc delete virtualservice petstore -n petstore