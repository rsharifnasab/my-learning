
# java 9 modules

+ project Jigsaw: renamed as java platform module system 
+ there needs to be way to organize packages
+ set of packages 
+ part of the module that we want to be reused, can be used and the part that we don’t want to be reused, cant be reused.

+ organize packages 
   1. exported packages: used outside of the moddule 
   2. concealed packages: used inside the module  

![](https://beginnersbook.com/wp-content/uploads/2018/09/java_module_inside.png)

![](https://beginnersbook.com/wp-content/uploads/2018/09/java_module.png)

+ module-info.java 
   


## useful links 

+ [why we need modules](https://beginnersbook.com/2018/09/java-9-modules/)

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


+ dont end name with number -> not handle versioning with it
+ `ir.javacup.somemodule` should be name of folder itself 
+ no upper case in module name (as well as packages)

