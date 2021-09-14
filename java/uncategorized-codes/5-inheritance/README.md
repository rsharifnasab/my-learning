# inheritance 

### review 
+ review packages 
```bash 
javac   -d out    p1/A.java p1/p2/B.java
java   -cp "out"  p1.p2.B 
```


+ review isA 
+ review `extends` keyword

+ review `extends Object`
+ review super-class, sub-class
+ review override

``` java
@Override
public String toString(){
   return "";
}
```

+ example: Music
   + Music superclass (no singer)
   + SingingMusic sub-class 


### extends conclusion
+ constructor ( `super` )
+ protected (private, public, package access)

``` java
class A{
   protected int a = 2;
}

class B extends A{
   a++;
}
```


+ final class 

``` java
final class String {

}
```

+ use isA vs hasA (Scanner, wrapper class)

``` java
class MyScanner{
   Scanner inner = new java.util.Scanner(System.in);
   
   public Circle nextCircle(){
    double d1 = inner.nextDouble();
    double d2 = inner.nextDouble();
    return new Circle(d1,d2);
   }
   
   public String next(){
    return inner.nextLine();
    }

}

```

+ multiple inheritance

``` java
class A extends B/*  ,C  */{}
```

### abstract class 
+ dont define all methods 
+ maybe define all methods 
+ could not be instanciated 

+ example: getArea of shape 
+ new Shape() 

``` java
public abstract class Shape{
   abstract int getArea(); 
}
public class Circle extends Shape{
   @Override
   int getArea(){
      return 1;
   }
}



```

+ anonymous inner class 


### interface 
+ seperate implements from method 
+ define some methods and protocols
+ drawable -> have draw method 

+ interface vs abstract class 
+ multiple inheritance of behaviour


``` java
class A extends B implements C,D{}
// A is B 
// A is C 
// A is D 


class Z extends A{}
// z is A 
// Z is B 
// z is C 
// z is D
```



### polymorphism 
+ example: toString 

+ SuperClass sc = new SubClass();
+ sc.superMethod1()
+ // sc.subMethod1()



+ git!
+ maven 
