package model.customer;

import model.customer.Fullname;
import model.customer.Account;
import model.customer.Address;
import java.io.Serializable;

public class Customer extends User implements Serializable{
        private int id;
	private int point;
	private String gender;
	public Customer() {
	}
	public Customer(int point, String houseNumber, Fullname fullname, Address address, Account account, String phone, String email) {
		super(fullname, address, account, phone, email);
		this.point = point;
		this.gender = houseNumber;

	}

        public Customer(int id, String last_name, String username, String password, String email, String phone, int point, String city) {
            this.id = id;
            this.getFullname().setLastName(last_name);
            this.getAccount().setUsername(username);
            this.getAccount().setPassword(password);
            this.setEmail(email);
            this.setPhone(phone);
            this.point = point;
            this.getAddress().setCity(city);
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }
        
        
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@Override
	public Fullname getFullname() {
		return super.getFullname();
	}
	@Override
	public void setFullname(Fullname fullname) {
		super.setFullname(fullname);
	}
	@Override
	public Address getAddress() {
		return super.getAddress();
	}
	@Override
	public void setAddress(Address address) {
		super.setAddress(address);
	}
	@Override
	public Account getAccount() {
		return super.getAccount();
	}
	@Override
	public void setAccount(Account account) {
		super.setAccount(account);
	}
	@Override
	public String getPhone() {
		return super.getPhone();
	}
	@Override
	public void setPhone(String phone) {
		super.setPhone(phone);
	}
	@Override
	public String getEmail() {
		return super.getEmail();
	}
	@Override
	public void setEmail(String email) {
		super.setEmail(email);
	}
	
}
