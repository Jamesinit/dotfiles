#!/bin/bash

   bash -c "$(curl --fail --show-error --silent --location -x http://127.0.0.1:7890 https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)" <<< n
zinit self-update
