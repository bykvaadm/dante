#!/bin/bash
docker build -t bykva/dante:1.4.2-bookworm --platform=linux/amd64 --push -f ./Dockerfile .
docker build -t bykva/dante:latest -t bykva/dante:1.4.4-bookworm --platform=linux/amd64 --push -f Dockerfile-src .
