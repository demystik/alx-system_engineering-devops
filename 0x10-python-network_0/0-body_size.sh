#!/bin/bash
#This file does this does that
curl -sI "$1" | awk '/Content-Length/ {print $2}'
