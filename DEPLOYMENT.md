# How to deploy a new version

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

3. Deploy the projects with

```bash
export GPG_TTY=$(tty)
./mvnw deploy
```
