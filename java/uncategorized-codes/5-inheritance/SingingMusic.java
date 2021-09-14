public class SingingMusic extends Music {

    String singerName;

    // implecity has
    // name and len
    // and all methods

    public String getSingerName() {
        return this.singerName;
    }

    @Override
    public int getLen() {
        return 2;
    }

    public SingingMusic(String name, int len, String singerName) {
        super(len, name); // call superclass constructor

        this.singerName = singerName;
        System.out.println("sm constructor");
    }

    public static void main(String[] args) {
        SingingMusic s = new SingingMusic("mn", 12, "artist");
    }
}
