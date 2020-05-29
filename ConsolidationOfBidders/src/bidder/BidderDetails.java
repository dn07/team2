package bidder;

public class BidderDetails {
	private String buyerID;
	private String fname;
	private String lname;
	private String phone_number;
	private String email;
	private String password;
	
	public BidderDetails(String buyerID) {
		super();
		this.buyerID = buyerID;
	}
	public BidderDetails(String buyerID, String password) {
		super();
		this.buyerID = buyerID;
		this.password = password;
	}
	public BidderDetails(String buyerID, String fname, String lname, String phone_number, String email,
			String password) {
		super();
		this.buyerID = buyerID;
		this.fname = fname;
		this.lname = lname;
		this.phone_number = phone_number;
		this.email = email;
		this.password = password;
	}
	public String getBuyerID() {
		return buyerID;
	}
	public void setBuyerID(String buyerID) {
		this.buyerID = buyerID;
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
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "BidderDetails [id=" + buyerID + ", firstName=" + fname + ", lastName=" + lname + "phone number="+phone_number+", email=" + email + "password="+password+"]";
	}	
	
	
	
	
	

}
