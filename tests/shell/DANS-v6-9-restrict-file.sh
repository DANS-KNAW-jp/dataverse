set -ex

cd ~/git/dans-core-systems/

start-preprovisioned-box.py -s dev_vocabs dev_dataversenl
git checkout DD-2318-code-for-splitted-table

#deploy without the flyway script, so we can test the flyway script later
vagrant ssh dev_dataversenl -c 'mv /external/dataverse/src/main/resources/db/migration/V6.9.0.1__DD2318-split-termsofuseandaccess.sql /external/dataverse/src/main/resources/db/migration/V6.9.0.1__DD2318-split-termsofuseandaccess.tmp'
mvn -f external/dataverse/pom.xml clean install -DskipTests
deploy.py -e shared_dataverse_payara_dir=payara6 --dataverse-war external/dataverse/target/dataverse dev_dataversenl

# show potential problems caused by the flyway
vagrant ssh dev_dataversenl -c 'journalctl -u payara | grep ERR | tail -10'

# show the flyway script applied the changes
vagrant ssh dev_dataversenl -c "sudo -u postgres psql dvndb -c \"select * from termsofaccess;select * from flyway_schema_history where version='6.10.1';\""
vagrant ssh dev_dataversenl -c "sudo -u postgres psql dvndb -c < /vagreant/external/dataverse/src/main/resources/db/migration/V6.9.0.1__DD2318-split-termsofuseandaccess.sql "

# show the flyway script results
grep create-tables external/dataverse/src/main/resources/META-INF/persistence.xml

# the key is only for a dataverse installation used by developers
curl -H "X-Dataverse-key:11192d67-f297-4de2-a108-c2b8bc896a7e" \
     -X PUT "https://dev.dataverse.nl/api/files/5/restrict" \
     -H "Content-Type: application/json" \
     -d '{"restrict": true, "enableAccessRequest":true, "termsOfAccess": "Reason for the restricted access"}'
