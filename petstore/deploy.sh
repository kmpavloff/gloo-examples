#!/bin/bash

oc apply -f petstore.yaml -n petstore
oc apply -f petstore-vs.yaml -n petstore