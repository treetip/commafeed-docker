# Commafeed docker

Simple docker image for [Commafeed](https://github.com/Athou/commafeed).

## Parameters

Pass in configuration parameters via `JAVA_OPTS` using dropwizard convention
of `-Ddw.actual.property=value` like:

    -Ddw.database.driverClass=org.postgresql.Driver
    -Ddw.database.url=jdbc:postgresql://mypostgres:5432/commafeed
    -Ddw.database.user=commafeed
    -Ddw.database.password=commafeed
    -Ddw.app.publicUrl=http://localhost:8082/
