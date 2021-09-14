import java.util.Scanner;

import junit.

public class Square {
    final int zel;
    final String color;

    public Square(int zel, String color) {
        // constructor
        this.zel = zel;
        this.color = color;
    }

    public Square changeColor(String newColor) {
        Square other = new Square(this.zel, newColor);
        return other;
    }

    public static void main(String[] args) {
        Square s1 = new Square(2, "white");
        Square s2 = s1;               // 2 , white
        s1 = s1.changeColor("black"); // 2 , black

        String str1 = "salam";
        String str2 = str1.substring(0, 3);
        System.out.println(str2);
        str1.toUpperCase();               // mofid nist
        String str3 = str1.toUpperCase(); // mofid hast
    }
}
