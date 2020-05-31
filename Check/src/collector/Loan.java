package collector;
import java.util.Date;

public class Loan {
	private String cid;
	private String lid;
	private int days;
	private int promiseCounter;
	//private int promiseToPayDuration;
	private Date promiseToPayEndDate;
	private String status; 
	
	
    public int getPromiseCounter() {
		return promiseCounter;
	}
	

	public void setPromiseCounter(int promiseCounter) {
		this.promiseCounter = promiseCounter;
	}
//
//	
//	
//	public int getPromiseToPayDuration() {
//		return promiseToPayDuration;
//	}
//
//	public void setPromiseToPayDuration(int promiseToPayDuration) {
//		this.promiseToPayDuration = promiseToPayDuration;
//	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getPromiseToPayEndDate() {
		return promiseToPayEndDate;
	}

	public void setPromiseToPayEndDate(Date promiseToPayEndDate) {
		this.promiseToPayEndDate = promiseToPayEndDate;
	}

	

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getLid() {
		return lid;
	}

	public void setLid(String lid) {
		this.lid = lid;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}
}

