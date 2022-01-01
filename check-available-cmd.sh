#!/bin/bash
#Check a command available
if ! type $1 >/dev/null 2>&1; then
    echo "$1 cmd was not installed"
else 
    echo "$1 cmd was installed"
fi