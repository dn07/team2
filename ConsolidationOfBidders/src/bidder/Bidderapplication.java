package bidder;

public class Bidderapplication {
	/*This is the class which contains the fields entered by the registered user in the bidder application form along with the getters and setters*/
	String buyer_id;
	String item;
	String aadhar;
	String age;
	String address;
	String monthly;
	String bb;
	String pre;
	public Bidderapplication(String buyer_id, String item, String aadhar, String age, String address, String monthly,
			String bb, String pre) {
		super();
		this.buyer_id = buyer_id;
		this.item = item;
		this.aadhar = aadhar;
		this.age = age;
		this.address = address;
		this.monthly = monthly;
		this.bb = bb;
		this.pre = pre;
	}
	
	public Bidderapplication(String buyer_id) {
		super();
		this.buyer_id = buyer_id;
	}

	public String getBuyer_id() {
		return buyer_id;
	}
	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMonthly() {
		return monthly;
	}
	public void setMonthly(String monthly) {
		this.monthly = monthly;
	}
	public String getBb() {
		return bb;
	}
	public void setBb(String bb) {
		this.bb = bb;
	}
	public String getPre() {
		return pre;
	}
	public void setPre(String pre) {
		this.pre = pre;
	}
	

}
