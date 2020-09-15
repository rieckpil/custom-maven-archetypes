# Start new Java EE & Jakarta EE projects with ease

[![Jakarta EE Archetype Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/jakartaee8.svg?label=Jakarta%20EE%20Archetype%20Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22jakartaee8%22)
[![JSF Archetype Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/javaee8-jsf.svg?label=JSF%20Archetype%20Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22javaee8-jsf%22)
[![Java EE Archetype Maven Central](https://img.shields.io/maven-central/v/de.rieckpil.archetypes/javaee8.svg?label=Java%20EE%20Archetype%20Maven%20Central)](https://search.maven.org/search?q=g:%22de.rieckpil.archetypes%22%20AND%20a:%22javaee8%22)

[![Build Maven Archetypes](https://github.com/rieckpil/custom-maven-archetypes/workflows/Build%20Maven%20Archetypes/badge.svg)](https://github.com/rieckpil/custom-maven-archetypes/actions)

Repository for custom Maven Archetypes:

* [Jakarta EE 8 with Microprofile 3.3 and Java 11](#jakarta-ee-8-with-microprofile-33-and-java-11)
* [Java EE 8 with Microprofile 3.3 and Java 11 for JSF development](#java-ee-8-with-microprofile-33-and-java-11-for-jsf-development)
* [Java EE 8 with Microprofile 3.3 and Java 11](#java-ee-8-with-microprofile-33-and-java-11)

## Jakarta EE 8 with Microprofile 3.3 and Java 11

With this Maven archetype you can bootstrap a simple Jakarta EE 8 application in seconds. This archetype contains the following files/dependencies:

* Jakarta EE 8 API dependency
* Microprofile 3.3 dependency
* Mockito and JUnit 5 dependencies for efficient testing
* `beans.xml` with `bean-discovery-mode="all"`
* `persistence.xml` configured for JTA persistence unit
* `microprofile-config.properties` for configuration
* Dockerfile for latest Open Liberty deployment
* Build and deploy script as `.sh` and `.bat`

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId=jakartaee8 \
    -DarchetypeVersion=1.1.0\
    -DgroupId=<your project Group Id> \
    -DartifactId=<your project artifact Id>
```

Bootstrapping and deploying a new application under **Windows** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=jakartaee8 -DarchetypeVersion=1.1.0 -DgroupId=de.rieckpil.blog -DartifactId=jakartaee-8-microservice -DinteractiveMode=false
cd jakartaee-8-microservice
buildAndRun.bat
```

PS: If you are using PowerShell make sure to [put quotes around the parameters](https://stackoverflow.com/questions/20165674/maven-3-maven-in-5-minutes-mvn-archetypegenerate-command-not-working).

Bootstrapping and deploying a new application under **Linux/Mac** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=jakartaee8 -DarchetypeVersion=1.1.0 -DgroupId=de.rieckpil.blog -DartifactId=jakartaee-8-microservice -DinteractiveMode=false
cd jakartaee-8-microservice
./buildAndRun.sh
```

After Open Liberty successfully started visit `http://localhost:9080/resources/sample`


## Java EE 8 with Microprofile 3.3 and Java 11

With this Maven archetype you can bootstrap a simple Java EE 8 application in seconds. This archetype contains the following files/dependencies:

* Java EE 8 API dependency
* Microprofile 3.3 dependency
* Mockito and JUnit 5 dependencies for efficient testing
* `beans.xml` with `bean-discovery-mode="all"`
* `persistence.xml` configured for JTA persistence unit
* `microprofile-config.properties` for configuration
* Dockerfile for latest Open Liberty deployment
* Build and deploy script as `.sh` and `.bat`

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId=javaee8 \
    -DarchetypeVersion=2.1.0\
    -DgroupId=<your project Group Id> \
    -DartifactId=<your project artifact Id>
```

Bootstrapping and deploying a new application under **Windows** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8 -DarchetypeVersion=2.1.0 -DgroupId=de.rieckpil.blog -DartifactId=javaee-8-microservice -DinteractiveMode=false
cd javaee-8-microservice
buildAndRun.bat
```

PS: If you are using PowerShell make sure to [put quotes around the parameters](https://stackoverflow.com/questions/20165674/maven-3-maven-in-5-minutes-mvn-archetypegenerate-command-not-working).

Bootstrapping and deploying a new application under **Linux/Mac** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8 -DarchetypeVersion=2.1.0 -DgroupId=de.rieckpil.blog -DartifactId=javaee-8-microservice -DinteractiveMode=false
cd javaee-8-microservice
./buildAndRun.sh
```

After Open Liberty successfully started visit `http://localhost:9080/resources/sample`

## Java EE 8 with Microprofile 3.3 and Java 11 for JSF development

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

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId=javaee8-jsf \
    -DarchetypeVersion=2.1.0 \
    -DgroupId=<your project Group Id> \
    -DartifactId=<your project artifact Id>
```

Bootstrapping and deploying a new application under **Windows** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8-jsf -DarchetypeVersion=2.1.0 -DgroupId=de.rieckpil.blog -DartifactId=jsf-app -DinteractiveMode=false
cd jsf-app
buildAndRun.bat
```

PS: If you are using PowerShell make sure to [put quotes around the parameters](https://stackoverflow.com/questions/20165674/maven-3-maven-in-5-minutes-mvn-archetypegenerate-command-not-working).

Bootstrapping and deploying a new application under **Linux/Mac** (Docker daemon needs to run):

```
mvn archetype:generate -DarchetypeGroupId=de.rieckpil.archetypes -DarchetypeArtifactId=javaee8-jsf -DarchetypeVersion=2.1.0 -DgroupId=de.rieckpil.blog -DartifactId=jsf-app -DinteractiveMode=false
cd jsf-app
chmod +x buildAndRun.sh
./buildAndRun.sh
```

After Open Liberty successfully started visit `http://localhost:9080/`
