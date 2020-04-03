class Student{ // class with default toString
	int age;
	String name;
}

class Player{ // class with overrided toString
	int number;
	String team;
	String name;

	public String toString(){
		return name + " : " + team + "("+number+")";
	}
}

public class ToStringTest{
		public static void main(String[] args){
			Student s = new Student();
			System.out.println(s); // it will call toStirng

			Player p = new Player();
			p.number = 10;
			p.team = "sample team";
			p.name = "some player";
			System.out.println(p); // it will call toString

		}


}
