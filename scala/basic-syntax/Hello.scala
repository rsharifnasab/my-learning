object Hello{
  def main(args: Array[String]): Unit ={
    println("salam aziz");
   
    print("inam az in\n")

    val c = 20;
    var d : Double = 10;
    d+=1;

    println("c :"+c + ", d : "+d);
  
    println("salam".length);


    val someStr : String = "some string";
    val another = someStr.replace("some","")

    println(someStr)
    println(another)

    println(s"length os another is ${another.length}");


    var html = 
"""this
ss 
so beautiful
"""
    print(html);


    val someArr = Array(1,2,3);
    print(s" this is  ${someArr(2)}")
  }
}
