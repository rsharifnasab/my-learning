class MyException1 extends Exception {
    static final long serialVersionUID = 12;
} // checked

class MyException2 extends RuntimeException {
} // unchecked

public class Exce6 {
    public static void main(String[] args) throws MyException1 {
        if (true)
            throw new MyException2();
        else
            throw new MyException1();
        // throw new MyException3("haminjuri", 1);
    }
}

class MyException3 extends RuntimeException { // checked
    int error_no;

    public MyException3(String message, int error_no) {
        super(message);
        this.error_no = error_no;
    }
}
