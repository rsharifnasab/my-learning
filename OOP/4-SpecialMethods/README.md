there are some special methods in Java that we should learn.

in python we name them `magic methods`

## Java special methods

+ there are some methods in Java that looks like normal methods but they behave different
+ these are `constructors`, `toString()`, `equals()`, `hashCode()` 
+ constructors are for initializing fields (state) of object exactly when it is instanced
+ other methods like `toString` and `equals` are in Object class which every class inherited that,  we can override them (we will learn it in inheritance lesson)



## toString()

+ all of Java classes have this  built-in method 
+ in default implementation, it prints some meaningless information
+ why it is special? it is used when we need to convert our object to an String, for example when printing the object
+ how to use it? we can override it (re define it) and return a meaningful String for your needs
+ note the exact syntax: `public String toString(){ return "sample"; }`



## equals()

+ this method should check if two objects are equals or not

+ is it `==` enough? no it isn't, in Java `==` will only compare the references are same or not.
+ in most cases we equality isn't just being same. for example `new String("salam")` and `new String("salam")` are equals but not same.
+ this method takes an Object and return a `boolean`  showing that the objects are true or no
+ the String class overrides this method and actually check the Strings character by character
+ we can override for our classes too.
+ exact syntax of equals is `public boolean equals  (Object obj)`
+ this method is somehow equivalent to identity. if this method returns true, we assume that they have same identity
+ on one for implementing this method is to decide by unique features of each instance for example National-ID



### hashCode()

+ in most cases we override this method when overriding equals 

+ it is used in some data structures, more information in collection lessons (and Data structures course)

  

## constructors 

+ most classes have fields and fields need valid values!

+ when we create a class we should set valid values (and maybe do more things)
+ constructors help us guarantee that the created instance have a valid state (ans also force our class user)
+ they also help to creating immutable objects

+ by default all classes have a  zero parameter constructor, when we called `new Student()` it is called.
+ when we add our first constructor, the default one removed.
+ we can have more that one constructor, (overloading)
+  if we have just one constructor like this: `Student(String name)` then nobody could vreate new instance like this: `new Studnet()`, the only valid way is: `new String("roozbeh")`

+ with `this(/* some parameters */)` we can call another constructor of this class
+ constructor looks like a method without return value, with exactly same name as class 