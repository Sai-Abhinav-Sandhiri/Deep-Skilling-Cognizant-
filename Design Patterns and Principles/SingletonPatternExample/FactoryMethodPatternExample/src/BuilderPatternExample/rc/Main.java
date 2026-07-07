public class Main {

    public static void main(String[] args) {

        // Gaming Computer
        Computer gamingPC = new Computer.Builder()
                .setCPU("Intel Core i9")
                .setRAM(32)
                .setStorage(1000)
                .setGraphicsCard(true)
                .setWiFi(true)
                .build();

        // Office Computer
        Computer officePC = new Computer.Builder()
                .setCPU("Intel Core i5")
                .setRAM(16)
                .setStorage(512)
                .setGraphicsCard(false)
                .setWiFi(true)
                .build();

        // Basic Computer
        Computer basicPC = new Computer.Builder()
                .setCPU("AMD Ryzen 3")
                .setRAM(8)
                .setStorage(256)
                .build();

        gamingPC.showConfiguration();
        officePC.showConfiguration();
        basicPC.showConfiguration();
    }
}