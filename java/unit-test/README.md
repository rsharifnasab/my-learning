# Unit test

## why this class?
+ Clean coder book -> TDD chapter 

## why unit test?
+ why manual testing? 
+ save money, lives
+ Quality of code
+ find bugs easily 
+ easy re-factor 
+ design? decoupling


## in depth
+ who? developer or QA?
+ what is code coverage? how much?
+ CI -> continues integration
+ courage to change -> legacy code = code without change 
+ test: example of how to use code 
+ where? everywhere

## TDD: test driven development
+ write tests before production code
+ good or bad?
+ cycle times : 30 seconds 
+ Red, Green, re-factor 
  1. write failing test
  2. write production test as much as necessary to pass test
+ design 
   + why not test after code 
   + decoupling 

resources:
+ [dzone](https://dzone.com/articles/top-8-benefits-of-unit-testing)
+ [clean coder book](https://blog.cleancoder.com/)


## Tools
+ JUnit
+ pyUnit 
+ CppUnit
+ mocking.. 

## Junit 
+ Test
```java 
@Test
public void someTest(){
    // this will pass
}
```

+ Assertion
```
@Test
public void assertExample(){
    assertEquals("salam", new String("salam"));
    assertSame(1, 1);
    assertNull(null);
    assertNotNull(Integer.valueOf(1));
    assertTrue(1==1);
    assertFalse(1==2);
    // many more.. arrayEquals, notSame, ..
}
```

+ fail 
```java
@Test
public void failingTest(){
    fail(); // same as assertTrue(False);

}
```

+ Before, After
```java 
@Before
public void setup(){
    // setup here
}
@After 
public void teardown(){
    // cleaing code 
}
```

+ BeforeClass, AfterClass
```java
@BeforeClass
public void setup(){
    // setup here
}
@AfterClass 
public void teardown(){
    // cleaing code 
}

```



+ test runner 
```java
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestRunner {
   public static void main(String[] args) {
      Result result = JUnitCore.runClasses(TestJunit.class);
		
      for (Failure failure : result.getFailures()) {
         System.out.println(failure.toString());
      }
		
      System.out.println(result.wasSuccessful());
   }
}
```



resource:
+ [Tutorials point](https://www.tutorialspoint.com/junit/index.htm)


