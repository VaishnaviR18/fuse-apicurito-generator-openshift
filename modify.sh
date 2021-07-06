#!/bin/bash
set -e

sed -i 's/\(.*name:.*\)/- name: "fuse-apicurito-generator-'$1'.jar"/g' overrides.yml
sed -i 's/\(.*sha512:.*\)/  sha512: "'$2'"/g' overrides.yml
sed -i -e 's/\(.*url:.*\)/  url: "http:\/\/indy.psi.redhat.com\/api\/content\/maven\/group\/redhat-builds\/org\/jboss\/redhat-fuse\/apicurio\/fuse-apicurito-generator\/'$1'\/fuse-apicurito-generator-'$1'.jar"/g' overrides.yml