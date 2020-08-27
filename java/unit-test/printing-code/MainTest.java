import java.util.stream.*;
import java.io.*;
import java.util.*;


import org.junit.*;
import static org.junit.Assert.*;

public class MainTest {
    private ByteArrayOutputStream outContent;
    private final PrintStream originalOut = System.out;

    /**
     * override the output of running program 
     * if the UUT print anything, we will save it in outContent
     * and we reset its content every test
     */
    @Before
    public void setUpStreams() {
        outContent = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outContent));
    }
    
    /**
     * after ending of each test,
     * we restore the original stdout
     * as system outputstream
     * we can do this after class, doesn't matter
     */
    @After
    public void restoreStreams() {
        System.setOut(originalOut);
    }
    
    /**
     * what was the output
     * of program while running in the current test
     */
    public String out(){
        return outContent.toString().trim();
    }

    @Test
    public void test(){
        Main.main(new String[]{});

        String correct = "correctanswer";
        assertEquals(
                out(),
                correct.trim()
            );
    }
}
