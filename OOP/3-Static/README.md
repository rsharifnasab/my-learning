in this page we want to know more about `static` ans `this` keyword

## static keyword

In Java, a *static* member is a member of a class that isn’t  associated with an instance of a class. Instead, the member belongs to  the class itself. As a result, you can access the static member without  first creating a class instance.

The two types of static members are static fields and static methods:

+ **static field**: A field that’s declared with the static keyword, like this:

  ```
  private static int ballCount;
  ```

  The position of the static keyword is interchangeable with the positions of the *visibility keywords* (private and public, as well as protected). As a result, the following statement works, too:

  ```
  static private int ballCount;
  ```

  As a convention, most programmers tend to put the visibility keyword first.

  The value of a static field is the same across all instances of the class. In other words, if a class has a static field named CompanyName, all objects created from the class will have the same value for CompanyName. 

  Static fields are created and initialized when the class is first loaded. That happens when a static member of the class  is referred to or when an instance of the class is created, whichever  comes first.

  

+ **Static method:** A method declared with the static keyword. Like static fields, static methods are associated with the  class itself, not with any particular object created from the class. As a result, you don’t have to create an object from a class before you can  use static methods defined by the class.

  The best-known static method is main, which is called by the Java runtime to start an application. The main method must be static, which means that applications run in a static context by default.

  One of the basic rules of working with static methods is that you can’t access a nonstatic method or field from a static method because the static method doesn’t have an instance of the class to use to reference instance methods or fields. 

source: [dummies.com](https://www.dummies.com/programming/java/what-is-the-static-keyword-in-java/)

## this keyword

here can be a lot of usage of **java this keyword**. In java, this is a **reference variable** that refers to the current object.

![java this keyword](https://static.javatpoint.com/images/thisr.jpg)



## Usage of Java this keyword

Here is given the 2 important usage of `this` keyword.

1. this can be used to refer current class instance variable.

2. this() can be used to invoke current class constructor.

   there are 4 more items that can be found in [my source](https://www.javatpoint.com/this-keyword)

   

------------------

as we said, static methods can access static fields and they are class base, not instance base. and `this` is pointing to current "instance", so we can't use this keyword in static methods.