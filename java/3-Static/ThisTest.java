class Player{
	String  name;
	int num;

	public void setName(String name){
		this.name = name; // current instanec
	}

	public Player(String name, int num){
		this(name); // another constructor
		this.num = num;
	}

	public Player(String name){
		this.name = name;
	}

}

public class ThisTest{
	public static void main(String[] args){

	}
}
