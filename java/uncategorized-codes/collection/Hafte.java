import java.util.HashMap;
import java.util.Map;

class Hafte {
    public static int f(String inp) {
        switch (inp) {
            case "shanbe":
                return 1;
            case "yek-shanbe":
                return 2;

            //
        }
        return -1;
    }

    public static void main(String[] args) {
        String inp = new java.util.Scanner(System.in).next();
        System.out.println(f(inp));

        Map<String, Integer> hafte = new HashMap<>();
        hafte.put("shanbe", 1);
        hafte.put("yek-shanbe", 2);
        hafte.put("do-shanbe", 3);
        hafte.put("se-shanbe", 4);
        hafte.put("char-shanbe", 5);

        System.out.println(hafte.get(inp));
    }
}
