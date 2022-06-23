package businesslogic.controller;

import businesslogic.itemDAO.BookDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.order.Order;
import model.item.Book;


@WebServlet(name = "Order", urlPatterns = {"/Order"})
public class OrderServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Order</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Order at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String category = request.getParameter("category");
        BookDAO bookDAO = new BookDAO();
        Book book = new Book();

        switch(category) {
        	case "book":
        		book = bookDAO.getBookById(Integer.parseInt(id));  
        		break;
        }
        HttpSession session = request.getSession();
        session.removeAttribute("message");
        Order order = (Order) session.getAttribute("ORDER");
        if (order != null) {
            session.removeAttribute("ORDER");
            ArrayList<Book> arrBook = order.getListBook();
            arrBook.add(book);
            order.setListBook(arrBook);

            session.setAttribute("ORDER", order);
            session.setAttribute("message", "Thêm vào giỏ hàng thành công");
            response.sendRedirect("Details?id="+id+ "&category="+category);
        } else {
            order = new Order();
            ArrayList<Book> arrBook = new ArrayList<Book>();
            arrBook.add(book);
            order.setListBook(arrBook);

            session.setAttribute("ORDER", order);
            session.setAttribute("message", "Thêm vào giỏ hàng thành công");
            response.sendRedirect("Details?id="+id + "&category="+category);
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
