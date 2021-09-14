interface Nameable {
    String getName();
}

interface Ageable {
    int getAge();
}

interface Showable {
    void show(); // implicit public

    int f = 2;   // implicit public static final
}

// player is a showable
class Player implements Showable {
    public void show() {
        System.out.println("in player show");
    }
}

/*
 * A isA MyInteface
 * A isA MyInterface2
 */
class A implements Ageable, Nameable {
    public String getName() {
        return "name";
    }

    public int getAge() {
        return 2;
    }
}
