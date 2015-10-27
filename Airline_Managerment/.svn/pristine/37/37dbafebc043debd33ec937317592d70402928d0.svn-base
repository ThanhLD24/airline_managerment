package airline.managerment.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;

/**
 * @author Lê
 *
 */
@Entity
@Table(name = "AIR_PLANE")
public class Airplane {
    private Integer airplaneId;
    private String airplaneName;
    private String airplaneType;
    private Integer airplaneCapacity;
    private String airplaneManufacturer;
    private Integer airplaneCarrierId;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AIR_PLANE_ID")
    public Integer getAirplaneId() {
        return airplaneId;
    }

    @Column(name = "AIR_PLANE_NAME")
    public String getAirplaneName() {
        return airplaneName;
    }

    @Column(name = "AIR_PLANE_TYPE")
    public String getAirplaneType() {
        return airplaneType;
    }

    @Column(name = "AIR_PLANE_CAPACITY")
    public Integer getAirplaneCapacity() {
        return airplaneCapacity;
    }

    @Column(name = "MANUFACTURER")
    public String getAirplaneManufacturer() {
        return airplaneManufacturer;
    }

    @Column(name = "CARRIER_ID")
    public Integer getAirplaneCarrierId() {
        return airplaneCarrierId;
    }

    public void setAirplaneId(Integer airplaneId) {
        this.airplaneId = airplaneId;
    }

    public void setAirplaneName(String airplaneName) {
        this.airplaneName = airplaneName;
    }

    public void setAirplaneType(String airplaneType) {
        this.airplaneType = airplaneType;
    }

    public void setAirplaneCapacity(Integer airplaneCapacity) {
        this.airplaneCapacity = airplaneCapacity;
    }

    public void setAirplaneManufacturer(String airplaneManufacturer) {
        this.airplaneManufacturer = airplaneManufacturer;
    }

    public void setAirplaneCarrierId(Integer airplaneCarrierId) {
        this.airplaneCarrierId = airplaneCarrierId;
    }

    public Airplane(Integer airplaneId, String airplaneName,
            String airplaneType, Integer airplaneCapacity,
            String airplaneManufacturer, Integer airplaneCarrierId) {
        super();
        this.airplaneId = airplaneId;
        this.airplaneName = airplaneName;
        this.airplaneType = airplaneType;
        this.airplaneCapacity = airplaneCapacity;
        this.airplaneManufacturer = airplaneManufacturer;
        this.airplaneCarrierId = airplaneCarrierId;
    }

    public Airplane() {
        super();
    }

    public Airplane(String airplaneName, String airplaneType,
            Integer airplaneCapacity, String airplaneManufacturer,
            Integer airplaneCarrierId) {
        super();
        this.airplaneName = airplaneName;
        this.airplaneType = airplaneType;
        this.airplaneCapacity = airplaneCapacity;
        this.airplaneManufacturer = airplaneManufacturer;
        this.airplaneCarrierId = airplaneCarrierId;
    }

}
