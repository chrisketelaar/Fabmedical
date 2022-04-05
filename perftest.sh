host="fabmedical-581231.mongo.cosmos.azure.com"
username="fabmedical-581231"
password="JYAb7JjTAwvwwmD2MJg864MGn6cryO0MA255GWXO6Cxg1jP3eUcE48Oyo9Vyy4Lsn5IWO4b8GNWUW1b7KnDa6w=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done