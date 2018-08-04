package db;

import model.Plant;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PlantInMemory implements PlantInterface {
    private Map<Integer,Plant> planten;
    public PlantInMemory(){
        planten = new HashMap<>();
        Plant banaan = new Plant();
        banaan.setLengte(1.25);
        banaan.setNaam("saskia");
        banaan.setType("klein");
        banaan.setAantal(1);
        banaan.setId(banaan.hashCode());
        planten.put(banaan.getId(),banaan);

    }
    @Override
    public Plant getPlant(int id) {
        return planten.get(id);
    }

    @Override
    public void addPlant(Plant plant) {
        if (plant == null) throw new DBException("plant is niet geldig");

        planten.put(plant.getId(), plant);
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
    public void verwijderPlant(int id) {
        if (planten.containsKey(id)){
            planten.remove(id);
        } else{
            throw new DBException("plant bestaat niet");
        }
    }

    @Override
    public void updatePlant(Plant plant) {
        if (plant == null) throw new DBException("geen geldige plant");
        planten.put(plant.getId(),plant);
    }

    @Override
    public int getTotaalAantal() {
        int res = 0;
        for (Plant p: planten.values()){
            res += p.getAantal();
        } return res;
    }
}
