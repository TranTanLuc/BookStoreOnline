package model.customer;

import model.customer.Fullname;
import model.customer.Account;
import model.customer.Address;
import java.io.Serializable;

public class User implements Serializable{
	private Fullname fullname;
	private Address address;
	private Account account;
	private String phone;
	private String email;
	public User() {
	}
	public User(Fullname fullname, Address address, Account account, String phone, String email) {
		this.fullname = fullname;
		this.address = address;
		this.account = account;
		this.phone = phone;
		this.email = email;
	}
	public Fullname getFullname() {
		return fullname;
	}
	public void setFullname(Fullname fullname) {
		this.fullname = fullname;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
