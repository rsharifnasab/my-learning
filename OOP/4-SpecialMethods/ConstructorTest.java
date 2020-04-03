class Student{ // class with only one constructor
	int age;
	String name;

	public Student(String name, int age){ // the only constructor
		this.name = name;
		this.age = age;
	}

}

class Player{ // class with overloaded constructor

	int number;
	String team;
	String name;

	public Player(String name){ // first constructor
		this.name = name;
	}

	public Player(String name,String team, int number){ // ssecond constructor
		this(name); // set the name
		this.team = team;
		this.number = number;
	}


}

public class ConstructorTest{

		public static void main(String[] args){
			Student s = new Student("roozbeh",20);
			Player p1 = new Player("sample player"); // only construct name
			Player p2 = new Player("good player", "good team", 1); // construct all fields
		}

}
