class Light {
    /*
      fields (state)
    */
    boolean status = false;
    final int price = 10;


    /*
       methods (behavior)
    */

    public void on() {
        status = true;
        System.out.println("light is on");
    }

    public void off() {
        this.status = false; // what is "this"?
        System.out.println("light is off");
    }
}

public class C2 {
    public static void main(String[] args) {

        Light l1 = new Light();
        l1.on();
        l1.off();
    }
}
