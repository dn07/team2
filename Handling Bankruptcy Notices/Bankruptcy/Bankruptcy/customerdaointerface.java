package Bankruptcy;

public interface customerdao {
public int insertcustomer(customer c);	
public customer getcustomer(String FirstName,String LastName,String LoanId, String BankruptcyId);

}