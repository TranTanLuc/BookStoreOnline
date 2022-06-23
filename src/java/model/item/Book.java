package model.item;

public class Book {
	private int id;
    private String name;
    private int price;
    private String description;
    private int idType;
    private int idPublisher;
    private String picture;
	public Book() {
	}
        
	public Book(int id, String name, int price, String description, int idType, int idPublisher, String picture) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
//		this.idType = idType;
//		this.idPublisher = idPublisher;
		this.picture = picture;
	}
	
	public Book(int id, String name, int price, int idType, int idPublisher) {
        this.id = id;
        this.name = name;
        this.price = price;
//        this.idType = idType;
//        this.idPublisher = idPublisher;
    }
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
//	public int getIdType() {
//		return idType;
//	}
//	public void setIdType(int idType) {
//		this.idType = idType;
//	}
//	public int getIdPublisher() {
//		return idPublisher;
//	}
//	public void setIdPublisher(int idPublisher) {
//		this.idPublisher = idPublisher;
//	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}

//    @Override
//    public String toString() {
//        return "Book{" + "id=" + id + ", name=" + name + ", price=" + price + ", description=" + description + ", idType=" + idType + ", idPublisher=" + idPublisher + ", picture=" + picture + '}';
//    }
    
    
}
