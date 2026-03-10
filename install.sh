#!/bin/sh
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo '#!/bin/sh' >/tmp/luafuck
echo "lua \"$SCRIPT_DIR/main.lua\" \"\$@\"" >>/tmp/luafuck

chmod +x /tmp/luafuck
sudo mv /tmp/luafuck /usr/local/bin/luafuck

# for my fellow nixos chads and chadesses or wtf
if ! echo "$PATH" | grep -q "/usr/local/bin"; then
  echo 'export PATH="/usr/local/bin:$PATH"' >>~/.zshrc
  echo 'export PATH="/usr/local/bin:$PATH"' >>~/.bashrc
  echo "added /usr/local/bin to PATH, please restart your terminal before running luafuck or source your .*rc (zsh/bash)"
fi

echo "installed! type luafuck to play"
