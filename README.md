# Bootstrap New Maven Projects With Ease

[![Jakarta EE Archetype Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/jakartaee8.svg?label=Jakarta%20EE%20Archetype%20Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22jakartaee8%22)
[![JSF Archetype Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/javaee8-jsf.svg?label=JSF%20Archetype%20Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22javaee8-jsf%22)
[![Java EE Archetype Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/javaee8.svg?label=Java%20EE%20Archetype%20Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22javaee8%22)
[![Testing Toolkit Archetype Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/testing-toolkit.svg?label=Testing%20Toolkit%20Archetype%20Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22testing-toolkit%22)

[![Build Maven Archetypes](https://github.com/rieckpil/custom-maven-archetypes/workflows/Build%20Maven%20Archetypes/badge.svg)](https://github.com/rieckpil/custom-maven-archetypes/actions)

Repository for custom Maven Archetypes:

* [Basic Java Project with Testing Capabilities](#basic-java-project-with-testing-capabilities)
* [Jakarta EE 8 with Microprofile 3.3 and Java 11](#jakarta-ee-8-with-microprofile-33-and-java-11)
* [Java EE 8 with Microprofile 3.3 and Java 11 for JSF development](#java-ee-8-with-microprofile-33-and-java-11-for-jsf-development)
* [Java EE 8 with Microprofile 3.3 and Java 11](#java-ee-8-with-microprofile-33-and-java-11)

## Archetype Usage

Prerequisites:

* Java > 8
* Maven (either as a CLI tool or using the Maven Wrapper) > 3.6.1

Bootstrap a new Maven project using an archetype on Mac and Linux:

```shell
mvn archetype:generate \
    -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId=<archetype name> \
    -DarchetypeVersion=<latest archetype version> \
    -DgroupId=<your group id> \
    -DartifactId=<your artifact id> \
    -DinteractiveMode=false
```

Bootstrap a new Maven project using an archetype on Windows (CMD or PowerShell):

```shell
mvn archetype:generate "-DarchetypeGroupId=de.rieckpil.archetypes" "-DarchetypeArtifactId=<archetype name>" "-DarchetypeVersion=<latest archetype version>" "-DgroupId=<your group id>" "-DartifactId=<your artifact id>" "-DinteractiveMode=false"
```

Make sure to replace all `<xyz>` placeholders before running the commands on your machine.

The available archetype names are:

- `testing-toolkit`
- `jakartaee8`
- `javaee8`
- `javaee8-jsf`

You can find the latest version of each archetype as part of the badges on top of this README. The badges display the version with a preceding `v`, e.g. `v1.0.1` which you must remove.

Complete example for Mac or Windows:

```shell
mvn archetype:generate \
    -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId=testing-toolkit \
    -DarchetypeVersion=1.0.0 \
    -DgroupId=com.mycompany \
    -DartifactId=order-service \
    -DinteractiveMode=false

cd order-service
mvn package
```

## Basic Java Project with Testing Capabilities

**Archetype name**: `testing-toolkit`

With this Maven archetype you can bootstrap a simple Java 11 application with basic testing capabilities in seconds. This archetype contains the following files/dependencies:

* Java 11
* Mockito and JUnit 5 dependencies for efficient testing
* Testcontainers for integration test
* A basic JUnit Jupiter test
* Maven Wrapper
* A basic `.gitignore`

Refer to the [Maven Setup For Testing Java Applications](https://rieckpil.de/maven-setup-for-testing-java-applications/) blog post on how to get started with this project.

## Jakarta EE 8 with Microprofile 3.3 and Java 11

**Archetype name**: `jakartaee8`

With this Maven archetype you can bootstrap a simple Jakarta EE 8 application in seconds. This archetype contains the following files/dependencies:

* Jakarta EE 8 API dependency
* Microprofile 3.3 dependency
* Mockito and JUnit 5 dependencies for efficient testing
* `beans.xml` with `bean-discovery-mode="all"`
* `persistence.xml` configured for JTA persistence unit
* `microprofile-config.properties` for configuration
* Dockerfile for latest Open Liberty deployment
* Build and deploy script as `.sh` and `.bat`

Bootstrapping and deploying a new application under **Linux/Mac** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=jakartaee8 -DarchetypeVersion=1.1.0 -DgroupId=de.rieckpil.blog -DartifactId=jakartaee-8-microservice -DinteractiveMode=false
cd jakartaee-8-microservice
./buildAndRun.sh
```

After Open Liberty successfully started visit `http://localhost:9080/resources/sample`

## Java EE 8 with Microprofile 3.3 and Java 11

**Archetype name**: `javaee8`

With this Maven archetype you can bootstrap a simple Java EE 8 application in seconds. This archetype contains the following files/dependencies:

* Java EE 8 API dependency
* Microprofile 3.3 dependency
* Mockito and JUnit 5 dependencies for efficient testing
* `beans.xml` with `bean-discovery-mode="all"`
* `persistence.xml` configured for JTA persistence unit
* `microprofile-config.properties` for configuration
* Dockerfile for latest Open Liberty deployment
* Build and deploy script as `.sh` and `.bat`

Bootstrapping and deploying a new application under **Linux/Mac** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8 -DarchetypeVersion=2.1.0 -DgroupId=de.rieckpil.blog -DartifactId=javaee-8-microservice -DinteractiveMode=false
cd javaee-8-microservice
./buildAndRun.sh
```

After Open Liberty successfully started visit `http://localhost:9080/resources/sample`

## Java EE 8 with Microprofile 3.3 and Java 11 for JSF development

**Archetype name**: `javaee8-jsf`

With this Maven archetype you can bootstrap a simple Java EE 8 JSF application in seconds. This archetype contains the following files/dependencies:

* Java EE 8 API dependency
* Microprofile 3.3 dependency
* Primefaces 8.0 and all-themes dependency
* Omnifaces 3.6.1 dependency
* Mockito and JUnit 5 dependencies for efficient testing
* `web.xml` for JSF development with `bootstrap` as selected PrimeFaces theme
* `beans.xml` with `bean-discovery-mode="all"`
* `persistence.xml` configured for JTA persistence unit
* `microprofile-config.properties` for configuration
* Simple `index.xhtml` with backing bean `SampleBean`
* Dockerfile for latest Open Liberty deployment
* Build and deploy script as `.sh` and `.bat`

Bootstrapping and deploying a new application under **Linux/Mac** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8-jsf -DarchetypeVersion=2.1.0 -DgroupId=de.rieckpil.blog -DartifactId=jsf-app -DinteractiveMode=false
cd jsf-app
chmod +x buildAndRun.sh
./buildAndRun.sh
```

After Open Liberty successfully started visit `http://localhost:9080/`
