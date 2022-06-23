package model.order;

import model.item.Book;
import java.util.ArrayList;

public class Order {
	private ArrayList<Book> listBook;


	public Order() {
		listBook = new ArrayList<Book>();
	}
	
	public Order(ArrayList<Book> listBook) {
		this.listBook = listBook;
	}

	public ArrayList<Book> getListBook() {
		return listBook;
	}

	public void setListBook(ArrayList<Book> listBook) {
		this.listBook = listBook;
	}	
}
