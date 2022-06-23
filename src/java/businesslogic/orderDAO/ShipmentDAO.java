package businesslogic.orderDAO;

import businesslogic.itemDAO.BookDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.item.Book;
import model.order.Shipment;

public class ShipmentDAO implements ShipmentDAOInterface{
    private Connection connection;
    private Statement st;
    private ResultSet rs;

    public ShipmentDAO() {
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
    
    public ArrayList<Shipment> getShipment() {
        String query = "SELECT * FROM shipment";
        ArrayList<Shipment> arr = new ArrayList<Shipment>();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                Shipment shipment = new Shipment();
                shipment.setId(id);
                shipment.setName(name);
                shipment.setPrice(price);
                arr.add(shipment);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    } 
}
