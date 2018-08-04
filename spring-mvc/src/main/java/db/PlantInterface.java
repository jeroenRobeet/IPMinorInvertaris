package db;

import model.Plant;

import java.util.List;

public interface PlantInterface {
    public Plant getPlant(int id);
    public void addPlant(Plant plant);
    public List<Plant> getAllePlanten();
    public void verwijderPlant(int id);
    public void updatePlant(Plant plant);
    public int getTotaalAantal();

}
