package businesslogic.controller;

import businesslogic.customerDAO.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.customer.Account;
import model.customer.Address;
import model.customer.Customer;
import model.customer.Fullname;

public class Register extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String lastname = request.getParameter("lastname");
    	String middlename = request.getParameter("middlename");
    	String firstname = request.getParameter("firstname");
    	
    	String commune = request.getParameter("commune");
    	String district = request.getParameter("district");
    	String city = request.getParameter("city");
    	
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");
        Account account = new Account(username, password);
        
        Customer customer = new Customer(0, null, new Fullname(firstname, middlename, lastname), new Address(commune, district, city), account, phoneNumber ,email);
        
        CustomerDAO customerDAO = new CustomerDAO();
        /*
        if (customerDAO.register(account, customer)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("CUSTOMER", customer);
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("register.jsp?checklogin=false");
        }
        */
        if (customerDAO.register(customer)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("CUSTOMER", customer);
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("register.jsp?checklogin=false");
        }
    } 
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
