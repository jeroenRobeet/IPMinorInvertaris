package model;

public class Plant {
    private int id;
    private String naam;
    private String type;
    private double lengte;
    private int aantal;

    public Plant(){

    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        if (naam == null || naam.isEmpty()) throw new DomainException("geen plantennaam gegeven");
        this.naam = naam;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        if (type == null || type.isEmpty()) throw new DomainException("geen type gegeven");
        this.type = type;
    }

    public double getLengte() {
        return lengte;
    }

    public void setLengte(double lengte) {
        if (lengte < 0) throw new DomainException("lengte mag niet negatief zijn");
        if (lengte > 20) throw new DomainException("koopt is een normale boom/plant");
        this.lengte = lengte;
    }

    public int getAantal() {
        return aantal;
    }

    public void setAantal(int aantal) {
        if (aantal <= 0) throw new DomainException("aantal kan niet negatief of 0 zijn");
        this.aantal = aantal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
