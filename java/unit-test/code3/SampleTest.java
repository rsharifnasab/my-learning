import java.util.*;

import org.junit.*;
import static org.junit.Assert.*;

public class SampleTest {
    @Test
    public void test() {
        assertTrue(1 == 1);
    }

    @Test
    public void addTest() {
        int ans = Main.add(1, 2);
        assertEquals(3, ans);
    }

    static void assertEqualsMe(Object o1, Object o2) {
        if (!o1.equals(o2)) {
            fail();
        }
    }

    static void myFail(){
        throw new Error();
    }

    @Test(expected = RuntimeException.class)
    public void divSpecialTest() {
        Main.div(5, 0);
    }

    @Test
    public void strTest() {
        assertEquals("SALAM",          // expected
                     "salam".toUpperCase()); // actual
    }

}
