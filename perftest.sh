host="fabmedical-736748.mongo.cosmos.azure.com"
username="fabmedical-736748"
password="cI5K2sIKkrY0wlEImKgKFDvjmJy9bAlgHWiXPkrYknljqH1yngfJksqZkDTJImb1eVi83QekKIP3mAzQtuGUJA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
