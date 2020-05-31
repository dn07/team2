package collector;

public interface LoanDAO {
	public int insertLoan(Loan c);

	public Loan getLoan(String cid, String lid, int days);
	public Loan updateLoan(Loan loan);
	
	//public Loan getLoan(String cid, String lid, int days, int promiseCounter);

	//public Loan getLoan(String cid, String lid);
}