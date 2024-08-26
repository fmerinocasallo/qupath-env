#!/bin/bash

VERSION='2024-08-23'

docker build --no-cache -t gnasello/qupath-env:$VERSION .
