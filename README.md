# Custom Maven Archetypes
Repository for custom Maven Archetypes

## Java EE 8 with Microprofile 2.0.1
[![Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/javaee8.svg?label=Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22javaee8%22)

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

Bootstrap a new application with (active Docker daemon for the containerized deployment is required):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8 -DarchetypeVersion=1.0.0 -DgroupId=de.rieckpil.blog -DartifactId=javaee-8-microservice -DinteractiveMode=false
cd javaee-8-microservice
./buildAndRun.sh (or buildAndRun.cmd)
```

After Payara successfully started visit `http://localhost:8080/resources/sample`
