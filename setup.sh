#!/bin/bash

mkdir -p ~/.ssh/config.d

ln -sf ~/tabby-ssh-sync-2012a-ohg/config ~/.ssh/config.d/team_servers

if ! grep -q "Include config.d/*" ~/.ssh/config; then
    echo "Include config.d/*" | cat - ~/.ssh/config > temp && mv temp ~/.ssh/config
fi