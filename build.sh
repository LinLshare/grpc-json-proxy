#!/bin/bash -e

export GO111MODULE=on
export GOOS=linux
export GOARCH=amd64
export CGO_ENABLED=0
go build -o main