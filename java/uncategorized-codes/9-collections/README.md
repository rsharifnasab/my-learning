# session 9

+ review exception handling with exercises

+ review generic 
+ method or class that can act on different types
```java
String f(String value){
    return value;
}
Integer f(Integer value){
    return value /*+1*/;
}
Student f(Student value){
    return value;
}
```

+ same as poly-morphism! 
+ can't use specific behavior of type, because it's unknown 
+ type parameter `<V>`
+ generic method
+ why not use Object? (java 1-4)
```java
    public <V> static V f(V value){
        return value;
    }
```

+ now we use wrapper classes!

+ generic class
+ erasure, Object, cast

+ generic class

## collections 
+ we want to store objects 
+ arrays are not enough: add, remove, dynamic size
+ lists are better, same as linked list in ITP
+ get, set method
+ arrayList vs linkedList 
+ List is interface, implement it with arrayList and LinkedList
+ set, map: interface 
+ use set with iterator or `contains`
+ use map with `get(key)`
+ different implementations: hashSet, hashMap, treeSet, ..
+ iterator, iterable (interface), for-each

![](https://dzone.com/storage/temp/1821372-class-and-interface-hierarchy.png)

