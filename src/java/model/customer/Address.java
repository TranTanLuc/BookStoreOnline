package model.customer;

import java.io.Serializable;

public class Address implements Serializable{
	private String commune;
	private String district;
	private String city;
	public Address() {
		
	}
	public Address(String commune, String district, String city) {
		this.commune = commune;
		this.district = district;
		this.city = city;
	}

	public String getCommune() {
		return commune;
	}
	public void setCommune(String commune) {
		this.commune = commune;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
}
