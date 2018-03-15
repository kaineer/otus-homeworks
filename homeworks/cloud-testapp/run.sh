#!/bin/bash
EXIT_STATUS=0

# if ! [[ -x $(which openvpn) ]]
# then
#     apt-get update
#     apt-get install -y openvpn netcat
# fi

# openvpn --config cloud-bastion.ovpn --script-security 2 --up "/usr/bin/touch /tmp/vpn-up" --auth-user-pass otus-homeworks/homeworks/$BRANCH/auth &

# timeout 20 bash <<EOT
# while sleep 1 ; do
#     test -f /tmp/vpn-up && break
# done
# EOT

./install_ruby.sh
./install_mongodb.sh
./deploy.sh
inspec exec otus-homeworks/homeworks/$BRANCH || EXIT_STATUS=$?

exit $EXIT_STATUS



