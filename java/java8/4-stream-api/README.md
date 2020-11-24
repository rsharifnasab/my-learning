# Stream's: most useful Java 8 feature 

we usually use `for` to iterate.

iterate on range of integers, iterate on array/list of objects.. 

we can summarize our code with streams.



streams has 2 kind of operations:

1. intermediate
 + change an stream to another stream 
 + for example: `map`, `filter`

2. terminal 
 + forEach 
 + count 
 + reduce 
 + sum 
 + findAny



further read: [this link](https://javacup.ir/java8-streamapi/)



### optional?

+ maybe we have something, maybe not :)) 

+ return value of some operations could be null, what we should do? deal with `NullPointerException`?

+ optional is an wrapper class for other Objects, for example:

  ```java
  Optional<String> op = Optional.of("salam");
  op = Optional.of(null);
  op.isEmpty();
  op.ifPresent(/* runnable */);
  op.get(); 
  op.orElse("some other value");
  ```

  further reading: [this link](https://www.baeldung.com/java-optional)


