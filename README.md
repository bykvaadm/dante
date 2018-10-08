# Dockerfile and Helm Chart for danted socks proxy

Dockerfile isn't ready for running w/o kubernetes, at least i didn't have an intention to make it working. But u can do it by yourself, by adding a valid config file to /etc/danted.conf

This is ready-to-go helm chart, which u can install to k8s cluster.

## Installation

1. clone the repository
2. cd into helm folder
3. edit values.yaml:
  * set username and password
  * set external ip
  * set port (default 1080)
4. (optional) create ns:
```
kubectl create ns dante
```
5. install chart by running command:
```
helm install --name=dante --namespace=dante ./
```

## Test

After helm installation you will get several commands to test proxy. 
