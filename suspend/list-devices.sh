#!/bin/bash

echo "$(${PWD}/bin/ifi-pa-devs-get 2>/dev/null | grep device#)"

