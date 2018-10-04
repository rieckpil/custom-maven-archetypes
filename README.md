# Custom Maven Archetypes
Repository for custom Maven Archetypes

## Java EE 8 with Microprofile 2.0

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