public class Music {

    int len;
    String name;

    public Music(int len, String name) {
        this.len = len;
        this.name = name;
        System.out.println("music constructor");
    }

    public int getLen() {
        return len;
    }

    public String getName() {
        return name;
    }
}
