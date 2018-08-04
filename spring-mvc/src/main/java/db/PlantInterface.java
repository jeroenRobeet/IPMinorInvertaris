package db;

import model.Plant;

import java.util.List;

public interface PlantInterface {
    public Plant getPlant(String naam);
    public void addPlant(Plant plant);
    public List<Plant> getAllePlanten();
    public void verwijderPlant(String naam);
    public void updatePlant(Plant plant);

}
