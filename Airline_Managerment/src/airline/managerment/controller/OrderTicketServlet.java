package airline.managerment.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import airline.managerment.dao.TicketDAOImpl;
import airline.managerment.model.Ticket;
import airline.managerment.utility.Utility;
import airline.managerment.utility.Variables;

/**
 * Servlet implementation class OrderTicketServlet
 */
/**
 * @author Lê Duy Thanh
 *
 */
@WebServlet("/OrderTicketServlet")
public class OrderTicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderTicketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        TicketDAOImpl ticket = new TicketDAOImpl();
        List<Ticket> listTicket = new ArrayList<Ticket>();
        request.setCharacterEncoding("UTF-8");
        int type = Integer.parseInt(request.getParameter("type"));
        HttpSession session = request.getSession(true);
        switch (type) {
        case Variables.SEARCH_TICKET:
            request.setCharacterEncoding("UTF-8");
            String originAirport = Utility.splitString(request
                    .getParameter("txtFrom"));
            String destinationAirport = Utility.splitString(request
                    .getParameter("txtTo"));
            String originDate = request.getParameter("txtDateFrom");
            String destinationDate = request.getParameter("txtDateTo");
            String adult = request.getParameter("slAdult");
            String child = request.getParameter("slChild");
            String infant = request.getParameter("slInfant");
            

            session.setAttribute("to", originAirport);
            session.setAttribute("from", destinationAirport);
            session.setAttribute("dateto", originDate);
            session.setAttribute("datefrom", destinationDate);

            session.setAttribute("adult", adult);
            session.setAttribute("child", child);
            session.setAttribute("infant", infant);
            listTicket = ticket.getTicketByCondition(originAirport,
                    destinationAirport, originDate);
            session.setAttribute("listTicket", listTicket);
            /*
             * response.sendRedirect(request.getContextPath() + "/test?from=" +
             * originAirport
             * +"&to="+destinationAirport+"&dateto="+originDate+"&datefrom"
             * +destinationDate);
             */
            response.sendRedirect(request.getContextPath() + "/choose.php");
            break;
        case Variables.CHOOSE_TICKET:
            String ticketChoose = request.getParameter("rdTicketId");
            session.setAttribute("ticketChoose", ticketChoose);
            int adult1 = Integer.parseInt(session.getAttribute("adult")
                    .toString());
            int child1 = Integer.parseInt(session.getAttribute("child")
                    .toString());
            int infant1 = Integer.parseInt(session
                    .getAttribute("infant").toString());
            int ticketChooseInt=Integer.parseInt(ticketChoose);
            int adultPrice = Integer.parseInt(ticket.getTicketById(ticketChooseInt).getTicketPriceAdult());
            int childPrice = Integer.parseInt(ticket.getTicketById(ticketChooseInt).getTicketPriceChild());
            int infantPrice = Integer.parseInt(ticket.getTicketById(ticketChooseInt).getTicketPriceInfant());
            ArrayList<Integer> info=new ArrayList<Integer>();
            info.add(adult1);
            info.add(child1);
            info.add(infant1);
            info.add(adultPrice);
            info.add(childPrice);
            info.add(infantPrice);
            session.setAttribute("info", info);
            //System.out.println(ticketChoose);
            response.sendRedirect(request.getContextPath()+"/contact.php");
            break;
        }
    }
}
