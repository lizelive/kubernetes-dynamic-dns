#!/bin/bash
REQUEST="https://domains.google.com/nic/update?hostname=$HOSTNAME"
IP=$(curl -Ss https://domains.google.com/checkip)
RESPONSE=$(curl -Ss -u "$USERNAME:$PASSWORD" $(eval "echo $REQUEST"))
echo $RESPONSE
test $RESPONSE = "good"
