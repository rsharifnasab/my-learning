public class Count {
    // faghat yebar
    static int t = 0;

    // harbar
    {
        t++;
    }

    Count f() {
        System.out.println("this is f");
        return this;
    }

    public static void main(String[] args) {
        Count c = new Count();
        new Count().f().f().f();
        new Count();
        new Count();
        System.out.println(Count.t);
    }
}
