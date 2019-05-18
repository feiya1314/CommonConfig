#! /bin/sh

keytool -importkeystore -srckeystore client-keystore.jks -srcstorepass 234BOPatu -srcstoretype JKS -deststoretype PKCS12 -deststorepass 234BOPatu -destkeystore temp.pfx

openssl pkcs12 -in temp.pfx -out client.pem -nodes -passin "pass:234BOPatu"
rm temp.pfx