package collector_bankmanager;

import java.sql.Date;

public class Collector {

	private String fname;
	private String lname;
	private String email;
	private String mobile;
	private String PAN;
	private String adhar;
	private String address;
	private String DOB;
	
	Collector(String fname, String lname, String email, String mobile, String PAN, String adhar, String address, String DOB){
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.mobile = mobile;
		this.PAN = PAN;
		this.adhar = adhar;
		this.address = address;
		this.DOB = DOB;
	}
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPAN() {
		return PAN;
	}
	public void setPAN(String pAN) {
		PAN = pAN;
	}
	public String getAdhar() {
		return adhar;
	}
	public void setAdhar(String adhar) {
		this.adhar = adhar;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	
	
}
