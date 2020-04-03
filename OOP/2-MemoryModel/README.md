# memory model of Java 

as you know, computer memory have 2 parts: **stack** and **heap**

### stack 

+ default place of saving variables in c 

+ faster than heap 

+ much smaller than heap (about 4-8 MB)

+ information of current running function and which function called this (and where to return)

+ automatically cleared after the function ended

  

### heap

+ slower than stack 
+ have more space ( 4 GB<  based on your computer system)
+ doesn't cleared automatically



### recall: pointers

+ don't worry, Java doesn't support pointers
+ pointers are variables that save an address in memory 
+ pointer maybe `valid`, `null`, `dangling` or `wild`
+ memory allocation and deallocation (free) in C/C++ is hard



## what about Java?

+ Java don't have pointers

+ references are replaces pointers

+ there isn't much difference about the way they works

+ it help to avoid dangling and wild pointers

+ basically references are pointers to Objects in heap

+ references could be on stack or heap

+ in Deceleration: we declare references:

  ```java
  Integer i;
  Student s;
  ```

+ when we use `new` a new memory in heap allocated and address of that memory returned

+ we can save address of an object in save type reference for example we keep address of `new Student()` in `Student s` (will be more described in polymorphism)

+ references in declaration, points to `null` (so we don't have wild pointers)

+ there is no `free()` option in Java, everything is done by **Garbage Collector** (so we don't have Dangling Pointers too)



### Do we have `call by pointer` or `call by reference` or `call by value`?

+ in C language, we have call by value and call by pointer, call by pointer efficiently call by address of variable, the callee could change  content of that memory (but not able to change the address)
+ in C++ added `call by reference`which is somehow same as call by pointer with less effort.

+ in Java we have `call by value of reference`, it means we can pass reference of an Object by value. the callee method can change properties of Object but cannot change Object totally. (the identity is kept but state can change) read [this article](http://www.javadude.com/articles/passbyvalue.htm)
+ this mean we can't have a normal swap method in Java. ([here we have a dirty idea](https://stackoverflow.com/questions/3624525/how-to-write-a-basic-swap-function-in-java))
+ consider the example in `Swap.java` and `Modify.java`





## and arrays?

+ syntax of Java arrays is found on [internet!](https://www.w3schools.com/java/java_arrays.asp)

+ an array is an Object too, it should be instanced.

+ when we write: `String[] arr` we only have an reference

+ after that we initialize like `arr = new String [10]`, now we have **array of nulls**

+ although we initialized the array but its references doesn't point to a valid String (in our example)

+ if we want to use any element of array, we should initialize that separately. for example 

  ```java
  arr[0] = new String("this is initialization")
  ```

  

  