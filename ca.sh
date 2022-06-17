#!/bin/bash
openssl req -new -x509 -nodes -days 365 -out ca.pem -keyout cakey.pem
