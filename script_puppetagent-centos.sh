#!/bin/bash
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum install -y puppet-agent
cat > /etc/profile.d/puppet-agent.sh << EOF
# Add /opt/puppetlabs/bin to the path for sh compatible users

if ! echo $PATH | grep -q /opt/puppetlabs/bin ; then
  export PATH=$PATH:/opt/puppetlabs/bin
  export PATH=$PATH:/opt/puppetlabs/puppet/bin
fi
EOF
rpm -qa | grep puppet
