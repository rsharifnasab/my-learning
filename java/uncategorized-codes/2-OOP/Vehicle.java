public class Vehicle {
    public static void main(String[] args) {
        Savari s1 = new Savari();
        s1.tires[0] = new Tire();
        s1.tires[1] = new Tire();
        s1.tires[2] = new Tire();
        s1.tires[3] = new Tire();

        s1.tires[0].kmKarkard++;

        Tire t = new Tire();
        t.setFields(1.2, true, 10);
        t.kmBro();
        System.out.println(t.kmKarkard);
        System.out.println(t.karkard());
        System.out.println(t.tString());
    }
}

class Tire {
    int kmKarkard = 0;
    double arz;
    boolean ajDar;

    void setFields(double arz, boolean ajDar, int karkard) {
        this.arz = arz;
        this.ajDar = ajDar;
        this.kmKarkard = kmKarkard;
    }

    int karkard() {
        return kmKarkard;
    }

    void kmBro() {
        this.kmKarkard++;
    }

    String tString() {
        return "tire e shoma:" + arz + " " + ajDar + " " + kmKarkard;
    }
}

class Savari {
    Tire[] tires = new Tire[4];
}

class Trailer {
    Tire[] tires = new Tire[18];
}
