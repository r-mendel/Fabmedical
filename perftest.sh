host="fabmedical-562479.documents.azure.com"
username="fabmedical-562479"
password="bQBxgK0756CBG6QWwb2Wy7XBgIN0hCATSBvhZrs6uIVq5TOVaTWlOBZNrgbACEHotBY3OcGVXSXQTbLqBGy7Lg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
