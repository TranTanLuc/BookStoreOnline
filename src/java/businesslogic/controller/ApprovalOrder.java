package businesslogic.controller;

import businesslogic.orderDAO.CartDAO;
import businesslogic.orderDAO.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.order.Order;
import model.item.Book;
import model.customer.Customer;
import model.customer.Account;

public class ApprovalOrder extends HttpServlet {
	/**
	 * 
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ApprovalOrder</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ApprovalOrder at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        /*
        Account user = (Account) session.getAttribute("USER");
        Order order = (Order) session.getAttribute("ORDER");
        OrderDAO orderDAO = new OrderDAO();
        if (orderDAO.addOrder(order, user)) {
            session.removeAttribute("ORDER");
            response.sendRedirect("ordersuccess.jsp");
        } else {
            PrintWriter pw = response.getWriter();
            pw.print("False");
        }
        */
        Customer customer = (Customer) session.getAttribute("CUSTOMER");
        Order order = (Order) session.getAttribute("ORDER");
        
        OrderDAO orderDAO = new OrderDAO();
        CartDAO cartDAO = new CartDAO();
        
        if (orderDAO.addOrder(order, customer) || cartDAO.addCart(order, customer)) {
            session.removeAttribute("ORDER");
            response.sendRedirect("ordersuccess.jsp");
        } else {
            PrintWriter pw = response.getWriter();
            pw.print("False");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
