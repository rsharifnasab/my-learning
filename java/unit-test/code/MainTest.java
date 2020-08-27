import java.io.*;
import java.util.*;

import org.junit.*;
import static org.junit.Assert.*;

public class MainTest {
    @Test
    public void testF(){
        assertEquals("this is f", new Main().f());
    }

    @Test
    public void testG(){
        assertEquals( 2,         Main.g());
        //          exptected     result
    }
}
