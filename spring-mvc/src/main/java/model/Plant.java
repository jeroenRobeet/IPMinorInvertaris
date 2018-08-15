package model;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Plant {
    @Id
    private long id;
    @NotNull(message = "{error.null.naam}")
    @NotEmpty(message = "{error.leeg.naam}")
    private String naam;
    @NotNull(message =  "{error.null.type}")
    @NotEmpty(message = "{error.leeg.type}")
    private String type;
    @Range(min = 1, max = 10, message = "{error.range.lengte}")
    private double lengte;
    @Range(min = 1,max = 100, message = "{error.range.aantal}")
    private int aantal;
    public Plant(){
        this.setId(this.hashCode());
    }
    public Plant(String naam,String type,double lengte,int aantal){
        this.setId(this.hashCode());
        this.setAantal(aantal);
        this.setType(type);
        this.setNaam(naam);
        this.setLengte(lengte);
    }
    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
     //   if (naam == null || naam.isEmpty()) throw new DomainException("geen plantennaam gegeven");
        this.naam = naam;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
     //   if (type == null || type.isEmpty()) throw new DomainException("geen type gegeven");
        this.type = type;
    }

    public double getLengte() {
        return lengte;
    }

    public void setLengte(double lengte) {
      //  if (lengte < 0) throw new DomainException("lengte mag niet negatief zijn");
        //if (lengte > 20) throw new DomainException("koopt is een normale boom/plant");
        this.lengte = lengte;
    }

    public int getAantal() {
        return aantal;
    }

    public void setAantal(int aantal) {
        //if (aantal <= 0) throw new DomainException("aantal kan niet negatief of 0 zijn");
        this.aantal = aantal;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
