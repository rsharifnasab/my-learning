class Cpu {
    public void start() {
        System.out.println("cpu is starting");
    }
}

public class ED {
    private Cpu cpu = new Cpu();
    int z; // package access(friendly)

    public void start() {
        System.out.println("power is staring");
        cpu.start();
    }

    public void setCpu(Cpu other) {
        this.cpu = other;
    }

    public Cpu getCpu() {
        return this.cpu;
    }

    public static void main(String[] args) {
        ED e = new ED();
        e.start();
    }
}
