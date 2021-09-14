+ review
    + solve money program
    + talk about exception: NoSuchElementException

+ initialize
    1. inline
    2. constructor
        + multi constructor
        + constructor chain
        + constructor with inline

    3. initialization block (and static)
        + block vs inline
        + before or after constructor
        + static init block
        + static constructor?

+ encapsulation
    1. private
    2. public
    3. package access
    4. getter
    5. setter

## homework

1. read about java toString, equals method
    + [about toString](https://www.javatpoint.com/understanding-toString()-method)

    + [about equals](https://www.geeksforgeeks.org/overriding-equals-method-in-java/)

2. write a class to save information about Circle
    + should not change after construct

    + set private and public methods and fields wisely

    + search about how to use `pi` in java
    + add this methods: getArea, getRadius, getDiameter

    + implement at least one constructor: by r
    + can you add more constructors? by diameter?

    + internal implement depends on you, save r or area or ...

    + override toString

    + read about compare double or abs in java
    + override equals
        + this method argument could be another circle
          (or Object)
        + dont mind if you copied some code
        + you should compare doubles


+ this code should compile:

```java
    Circle c=new Circle(0.3); // r

        double d=c.getDiameter(); // 0.6
        double r=c.getRadius();   // 0.3
        double s=c.getArea();     // pi*0.3*0.3

        System.out.println(c); // print good info
        String str=c.toString();

        Circle other=new Circle(0.1+0.2); // new circle with almost 0.3
        if(c.equals(other)){
        System.out.println("they are equals"); // should print this
        }else{
        System.out.println("not equals");
        }
```

extra: read about has-A (composition) vs is-A (inheritance)

+ [good link1](https://www.w3resource.com/java-tutorial/inheritance-composition-relationship.php)
+ [good link 2](https://www.c-sharpcorner.com/UploadFile/3614a6/is-a-and-has-a-relationship-in-java/)

