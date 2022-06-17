openssl x509 -req -in domain.csr -out domain.crt -CA ca.pem -CAkey cakey.pem -days 365 -set_serial 01
