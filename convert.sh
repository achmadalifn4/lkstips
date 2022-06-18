#!/usr/bin
openssl crl2pkcs7 -nocrl -certfile ca.pem -out ca.p7b
