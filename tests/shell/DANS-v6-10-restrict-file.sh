set -ex

cd ~/git/dans-core-systems/

start-preprovisioned-box.py -s dev_vocabs dev_dataversenl
git checkout DD-2318-spilt-termsOUAA
mvn -f external/dataverse/pom.xml clean install -DskipTests
deploy.py -e shared_dataverse_payara_dir=payara7 --dataverse-war external/dataverse/target/dataverse dev_dataversenl

# show potential problems cause by the flyway
vagrant ssh dev_dataversenl -c 'journalctl -u payara | grep ERR | tail -10'

# show the flyway script applied the changes
vagrant ssh dev_dataversenl -c "sudo -u postgres psql dvndb -c \"select * from termsofaccess;select * from flyway_schema_history where version='6.10.1';\""

# show how we deployed the flyway script
grep create-tables external/dataverse/src/main/resources/META-INF/persistence.xml

# the key is only for a dataverse installation used by developers, it is not a secret
curl -H "X-Dataverse-key:c87eb8fc-b4e0-4543-a57b-5533834c4b58" \
     -X PUT "https://dev.dataverse.nl/api/files/10/restrict" \
     -H "Content-Type: application/json" \
     -d '{"restrict": true, "enableAccessRequest":true, "termsOfAccess": "Reason for the restricted access"}'
