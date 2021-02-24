public class Swap {

    static void swap(String a, String b) {
        String temp = a;
        a = b;
        b = temp;
    }

    public static void main(String[] args) {
        String a = "1";
        String b = "2";
        System.out.println("a : " + a + " , b : " + b);
        swap(a, b);
        System.out.println("a : " + a + " , b : " + b);
        //nothing changes
    }
}
