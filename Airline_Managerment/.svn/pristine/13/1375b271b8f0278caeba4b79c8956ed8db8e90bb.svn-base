package airline.managerment.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;

/**
 * @author Lê Duy Thanh
 *
 */
@Entity
@Table(name = "AIRPORT")
public class Airport {
    private String airportId;
    private String airportName;
    private String airportPosition;
    private String airportDescription;

    @Id
    @Column(name = "AIRPORT_ID")
    public String getAirportId() {
        return airportId;
    }

    @Column(name = "AIRPORT_NAME")
    public String getAirportName() {
        return airportName;
    }

    @Column(name = "AIRPORT_POSITION")
    public String getAirportPosition() {
        return airportPosition;
    }

    @Column(name = "AIRPORT_DESCRIPTION")
    public String getAirportDescription() {
        return airportDescription;
    }

    public void setAirportId(String airportId) {
        this.airportId = airportId;
    }

    public void setAirportName(String airportName) {
        this.airportName = airportName;
    }

    public void setAirportPosition(String airportPosition) {
        this.airportPosition = airportPosition;
    }

    public void setAirportDescription(String airportDescription) {
        this.airportDescription = airportDescription;
    }

    @Override
    public String toString() {
        return "AirportDAO [airportId=" + airportId + ", airportName="
                + airportName + ", airportPosition=" + airportPosition
                + ", airportDescription=" + airportDescription + "]";
    }

    public Airport(String airportId, String airportName,
            String airportPosition, String airportDescription) {
        super();
        this.airportId = airportId;
        this.airportName = airportName;
        this.airportPosition = airportPosition;
        this.airportDescription = airportDescription;
    }

    public Airport() {
        super();
    }

}
