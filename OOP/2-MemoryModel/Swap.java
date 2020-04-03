public class Swap{

  static void swap(Integer a, Integer b){
    Integer temp = a;
    a = b;
    b = temp;
  }

  public static void main(String[] args) {
    Integer a = 1, b = 2;
    System.out.println("a : " + a + " , b : " + b);
    swap(a,b);
    System.out.println("a : " + a + " , b : " + b);
    //nothing changes
  }
}
