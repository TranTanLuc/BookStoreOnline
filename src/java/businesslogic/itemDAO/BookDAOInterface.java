package businesslogic.itemDAO;

import java.util.ArrayList;
import model.item.Book;


public interface BookDAOInterface {
    public ArrayList<Book> getAllBook();
    public ArrayList<Book> getBookNew();
    public Book getBookById(int id);
    public ArrayList<Book> searchBook(String keyword);
    public void insertBook(String name, int price, String description, String picture);
    public void deleteBook(String id);
    public Book getBookById(String id);
    public void editBook(String name, int price, String description, String picture, int id);
}
