#!/bin/bash

function fetchCertificate() {
    hostAndPort=$1
    Q 2>&1 /dev/null | openssl s_client -connect "$hostAndPort"  > example-certificate.log 2>&1
}

function run() {
    fetchCertificate "$1"
    cat example-certificate.log
}

if [ $# != 1 ];then
    echo 'ERROR: This script expect exactly one parameter: The host and port number to retrieve the certificate for'
else
    run $1
fi

exit

#EOF
