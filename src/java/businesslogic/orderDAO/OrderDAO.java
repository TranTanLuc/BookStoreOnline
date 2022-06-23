package businesslogic.orderDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.order.Order;
import model.item.Book;
import model.customer.Account;
import model.customer.Customer;

public class OrderDAO implements OrderDAOInterface{
    private Connection connection;
    private Statement st;
    private ResultSet rs;

    public OrderDAO() {
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

    public boolean addOrder(Order order, Customer customer) {
        try {
            String query = "SELECT MAX(id) as id FROM cart";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);
            System.out.print(rs);
            int id = 1;
            while (rs.next()) {
                id = rs.getInt("id");
            }
            
//            int total = 0;
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
            
            
            String querySelect = "SELECT * FROM customer WHERE email = ? and phone = ?";
            ps = connection.prepareStatement(querySelect);
            ps.setString(1, customer.getEmail());
            ps.setString(2, customer.getPhone());
            System.out.print(ps);
            rs = ps.executeQuery();
            int idCus = 1;
            while (rs.next()) {
                idCus = rs.getInt("id");
            }
            
            for (Book book : order.getListBook()) {
            	if(book.getName() == null) {
            		continue;
            	}
            	String insertSQL = "INSERT INTO orderitem(totalPrice,idCustomer,idCart) VALUES (?,?,?)";
                ps = connection.prepareCall(insertSQL);
//                ps.setInt(1, total);
                ps.setInt(1, book.getPrice());
                ps.setInt(2, idCus);
                ps.setInt(3, id - 1);
                System.out.print(ps);
                ps.executeUpdate();
                id--;
            }
 
            
            return true;
        } catch (SQLException ex) {
            return false;
        }
    }
}
