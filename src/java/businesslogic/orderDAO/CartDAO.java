package businesslogic.orderDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.customer.Customer;
import model.item.Book;
import model.order.Order;


public class CartDAO implements CartDAOInterface{
private Connection connection;
    private Statement st;
    private ResultSet rs;

    public CartDAO() {
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
    
    public boolean addCart(Order order, Customer customer) {
    try {
        String query = "SELECT MAX(id) as id FROM cart";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);
        System.out.print(rs);
        int id = 1;
        while (rs.next()) {
            id = rs.getInt("id");
        }
        
        PreparedStatement ps;
        for (Book book : order.getListBook()) {
            if(book.getName() == null) {
                continue;
            }
            String sql = "INSERT INTO cart (id, quantity, idBook) VALUES (?,1,?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id + 1);
            ps.setInt(2, book.getId());
            ps.executeUpdate();
            id++;
            // total = book.getPrice(); // HERE: += =
        } 
        return true;
    } catch (SQLException ex) {
        Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
        return false;
    }
}
