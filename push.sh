#!/bin/bash

VESRION='2024-08-23'

docker push gnasello/qupath-env:$VESRION

docker tag gnasello/qupath-env:$VESRION gnasello/qupath-env:latest

docker push gnasello/qupath-env:latest