class SoccerPlayer {
    String name;
    int number;
    int age;

    static int playersInField = 11;
}

public class Soccer {
    public static void main(String[] args) {

        final SoccerPlayer ronaldo = new SoccerPlayer();
        // ok
        ronaldo.name = "ronaldo";
        ronaldo.number = 7;
        ronaldo.name = "havij";
        ronaldo.age = 30;

        ronaldo.name = "messi";
        ronaldo.number = 10;
    }
}

// camel case : https://en.wikipedia.org/wiki/Camel_case
