public class Circle{

  private double area;
  private double r;
  private double p;

  public Circle(double r){
    this.r = r;
    this.area =  Math.PI * r * r;
    this.p = 2 * r * Math.PI;
  }

  public double getArea(){
    return this.area;
  }

  public double getR(){
    return this.r;
  }

  public double getP(){
    return this.p;
  }

  public static void main(String[] args) {
    Circle c1 = new Circle(1);
    System.out.println(c1.getR());
    System.out.println(c1.getArea());
    System.out.println(c1.getP());
  }
}

/*
  that could be implemented by saving 2r
  or maybe save area and p in fields, not calculating them eveytime
*/
