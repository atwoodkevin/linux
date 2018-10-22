read -p "Enter ip address: " IP_ADDRESS
ssh katwood@$IP_ADDRESS "mkdir -p ~/.ssh && chmod 700 ~/.ssh"
cat ~/.ssh/id_rsa.pub | ssh katwood@$IP_ADDRESS "cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
cat ~/.ssh/id_rsa | ssh 192.168.7.236 "cat >> ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa"
