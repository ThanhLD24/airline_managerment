package airline.managerment.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Lê
 *
 */
@Entity
@Table(name = "ORDER_TICKET")
public class OrderTicket {
    private Integer orderTicketId;
    private Integer ticketId;
    private Integer personId;
    private String orderTicketPassenger;
    private String orderTicketLuggage;
    private String orderTicketTotalPrice;
    private String orderTicketDate;
    private String orderTicketOther;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ORDER_TICKET_ID")
    public Integer getOrderTicketId() {
        return orderTicketId;
    }

    @Column(name = "TICKET_ID")
    public Integer getTicketId() {
        return ticketId;
    }

    @Column(name = "PERSON_ID")
    public Integer getPersonId() {
        return personId;
    }

    @Column(name = "ORDER_TICKET_PASSENGER")
    public String getOrderTicketPassenger() {
        return orderTicketPassenger;
    }

    @Column(name = "ORDER_TICKET_LUGGAGE")
    public String getOrderTicketLuggage() {
        return orderTicketLuggage;
    }

    @Column(name = "ORDER_TICKET_TOTAL_PRICE")
    public String getOrderTicketTotalPrice() {
        return orderTicketTotalPrice;
    }

    @Column(name = "ORDER_TICKET_DATE")
    public String getOrderTicketDate() {
        return orderTicketDate;
    }

    @Column(name = "ORDER_TICKET_OTHER")
    public String getOrderTicketOther() {
        return orderTicketOther;
    }

    public void setOrderTicketId(Integer orderTicketId) {
        this.orderTicketId = orderTicketId;
    }

    public void setTicketId(Integer ticketId) {
        this.ticketId = ticketId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    public void setOrderTicketPassenger(String orderTicketPassenger) {
        this.orderTicketPassenger = orderTicketPassenger;
    }

    public void setOrderTicketLuggage(String orderTicketLuggage) {
        this.orderTicketLuggage = orderTicketLuggage;
    }

    public void setOrderTicketTotalPrice(String orderTicketTotalPrice) {
        this.orderTicketTotalPrice = orderTicketTotalPrice;
    }

    public void setOrderTicketDate(String orderTicketDate) {
        this.orderTicketDate = orderTicketDate;
    }

    public void setOrderTicketOther(String orderTicketOther) {
        this.orderTicketOther = orderTicketOther;
    }

    public OrderTicket(Integer orderTicketId, Integer ticketId,
            Integer personId, String orderTicketPassenger,
            String orderTicketLuggage, String orderTicketTotalPrice,
            String orderTicketDate, String orderTicketOther) {
        this.orderTicketId = orderTicketId;
        this.ticketId = ticketId;
        this.personId = personId;
        this.orderTicketPassenger = orderTicketPassenger;
        this.orderTicketLuggage = orderTicketLuggage;
        this.orderTicketTotalPrice = orderTicketTotalPrice;
        this.orderTicketDate = orderTicketDate;
        this.orderTicketOther = orderTicketOther;
    }

    public OrderTicket(Integer ticketId, Integer personId,
            String orderTicketPassenger, String orderTicketLuggage,
            String orderTicketTotalPrice, String orderTicketDate,
            String orderTicketOther) {

        this.ticketId = ticketId;
        this.personId = personId;
        this.orderTicketPassenger = orderTicketPassenger;
        this.orderTicketLuggage = orderTicketLuggage;
        this.orderTicketTotalPrice = orderTicketTotalPrice;
        this.orderTicketDate = orderTicketDate;
        this.orderTicketOther = orderTicketOther;
    }

    public OrderTicket() {
    }

    @Override
    public String toString() {
        return "OrderTicket [orderTicketId=" + orderTicketId + ", ticketId="
                + ticketId + ", personId=" + personId
                + ", orderTicketPassenger=" + orderTicketPassenger
                + ", orderTicketLuggage=" + orderTicketLuggage
                + ", orderTicketTotalPrice=" + orderTicketTotalPrice
                + ", orderTicketDate=" + orderTicketDate
                + ", orderTicketOther=" + orderTicketOther + "]";
    }

}
