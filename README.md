# Custom Maven Archetypes

Repository for custom Maven Archetypes:

* [Java EE 8 with Microprofile 2.0.1](#java-ee-8-with-microprofile-201)
* [Java EE 8 with Microprofile 2.0.1 for JSF development](#java-ee-8-with-microprofile-201-for-jsf-development)

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
* Dockerfile for latest Payara deployment
* Build and deploy script as `.sh` and `.bat` 

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId=javaee8 \
    -DarchetypeVersion=1.0.2 \
    -DgroupId=<your project Group Id> \
    -DartifactId=<your project artifact Id>
```

Bootstrapping and deploying a new application under **Windows** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8 -DarchetypeVersion=1.0.2 -DgroupId=de.rieckpil.blog -DartifactId=javaee-8-microservice -DinteractiveMode=false
cd javaee-8-microservice
buildAndRun.bat
```

Bootstrapping and deploying a new application under **Linux/Mac** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8 -DarchetypeVersion=1.0.2 -DgroupId=de.rieckpil.blog -DartifactId=javaee-8-microservice -DinteractiveMode=false
cd javaee-8-microservice
chmod +x buildAndRun.sh
./buildAndRun.sh
```

After Payara successfully started visit `http://localhost:8080/resources/sample`

---

## Java EE 8 with Microprofile 2.0.1 for JSF development

[![Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/javaee8-jsf.svg?label=Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22javaee8-jsf%22)

With this Maven archetype you can bootstrap a simple Java EE 8 JSF application in seconds. This archetype contains the following files/dependencies:

* Java EE 8 API dependency
* Microprofile 2.0.1 dependency
* Primefaces 6.2 and all-themes dependency
* Omnifaces 3.2 dependency
* Mockito and JUnit dependencies for efficient testing
* `web.xml` for JSF development with `bootstrap` as selected Primfaces theme
* `beans.xml` with `bean-discovery-mode="all"`
* `persistence.xml` configured for JTA persistence unit
* `microprofile-config.properties` for configuration
* Simple `index.xhtml` with backing bean `SampleBean`
* Dockerfile for latest Payara deployment
* Build and deploy script as `.sh` and `.bat`

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId=javaee8-jsf \
    -DarchetypeVersion=1.0.0 \
    -DgroupId=<your project Group Id> \
    -DartifactId=<your project artifact Id>
```

Bootstrapping and deploying a new application under **Windows** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8-jsf -DarchetypeVersion=1.0.0 -DgroupId=de.rieckpil.blog -DartifactId=jsf-app -DinteractiveMode=false
cd jsf-app
buildAndRun.bat
```

Bootstrapping and deploying a new application under **Linux/Mac** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8-jsf -DarchetypeVersion=1.0.0 -DgroupId=de.rieckpil.blog -DartifactId=jsf-app -DinteractiveMode=false
cd jsf-app
chmod +x buildAndRun.sh
./buildAndRun.sh
```

After Payara successfully started visit `http://localhost:8080/`
