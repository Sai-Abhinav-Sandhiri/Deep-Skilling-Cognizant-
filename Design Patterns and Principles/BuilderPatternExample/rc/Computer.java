public class Computer {

    
    private String CPU;
    private int RAM;
    private int Storage;
    private boolean GraphicsCard;
    private boolean WiFi;

    
    private Computer(Builder builder) {
        this.CPU = builder.CPU;
        this.RAM = builder.RAM;
        this.Storage = builder.Storage;
        this.GraphicsCard = builder.GraphicsCard;
        this.WiFi = builder.WiFi;
    }

    
    public void showConfiguration() {
        System.out.println("Computer Configuration");
        System.out.println("----------------------");
        System.out.println("CPU          : " + CPU);
        System.out.println("RAM          : " + RAM + " GB");
        System.out.println("Storage      : " + Storage + " GB");
        System.out.println("Graphics Card: " + GraphicsCard);
        System.out.println("WiFi         : " + WiFi);
        System.out.println();
    }

    
    public static class Builder {

        private String CPU;
        private int RAM;
        private int Storage;
        private boolean GraphicsCard;
        private boolean WiFi;

        public Builder setCPU(String CPU) {
            this.CPU = CPU;
            return this;
        }

        public Builder setRAM(int RAM) {
            this.RAM = RAM;
            return this;
        }

        public Builder setStorage(int Storage) {
            this.Storage = Storage;
            return this;
        }

        public Builder setGraphicsCard(boolean GraphicsCard) {
            this.GraphicsCard = GraphicsCard;
            return this;
        }

        public Builder setWiFi(boolean WiFi) {
            this.WiFi = WiFi;
            return this;
        }

        public Computer build() {
            return new Computer(this);
        }
    }
}