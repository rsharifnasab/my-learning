## more about exceptions

0. exception: we can't handle error just in place
1. throwable types

```
              ---> Throwable <--- 
              |    (checked)     |
              |                  |
              |                  |
      ---> Exception           Error
      |    (checked)        (unchecked)
      |
RuntimeException
  (unchecked)
```



2. checked and unchecked exceptions
3. try, catch and finally
4. custom exceptions
-----------------

+ do not return `null` in catch block

```java
catch (NoSuchMethodException e) {
   return null;
}
```

+ specific checked exceptions
```java
//incorrect way
public void foo() throws Exception { 
}

// correct way
public void foo() 
        throws SpecificException1, SpecificException2 {
}
```

and for catch:


+ never catch throwable (all errors..)

+ rethrow: wrap for not losing stack trace 
```java
// incorrect
catch (NoSuchMethodException e) {
   throw new MyServiceException("Some information: " + e.getMessage()); 
}

//correct way (wrap)
catch (IOException e) { // checked
   throw new MyServiceException("Some information: " , e); // unchecked
}
```

+ either log or re throw, never do both 
```java
//incorrect way
try{
    // something
    
}
catch (NoSuchMethodException e) {
   LOGGER.error("Some information", e); // error e khub
   throw e;
}
```

+ never throw in finally block 

+ just catch specific exceptions that you can handle here 

```java
catch (NoSuchMethodException e) {
   throw e; //Avoid this as it doesn't help anything
}

```


+ use finally instead of catch, if you are not handling
```java
try {
  someMethod(); // momkene expception bede
    // ma ham nemutinum handle konim
} finally {
  cleanUp();    //do cleanup here
}

```


+ throw early catch late 

+ remember to cleanup 

+ never use exceptions for flow control (same as goto!)

+ validate user input soon 


+ catch all kind of exceptions and rethrow a business exception
```java
public void f() {
    try {
        // some code 
    } catch (Type1 | Type2 | Type3 ex) {
        throw new WrappedException(ex);
    }
}

```



+ try with resources: auto closable

```java
public int getPlayerScore(String playerFile) {
    try (
        Scanner contents = new Scanner(new File(playerFile))
    ) {
      return Integer.parseInt(contents.nextLine());
    } catch (FileNotFoundException e ) {
      logger.warn("File not found, resetting score.");
      return 0;
    }
}
```



+ do not save an exception instance and throw it every time

+ do not write business logic in exception class

+ do not ignore exception, even if you are sure it will never happen

+ do not return in finally block

  ```java
  public int getPlayerScore(String playerFile) {
      int score = 0;
      try {
          throw new IOException();
      } finally {
          return score; // <== the IOException is dropped
      }
  }
  ```

  + dont use as goto

  ```java
  public void doSomething() {
      try {
          // bunch of code
          throw new MyException();
          // second bunch of code
      } catch (MyException e) {
          // third bunch of code
      }       
  }
  ```

  

+ union catch blocks 

  ```java
  public void parseFile(String filePath) {
      try {
          // some code 
      } catch (IOExcetption | NumberFormatException ex) {
          // handle
      } 
  }
  ```

  

+ catch the most specific exception first 

  ```java
  public void catchMostSpecificExceptionFirst() {
      try {
          doSomething("A message");
      } catch (NumberFormatException e) {
          log.error(e);
      } catch (IllegalArgumentException e) {
          log.error(e)
      }
  }
  ```

  