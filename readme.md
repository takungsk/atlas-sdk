## Atlassian SDK

incldue
- openjdk8
- maven
- atlassian SDK

### atlas- comand

```
docker run -it --rm --name my-atlassdk atlas-sdk atlas-version
```

### mvn
```
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven atlas-sdk mvn clean install
```

### build plugin 
```
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -v "$HOME/.m2":/root/.m2 -w /usr/src/mymaven atlas-sdk mvn clean
```
