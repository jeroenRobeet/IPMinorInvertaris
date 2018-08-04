package db;

import model.Plant;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PlantInMemory implements PlantInterface {
    private Map<String,Plant> planten;
    public PlantInMemory(){
        planten = new HashMap<>();
        Plant banaan = new Plant();
        banaan.setLengte(1.25);
        banaan.setNaam("saskia");
        banaan.setType("klein");
        banaan.setAantal(1);
        planten.put(banaan.getNaam(),banaan);

    }
    @Override
    public Plant getPlant(String naam) {
        return planten.get(naam);
    }

    @Override
    public void addPlant(Plant plant) {
        if (plant == null) throw new DBException("plant is niet geldig");

        planten.put(plant.getNaam(), plant);
    }

    @Override
    public List<Plant> getAllePlanten() {
        List<Plant> res = new ArrayList<>();
        for (Plant p : planten.values()){
            res.add(p);
        }
        return res;
    }

    @Override
    public void verwijderPlant(String naam) {
        if (planten.containsKey(naam)){
            planten.remove(naam);
        } else{
            throw new DBException("plant bestaat niet");
        }
    }

    @Override
    public void updatePlant(Plant plant) {
        if (plant == null) throw new DBException("geen geldige plant");
        planten.put(plant.getNaam(),plant);
    }
}
