package airline.managerment.dao;

import java.util.List;

import airline.managerment.model.Ticket;

public interface TicketDAO {
    public List<Ticket> getTicketByCondition(String originAirport,
            String destinationAirport, String originDate);
    public boolean updateTicketInfo(int ticketId);
    public Ticket getTicketById(int ticketId);
}
