

build project: `export NODE_ENV=production && cds build/all --clean`
create hdi container: `cf create-service hana hdi-shared window_shop-db`
deploy hdbtable and hdbview objects to hdi container: `cf push -f gen/db -k 256M`
deploy node.js application exposing OData service: `cf push -f gen/srv --random-route -k 320M`
# further 