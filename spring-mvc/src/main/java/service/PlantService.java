package service;

import db.PlantFactory;
import db.PlantInterface;
import model.Plant;

import java.util.List;

public class PlantService {
    private PlantInterface planten;
    public PlantService(String type){
        PlantFactory plantfactory =  new PlantFactory();
        planten = plantfactory.getPlant(type);
    }
    public void addPlant(Plant plant){ planten.addPlant(plant);}
    public List<Plant> getAllPlanten(){
        return planten.getAllePlanten();
    }
    public void updatePlant(Plant plant){
        planten.updatePlant(plant);
    }
    public void verwijderPlant(long id){
        planten.verwijderPlant(id);
    }
    public Plant getPlant(long id){
       return planten.getPlant(id);
    }
    public int getTotaalAantal(){return planten.getTotaalAantal();}
}
