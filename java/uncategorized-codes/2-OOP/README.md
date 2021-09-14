# session2

+ solve 
    1. next and nextLine and talk about the problem
    2. compare two electronic device 
+ talk about:
    1. indent 
    2. persian name for variable 
    3. naming convention

+ reivew:
   + String, array, foreach 
   + struct -> class
   + final (change content? change id?)

+ multiple classes in file 
+ public class in file 
+ main in non-public class

+ has A
   1. engine and vehicle
   2. button in electrinic device

+ static, non-static
   1. class related, Object related
   2. static: one in whole program, non-static: one per instance
   3. exmaple: static or non-static login 


+ initialize
   1. inline
   2. constructor 
   3. initialization block (and static)

+ more about memory model
   1. swap, modify object in a method 

+ private, public, getter, setter (encapsulation)


+ equals
+ toString

+ extends (is A)



## homework 
+ create a class for money
   1. save an integer for amount of money (rials)
   2. methods for getAsDollar, getAsRial
   3. static field: DollarPrice
   4. constructor: set rials
   5. static method: set dollar price
   6. this code should compile and work well
   ```java
   Money.setDollarPrice(4_200_0); //static 

   Money m = new Money(1500); // 1500 rials!
   double dD = m.getAsDollar(); // returns 1500 / 4 200 0
   int rials = m.getAsRial(); // return 1500  
   
   Money.setDollarPrice(23_000_0);
   double dB = m.getAsDollar(); // return 1500 / 23 000 0
   
   ```
