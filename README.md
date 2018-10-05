# Custom Maven Archetypes
Repository for custom Maven Archetypes

## Java EE 8 with Microprofile 2.0

With this Maven archetype you can bootstrap a simple Java EE 8 application in seconds. This archetype contains the following files/dependencies:

* Java EE 8 API dependency
* Microprofile 2.0.1 dependency
* Mockito and JUnit dependencies for efficient testing
* `beans.xml` with `bean-discovery-mode="all"`
* `persistence.xml` configured for JTA persistence unit
* `microprofile-config.properties` for configuration
* JAX-RS configuration class
* Sample JAX-RS REST endpoint (`/resources/sample`)
* Dockerfile for Payara 5.183 deployment
* Build and deploy script as `.sh` and `.bat` 

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId=javaee8 \
    -DarchetypeVersion=1.0.0 \
    -DgroupId=<your project Group Id> \
    -DartifactId=<your project artifact Id>
```

e.g.:

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8 -DarchetypeVersion=1.0.0 -DgroupId=de.rieckpil.blog -DartifactId=javaee-8-microservice -DinteractiveMode=false
```