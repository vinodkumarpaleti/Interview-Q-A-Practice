#!/bin/bash
# List of servers
servers=("server1" "server2" "server3" "server4" "server5" "server6" "server7" "server8" "server9" "server10")
# SSH username
username="your_username"
# Loop through each server
for server in "${servers[@]}"; do
    echo -e "\nChecking Red Hat version on $server:"
    # Use ssh to execute the command on the remote server
    ssh "$username@$server" "cat /etc/redhat-release"
done
