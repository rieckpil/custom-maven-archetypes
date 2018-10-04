# Custom Maven Archetypes
Repository for custom Maven Archetypes

## Java EE 8 with Microprofile 2.0

This archetype contains the following files/dependencies:

* Java EE 8 API Dependency
* Microprofile 2.0 Dependency
* `beans.xml` with `bean-discovery-mode="all"`
* `persistence.xml` configured for JTA persistence unit
* `microprofile-config.properties` for configuration
* JAX-RS configuration class
* Sample JAX-RS REST endpoint (`/resources/sample`)
* Dockerfile for Payara 5.183 deployment

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil \
    -DarchetypeArtifactId=javaee-8-archetype \
    -DarchetypeVersion=1.0.0 \
    -DgroupId=<your project Group Id> \
    -DartifactId=<your project artifact Id>
```

e.g.:

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil -DarchetypeArtifactId=javaee-8-archetype -DarchetypeVersion=1.0.0 -DgroupId=de.rieckpil.blog -DartifactId=javaee-8-microservice
```