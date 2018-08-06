package service;

import model.Plant;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class PlantserviceTest {
    private PlantService service = new PlantService("memory");

    @Test
    public void addPlant_moet_een_nieuwe_plant_aanmaken_met_een_unieke_id(){
        Plant plant = new Plant("zygarus","bananenboom",0.5,5);
        service.addPlant(plant);
        long id = plant.getId();
        Plant gevondenPlant= service.getPlant(id);
        assertEquals(plant,gevondenPlant);
    }
    @Test
    public void updatePlant_moet_een_plant_aanpassen_zonder_een_nieuw_object_aan_te_maken(){
        Plant plant = new Plant("zygarus","bananenboom",0.5,5);
        long id = plant.getId();
        service.addPlant(plant);
        Plant updateplant = new Plant("zygarus","palmboom",1.0,2);
        updateplant.setId(id);
        service.updatePlant(updateplant);
        assertEquals("palmboom",service.getPlant(id).getType());
        assertEquals(2,service.getPlant(id).getAantal());

    }
}
