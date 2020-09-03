# maven 
1. pip for python
2. ant, gradle for java

## what is build?

+ just compile? 
+ what about linking? dependencies? resources?
+ ready to install packages (installers)
+ documentation from javadoc
+ automated unit tests
+ reports (warnings + errors)
+ deploy (on web server)

[source](https://stackoverflow.com/questions/1622506/programming-definitions-what-exactly-is-building)

![](https://www.guru99.com/images/1/041318_1113_MavenTutori2.png)

## what is dependency

+ use another libraries
+ junit jar file
+ apache commons (IO, numbers, collections, command line argument parser, crypto, image, StringUtils)

[read more](https://www.baeldung.com/java-commons-lang-3)

+ google guava 

  [read more](http://zetcode.com/articles/guava/)

  [collections examples](https://github.com/tfnico/guava-examples/blob/master/src/main/java/org/li/examples/guava/GuavaCollections2.java)

  

## maven Project Object Model 
A comprehensive model for projects, which is reusable, maintainable, and easier to comprehend.

Plugins or tools that interact with this declarative model.



## maven phases (goals)

- *validate:* check if all information necessary for the build is available
- *compile:* compile the source code
- *test-compile:* compile the test source code
- *test:* run unit tests
- *package:* package compiled source code into the distributable format (jar, war, …)
- *integration-test:* process and deploy the package if needed to run integration tests
- *install:* install the package to a local repository
- *deploy:* copy the package to the remote repository

[source](https://www.baeldung.com/maven-goals-phases)

![](https://i.stack.imgur.com/ciktU.png)



## plug-ins

+ not dependencies
+ do something in different phases
+ example: maven jar plug-in

#### Putting life-cycle phases plug‐ins and goals together
○ A life-cycle is a series of phases
○ A phase is made of goals
○ Goals are provided by plug ins



### POM file 

https://www.javatpoint.com/maven-pom-xml



## create new maven project 

```bash
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

mvn package 

java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App
```







## resources

+ [guru99](https://www.guru99.com/maven-tutorial.html)
+ [tutorials point](https://www.tutorialspoint.com/maven/maven_overview.htm)
+ [baeldung](https://www.baeldung.com/maven)
+ [maven in 5 minutes](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html)
+ [slides source](https://www.slideshare.net/TanwaniRahul/apache-maven-50679037?from_action=save)
+ [maven by examples]([https://www.devopsschool.com/tutorial/maven/slides/pdf/maven%20by%20example.pdf](https://www.devopsschool.com/tutorial/maven/slides/pdf/maven by example.pdf))



