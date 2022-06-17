openssl x509 -req -in subdomain.csr -out subdomain.crt -CA ca.pem -CAkey cakey.pem -days 365 -set_serial 02
