# Membuat CA dan CSR
Membuat file `config.txt` terlebih dahulu
```
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = namadomainku.com
DNS.2 = *.namadomainku.com
```
Setelah itu generate dengan perintah dibawah ini
```
openssl genrsa -des3 -out ca.key 2048
openssl req -x509 -new -nodes -key ca.key -sha256 -days 365 -out ca.pem
openssl crl2pkcs7 -nocrl -certfile ca.pem -out ca.p7b
openssl genrsa -out domain.key 2048
openssl req -new -key domain.key -out domain.csr
openssl x509 -req -in domain.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out domain.crt -days 365 -sha256 -extfile config.txt
```

# Membuat user otomatis
```
for i in {1..100}; do useradd user$i -s /bin/bash -m; passwd user$i <<< "p@ssword"$'\n'"p@ssword"; done
```

# Mereplace dan menambahkan text dengan `sed`
#### Mereplace
```
sed -i 's/userdokumen/user'$variable'/g' /etc/apache2/sites-available/web$variable.conf
```
#### Menambahkan
```
sed -i -e '$awww'$variable'     IN      A       192.168.4.1' /etc/bind/db.ict.or.id
```
