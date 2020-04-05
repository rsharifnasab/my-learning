# Encapsulation

as we said in introduction, OOP have 4 major principles

the first principle is **encapsulation**.

Encapsulation is the mechanism of hiding of data implementation by restricting access to public methods. Instance variables are kept private and accessors  methods are made public to achieve this.

For example, we are hiding the `name` and `dob` attributes of person class in the below code snippet.

Encapsulation — private instance variable and public accessors.

```java

public class Employee {
    private String name;
    private Date dob;  
    public String getName() {
        return name;
    }
    public void setName(String name) {
        if(name.length() > 10) return; // some checking
        this.name = name;
    }
    public Date getDob() {
        return dob;
    }
    public void setDob(Date dob) {
        this.dob = dob;
    }
} // source: https://medium.com/@cancerian0684/what-are-four-basic-principles-of-object-oriented-programming-645af8b43727
```

+ this encapsulation isn't a limitation for our class's user
+ for example we we restrict access to the name, directly, it isn't a limitation, it is just decreasing chance of bad usage.
+ all of our class features are public and available via public methods, we just hide and private implementation details that is not necessary for user
+ for example when you buy a mouse, you don't need (and have) to open it and change wiring,  you just need to use it with available button (interface)
+ sometime accessors are not as simple as this example, they might check input and raise exception or may decide or log something.

+ further reading: [records in java14](https://javacup.ir/java-14-new-features/)
