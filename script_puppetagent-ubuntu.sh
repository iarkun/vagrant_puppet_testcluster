#!/bin/bash
wget http://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
dpkg -i puppetlabs-release-pc1-xenial.deb
apt-get -y update
apt-get -y install puppet-agent
cat > /etc/profile.d/puppet-agent.sh << EOF
# Add /opt/puppetlabs/bin to the path for sh compatible users

if ! echo $PATH | grep -q /opt/puppetlabs/bin ; then
  export PATH=$PATH:/opt/puppetlabs/bin
  export PATH=$PATH:/opt/puppetlabs/puppet/bin
fi
EOF
dpkg -l | grep puppet-agent
