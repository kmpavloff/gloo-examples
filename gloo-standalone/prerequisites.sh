#!/bin/bash

# Добавляем helm-репозитории gloo
helm repo add gloo-os-with-ui https://storage.googleapis.com/gloo-os-ui-helm
helm repo add gloo https://storage.googleapis.com/solo-public-helm
helm repo update

# создаем проект, куда будет установлен Gloo
oc new-project gloo-system