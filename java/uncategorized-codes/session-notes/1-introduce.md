# introduce to java 

+ manage complexities (procedural -> (OOP|FP) )
+ pure OOP -> multi-paradigm
+ compiled to bytecode, interpreted with JVM 
+ platform independent (because of JVM)

+ install jdk (java development kit): compiler + jvm
+ we dont install jre (just jvm)
+ we are learning java SE (java standard edition)


### compile and run first program 

```java
class Hello{ // save it to Hello.java
    public static void main(String[] args){
        System.out.println("hello");
    }
}
```

+ compile with `javac Hello.java`
+ run with `java Hello` (no `.class`)


### input, output

+ input is with scanner:
+ import it first (same is include)
+ print with `System.out.println`



### variables
+ int,char,float,double are same as C
+ initizlied with zero by default

+ String and array are different

```java
String s1 = "salam";
String s2 = s1;
String s3 = s1 + " khubi?";

int[] arr1 = new int[10]; // initialized with zero
arr[1] = 4;

int l1 = arr1.length; // this is const value
int l2 = s1.length(); // this is method 
```

### memory, reference, GC
+ we have pointers? no, they are refrences.


+ int,char are in stack as well
+ eveything we `new` is in heap 
+ no need to free, there is Garbage collector in JVM
+ references are `null` or valid (pointing to an array, String or Object)


### control flow 
+ if, while, for are same as C
+ foreach


### methods, functions?
+ here, we name them method
+ write same as C, just an `static` keyword

```java
static int multiply(int a, int b){
    return a*b;
}
```
+ they could be public, private or nothing (package access), not important for now
+ recursive calls are available.


### structs?
+ enum 

``` java
 enum A { M1, M2}
```

+ now we name them class
+ much more powerful
+ where the OOP begins 

+ in addition to fields, they can have methods.
+ something like

``` java
String s = "salam";
int l = s.length(); // this is method called on Object s

Scanner sc = new Scanner(System.in);
int n = sc.nextInt(); // method call

```


+ what is object, instance, field, method
+ method
+ static?



## homework:
+ install jdk 9+
+ work with jshell
+ compile helloworld (`Hello.java`) with javac
+ write an input/output application with Scanner, System.out.println
+ search about `nextLine()` vs`next()` in Scanner
+ design a class for Electronic device and add necessary fields.
+ write an static method that get two Electronic device and compare their prices (return int or print or anything), use this method in main

