if [ -f /etc/profile]; then
    source /etc/profile
fi
if [[ ":$PATH:" != *":/.local/bin:"* ]]; then
    PATH=~/.local/bin:$PATH
fi
