package businesslogic.customerDAO;


import businesslogic.itemDAO.BookDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.item.Book;

public class AdminDAO implements AdminDAOInterface{
	private Connection connection;
    private Statement st;
    private ResultSet rs;

    public AdminDAO() {
        String className = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/pttkht?characterEncoding=utf-8";
        try {
            Class.forName(className);
            connection = DriverManager.getConnection(url, "root", "12345678");
            System.out.println("ket noi thanh con csdl");
        } catch (Exception e) {
            System.err.println("Khong ket noi duoc" + e.toString());
        }
    }
    
    public boolean addBook(Book book) {
        try {
            String insertBook = "INSERT INTO book (id, name, price, description, idType, idPublisher, picture) VALUES (?,?,?,?,?,?,?);";
            PreparedStatement ps = connection.prepareStatement(insertBook);
            ps.setInt(1, book.getId());
            ps.setString(2, book.getName());
            ps.setInt(3, book.getPrice());
            ps.setString(4, book.getDescription());
//            ps.setInt(5, book.getIdType());
//            ps.setInt(6, book.getIdPublisher());
            ps.setString(7, book.getPicture());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
        	Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        return false;
    
    }
}
