package db;

import model.Plant;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class PlantJPADB implements PlantInterface {
    EntityManagerFactory entityManagerFactory;
    EntityManager entityManager;
    public PlantJPADB (){
        entityManagerFactory= Persistence.createEntityManagerFactory("plantInventarisPU");
    }
    @Override
    public Plant getPlant(long id) {
        entityManager = entityManagerFactory.createEntityManager();
        Plant plant = entityManager.find(Plant.class,id);
        entityManager.close();
        return plant;
    }

    @Override
    public void addPlant(Plant plant) {
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(plant);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    @Override
    public List<Plant> getAllePlanten() {
       entityManager = entityManagerFactory.createEntityManager();
       List<Plant> planten = entityManager.createQuery("select plant from Plant plant",Plant.class).getResultList();
       entityManager.close();
       return planten;
    }

    @Override
    public void verwijderPlant(long id) {
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Plant plant = entityManager.find(Plant.class,id);
        entityManager.remove(plant);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    @Override
    public void updatePlant(Plant plant) {
        long id = plant.hashCode();
        plant.setId(id);
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.merge(plant);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    @Override
    public int getTotaalAantal() {
        List<Plant> planten = getAllePlanten();
        int res = 0;
        for (Plant p : planten){
            res+= p.getAantal();
        }
        return res;
    }
}
