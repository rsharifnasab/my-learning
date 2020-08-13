
# java 9 modules

## useful links 
+ [very berief but ok](https://www.javatpoint.com/java-9-module-system)


+ [in depth, not practical explain (second parth might be useful](https://www.baeldung.com/java-9-modularity)

+ [practival full explain](http://tutorials.jenkov.com/java/modules.html)



### compile with: 
```bash 
javac -d out --module-source-path src/main/java/ --module ir.javacup.somemodule

```


### run with 
```bash
java --module-path out --module ir.javacup.somemodule/ir.javacup.somepackage.SomeClass
```
