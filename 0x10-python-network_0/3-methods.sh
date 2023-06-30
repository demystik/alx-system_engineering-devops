#!/usr/bin/bash
echo $(curl -sI -X OPTIONS $1 2>&1 | grep "Allow:" | tr -d '\r')
