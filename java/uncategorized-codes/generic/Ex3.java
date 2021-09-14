public class Ex3 {
    public static <V, U> void printCartesian(V[] a, U[] b) {
        for (V var1 : a) {
            for (U var2 : b) {
                System.out.println(var1 + " " + var2);
            }
        }
    }

    public static <V> void uniq(V[] elems) {
        for (int i = 0; i < elems.length; i++) {
            for (int j = 0; j < elems.length; j++) {
                if (i != j && elems[i] != null && elems[i].equals(elems[j])) {
                    elems[j] = null;
                }
            }
        }
        for (int i = 0; i < elems.length; i++) {
            if (elems[i] != null) {
                System.out.println(elems[i]);
            }
        }
        V[] arr = new V[10];
    }

    public static void main(String[] args) {
        String[] s = {"ali", "taghi", "naghi"};
        Integer[] i = {1, 2, 3, 4, 1, 2, 5};
        printCartesian(s, i);
        uniq(i);
    }
}
