public class Exce7 {
    public static void main(String[] args) {
        try {
            throw new NullPointerException();
        } catch (NullPointerException | ArrayIndexOutOfBoundsException e) {
            e.printStackTrace();
        }
        System.out.println("bye");
    }
}
