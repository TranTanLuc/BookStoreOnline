package businesslogic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import businesslogic.customerDAO.AdminDAO;
import model.customer.Account;
import model.customer.Address;
import model.customer.Customer;
import model.customer.Fullname;
import model.item.Book;

public class Admin extends HttpServlet {
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
    	int id = Integer.parseInt(request.getParameter("id"));
    	String name = request.getParameter("name");
    	int price = Integer.parseInt(request.getParameter("price"));
    	String description = request.getParameter("description");
    	String picture = request.getParameter("picture");
    	
    	Book book= new Book(id, name, price, description, id, id, picture);
    	
    	AdminDAO adminDAO = new AdminDAO();
        
        if (adminDAO.addBook(book)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("NEW_BOOK", book);
            response.sendRedirect("admin.jsp");
        } else {
            response.sendRedirect("admin.jsp");
        }
    } 
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
