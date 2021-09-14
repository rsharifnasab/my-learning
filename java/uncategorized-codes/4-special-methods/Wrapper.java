import java.util.Scanner;

public class Wrapper {
    public static void main(String[] args) {
        Integer i = Integer.valueOf(2); // new Integer(2);
        Integer j = i;                  // [2]

        // i = new Integer(2); // [3]
        i = Integer.valueOf(2);
        System.out.println("j :" + j);
        System.out.println("i :" + i);

        Double d = null;
        Float f = null;
        Character c = null; // char
        Long l = null;

        Integer z1 = 200; // autobox
        Integer z2 = 200;
        if (z1.equals(z2)) {
            System.out.println(" 2 == 2");
        } else
            System.out.println("2 != 2");
    }

    int[] arr = new int[10];
    // Integer[] arr2 = arr; // no autobox for array
    Long l = 2L;
}
