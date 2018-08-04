package db;

public class PlantFactory {
    public PlantInterface getPlant(String type){
        PlantInterface res = null;
        switch (type.toLowerCase()){
            case "memory":
                res = new PlantInMemory();
                break;
            case "jpa":
                res = new PlantJPADB();
                break;
        }
       return res;
    }
}
