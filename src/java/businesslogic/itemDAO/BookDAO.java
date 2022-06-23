package businesslogic.itemDAO;

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
import model.item.Book;

public class BookDAO implements BookDAOInterface{
	private Connection connection;
    private Statement st;
    private ResultSet rs;

    public BookDAO() {
        String className = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/pttkht?characterEncoding=utf-8";
        try {
            Class.forName(className);
            connection = DriverManager.getConnection(url, "root", "12345678");
            System.out.println("ket noi thanh cong csdl");
        } catch (Exception e) {
            System.err.println("Khong ket noi duoc" + e.toString());
        }
    }
    
    public ArrayList<Book> getAllBook() {
        String query = "SELECT * FROM book";
        ArrayList<Book> arr = new ArrayList<Book>();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                String description = rs.getString("description");
                String picture = rs.getString("picture");
                Book book = new Book();
                book.setId(id);
                book.setName(name);
                book.setPrice(price);
                book.setDescription(description);
                book.setPicture(picture);
                arr.add(book);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }

    public ArrayList<Book> getBookNew() {
        String query = "SELECT * FROM book LIMIT 4";
        ArrayList<Book> arr = new ArrayList<Book>();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                String description = rs.getString("description");
                String picture = rs.getString("picture");
                Book book = new Book();
                book.setId(id);
                book.setName(name);
                book.setPrice(price);
                book.setDescription(description);
                book.setPicture(picture);
                arr.add(book);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }

    public Book getBookById(int id) {
        String query = "SELECT * FROM book WHERE id = " + id;
        Book book = new Book();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                String name = rs.getString("name");
                int price = rs.getInt("price");
                String description = rs.getString("description");
                String picture = rs.getString("picture");
                book.setId(id);
                book.setName(name);
                book.setPrice(price);
                book.setDescription(description);
                book.setPicture(picture);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return book;
    }

    public ArrayList<Book> searchBook(String keyword) {
        String query = "SELECT * FROM book WHERE name LIKE '%" + keyword + "%'";
        ArrayList<Book> arrBook = new ArrayList();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                String description = rs.getString("description");
                String picture = rs.getString("picture");
                Book book = new Book();
                book.setId(id);
                book.setName(name);
                book.setPrice(price);
                book.setDescription(description);
                book.setPicture(picture);
                arrBook.add(book);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arrBook;
    }
    
    public void insertBook(String name, int price, String description, String picture){
        String sql = "insert into book(name, price, description, picture) values(?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, price);
            ps.setString(3, description);
            ps.setString(4, picture);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void deleteBook(String id){
        String sql = "delete from book where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Book getBookById(String id){
        String sql = "select * from book where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Book(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void editBook(String name, int price, String description, String picture, int id){
        String sql = "update book set name = ?, price = ?, description = ?, picture = ? where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, price);
            ps.setString(3, description);
            ps.setString(4, picture);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
