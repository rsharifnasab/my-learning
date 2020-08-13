class Student{ // class with default equals
	int age;
	String name;
}

class Player{ // class with overrided equals
	int number;
	String team;
	String name;

	public boolean equals(Object another){
		if (another instanceof Player){
			Player anotherPlayer = (Player) another;
			return this.number == anotherPlayer.number
				&& this.team.equals(anotherPlayer.team)
				&& this.name.equals(anotherPlayer.name);
		}
		else return false; // not same class
	}

}

public class EqualsTest{
		public static void main(String[] args){
			Student s1 = new Student();
			s1.age = 10;
			s1.name= "alborz";

			Student s2 = new Student();
			s2.age = 10;
			s2.name= "alborz";

			if (s1.equals(s2)){
				System.out.println("they are equal");
			}	else {
				System.out.println("they are not equal");
			}

			Player p1 = new Player();
			p1.number = 10;
			p1.team = "sample team";
			p1.name = "some player";

			Player p2 = new Player();
			p2.number = 10;
			p2.team = "sample team";
			p2.name = "some player";

			if (p1.equals(p2)){
				System.out.println("they are equal");
			}	else {
				System.out.println("they are not equal");
			}

		}


}
