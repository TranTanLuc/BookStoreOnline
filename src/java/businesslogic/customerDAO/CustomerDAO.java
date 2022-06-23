package businesslogic.customerDAO;

import businesslogic.itemDAO.BookDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.customer.Account;
import model.customer.Address;
import model.customer.Customer;
import model.customer.Fullname;

public class CustomerDAO implements CustomerDAOInterface{
	private Connection connection;
    private Statement st;
    private ResultSet rs;

    public CustomerDAO() {
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
    
    public Customer getCustomerByAccount(Account account) {
    	String query = "SELECT customer.phone, customer.email, customer.point, "
    			+ "account.username, account.password, fullname.first_name, fullname.middle_name, fullname.last_name, "
    			+ "address.commune, address.district, address.city FROM customer, address, account, fullname "
    			+ "WHERE account.username = '" + account.getUsername() + "' AND account.password = '" + account.getPassword() +   " ' "
    			+ "AND customer.idAddress = address.id "
    			+ "AND customer.idAccount = account.id "
    			+ "AND customer.idFullname = fullname.id";
    	System.out.println(query);
        Customer customer = new Customer();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                String phone = rs.getString("phone");
                int point = rs.getInt("point");
                String email = rs.getString("email");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String first_name = rs.getString("first_name");
                String middle_name = rs.getString("middle_name");
                String last_name = rs.getString("last_name");
                String commune = rs.getString("commune");
                String district = rs.getString("district");
                String city = rs.getString("city");
                customer.setPhone(phone);
                customer.setPoint(point);
                customer.setGender(null);
                customer.setEmail(email);
                customer.setAccount(new Account(username, password));
                customer.setFullname(new Fullname(first_name, middle_name, last_name));
                customer.setAddress(new Address(commune, district, city));
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return customer;
    }

    public boolean checkLogin(Customer customer) {
        try {
            String query = "SELECT * FROM account WHERE username = ? AND password = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, customer.getAccount().getUsername());
            ps.setString(2, customer.getAccount().getPassword());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean register2(Account account, Customer customer) {
        try {
            String query = "INSERT INTO account (username,password) VALUES (?,?);";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ps.executeUpdate();
            String queryAcc = "SELECT MAX(id) as id FROM address";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(queryAcc);
            int idAcc = 1;
            while (rs.next()) {
                idAcc = rs.getInt("id");
            }
            
            
            
            String insertFullname = "INSERT INTO fullname(last_name, middle_name, first_name) VALUES (?,?,?)";
            ps = connection.prepareCall(insertFullname);
            ps.setString(1, customer.getFullname().getLastName());
            ps.setString(2, customer.getFullname().getMiddleName());
            ps.setString(3, customer.getFullname().getFirstName());
            ps.executeUpdate();
            /*
            String queryFull = "SELECT MAX(id) as id FROM fullname";
            st = connection.createStatement();
            rs = st.executeQuery(queryFull);
            int idFull = 1;
            while (rs.next()) {
                idFull = rs.getInt("id");
            }
            */
            String insertAddress = "INSERT INTO address(commune, district, city) VALUES (?,?,?)";
            ps = connection.prepareCall(insertAddress);
            ps.setString(1, customer.getAddress().getCommune());
            ps.setString(2, customer.getAddress().getDistrict());
            ps.setString(3, customer.getAddress().getCity());
            ps.executeUpdate();
            /*
            String queryAdd = "SELECT MAX(id) as id FROM fullname";
            st = connection.createStatement();
            rs = st.executeQuery(queryAdd);
            int idAdd = 1;
            while (rs.next()) {
                idAdd = rs.getInt("id");
            }
            */
            String insertCustomer = "INSERT INTO customer(phone, email, point, idAddress, idAccount, idFullname) VALUES (?,?,?,?,?,?)";
            ps = connection.prepareCall(insertCustomer);
            ps.setString(1, customer.getPhone());
            ps.setString(2, customer.getEmail());
            ps.setInt(3, customer.getPoint());
            ps.setInt(4, idAcc + 1);
            ps.setInt(5, idAcc + 1);
            ps.setInt(6, idAcc + 1);
            ps.executeUpdate();
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    
    }
    
    public boolean register(Customer customer) {
    	int idAcc = 0;
    	int idFull = 0;
    	int idAdd = 0;
        try {
            String insertAccount = "INSERT INTO account (username,password) VALUES (?,?);";
            PreparedStatement ps = connection.prepareStatement(insertAccount);
            ps.setString(1, customer.getAccount().getUsername());
            ps.setString(2, customer.getAccount().getPassword());
            ps.executeUpdate();
            String queryAcc = "SELECT MAX(id) as id FROM account";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(queryAcc);
            while (rs.next()) {
                idAcc = rs.getInt("id");
            }
        } catch (SQLException ex) {
        	Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        try {
        	String insertFullname = "INSERT INTO fullname(last_name, middle_name, first_name) VALUES (?,?,?)";
        	PreparedStatement ps = connection.prepareStatement(insertFullname);
            ps.setString(1, customer.getFullname().getLastName());
            ps.setString(2, customer.getFullname().getMiddleName());
            ps.setString(3, customer.getFullname().getFirstName());
            ps.executeUpdate();
            String queryFull = "SELECT MAX(id) as id FROM fullname";
            st = connection.createStatement();
            rs = st.executeQuery(queryFull);
            while (rs.next()) {
                idFull = rs.getInt("id");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        try {
        	String insertAddress = "INSERT INTO address(commune, district, city) VALUES (?,?,?)";
        	PreparedStatement ps = connection.prepareStatement(insertAddress);
            ps.setString(1, customer.getAddress().getCommune());
            ps.setString(2, customer.getAddress().getDistrict());
            ps.setString(3, customer.getAddress().getCity());
            ps.executeUpdate();
            
            String queryAdd = "SELECT MAX(id) as id FROM address";
            st = connection.createStatement();
            rs = st.executeQuery(queryAdd);
            while (rs.next()) {
                idAdd = rs.getInt("id");
            }
        	
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
        	String insertCustomer = "INSERT INTO customer(phone, email, point, idAddress, idAccount, idFullname) VALUES (?,?,?,?,?,?)";
        	PreparedStatement ps = connection.prepareStatement(insertCustomer);
            ps.setString(1, customer.getPhone());
            ps.setString(2, customer.getEmail());
            ps.setInt(3, customer.getPoint());
            ps.setInt(4, idAdd);
            ps.setInt(5, idAcc);
            ps.setInt(6, idFull);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex){
        	Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }   
        return false;
    
    }
    
    public List<Customer> getAllCustomer() {
        List<Customer> listCustomer = new ArrayList<>();
        String sql = "select cs.id, last_name, ac.username, ac.password, cs.email, cs.phone, cs.point, ad.city from customer cs inner join account ac " +
                        "on cs.idAccount = ac.id " +
                        "inner join address ad " +
                        "on cs.idAddress = ad.id " +
                        "inner join fullname fn " +
                        "on cs.idFullname = fn.id";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                listCustomer.add(new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }
        
        return listCustomer;
    }
}
