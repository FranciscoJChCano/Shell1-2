#!/bin/bash

if [ "$(whoami)" != "root" ]; then
    echo "No tiene acceso como root"
fi
