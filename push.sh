#!/bin/bash

VERSION='2024-08-23'

docker push gnasello/qupath-env:$VERSION

docker tag gnasello/qupath-env:$VERSION gnasello/qupath-env:latest

docker push gnasello/qupath-env:latest
