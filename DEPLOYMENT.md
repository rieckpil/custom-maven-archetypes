# How to deploy a new version

**NOTE**: Preferably make changes on a branch and deploy from there.

1. Adjust `settings.xml`

```xml
<settings
  xmlns="http://maven.apache.org/SETTINGS/1.1.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.1.0 http://maven.apache.org/xsd/settings-1.1.0.xsd">
  <servers>
    <server>
      <id>ossrh</id>
      <username>${env.OSSRH_USERNAME}</username>
      <password>${env.OSSRH_PASSWORD}</password>
    </server>
  </servers>
</settings>
```

2. Ensure GPG Key is uploaded to a Keyserver

```
gpg --gen-key
gpg --send-keys
```

3. Deploy the archetypes with

```bash
export GPG_TTY=$(tty)
```

- Java Enterprise archetypes: `./mvnw -B release:prepare release:perform`
- Java Testing archetype: `cd testing-toolkit-archetype && ../mvnw -B release:prepare release:perform`

## Troubleshooting

Recover from a failed deployment to Nexus:

- remove a tag from a failed release:

```bash
git tag -d <tag_name>
git push --delete origin <tag_name>
```

- remove any `.releaseBackup`/`release.properties` files
- undo version change in `pom.xml`
- undo `[maven-release-plugin]` commits
