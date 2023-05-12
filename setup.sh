#!/bin/bash

# Requirements:
#   Sets an environment variable with your github username in /root/.bash_profile
#   Writes the following code to a file called config.hcl
#       cluster_addr  = "https://<HOSTNAME>:8201"
#       api_addr      = "https://<HOSTNAME>:8200"
#       disable_mlock = true
#   Replaces <HOSTNAME> value vault-server.hashicorp.com in config.hcl

# Considerations: 
#   Since we are setting a variable in /root/.bash_profile which has permissions requiring root access
#   this script will use a "sudo tee" call allowing us to read from standard input and write properly to /root/.bash_profile

echo 'export GITHUB_USERNAME="Mtbred"' | sudo tee -a /root/.bash_profile > /dev/null

# Uncomment following line to set an environment variable with GitHub username in a non root protected file location
# The example below uses the users PWD.
#echo 'export GITHUB_USERNAME="Mtbred"' >> ~/.bash_profile

# Write the provided code to the config.hcl file
cat <<EOF > config.hcl
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true
EOF

# Replace '<HOSTNAME>' value vault-server.hashicorp.com in config.hcl
sed -i "s/<HOSTNAME>/vault-server.hashicorp.com/g" config.hcl