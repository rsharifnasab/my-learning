
public class A {
    static void f() {
        try {
            throw new Exception("1");
        } catch (Exception e) {
            throw new RuntimeException("2", e);
        }
    }
    public static void main(String[] args) throws Exception {
        try {
            f();


        } catch (Exception e) {
            e.printStackTrace();
            e.getCause().printStackTrace();
        }


    }

}
