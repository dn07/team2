package collector;

import java.util.Calendar;
import java.util.Date;

public class LoanProcessor {

    public void processLoan(Loan loan){
        return;
    }

    public String getStatus(Loan loan){

        return null;
    }
    
    public boolean checkDaysConstraint(Loan loan) { 
    	if(loan.getPromiseCounter()==0 && loan.getDays()>0 && loan.getDays()<=15)
    	{
    		return true;
    	}
        else if(loan.getPromiseCounter()==1 && loan.getDays()>0 && loan.getDays()<=5)
    	{
    		return true;
    	}
    	else if(loan.getPromiseCounter()==2 )
    	{
    		return true;
    	}
    	else
    	{
    		return false;
    	}
    }

    public Loan findStatus(Loan loan){
        LoanProcessor loanProcessor = new LoanProcessor();
        if(loan.getPromiseCounter()==1){  
              boolean isPromisePassed =  loanProcessor.isPromisePassed(loan.getPromiseToPayEndDate(), loan.getDays());
            if(isPromisePassed)
            {
                loan.setStatus("Pending");
            return loan;
            }
            else{
                loan.setStatus("Promise to Pay 1");
                return loan;
            }
          }
        else if(loan.getPromiseCounter()==2){  //else if(loan.getPromiseCounter()==2)
            boolean isPromisePassed =  loanProcessor.isPromisePassed(loan.getPromiseToPayEndDate(), loan.getDays());
            if(isPromisePassed){
                loan.setStatus("Pending");

                return loan;
            }else{
                loan.setStatus("Promise to Pay 2");

                return loan;
            }

        }else{
            loan.setStatus("Pending");

           return loan;
        }
    }


    private boolean isPromisePassed(Date promiseToPayEndDate, int days) {
        //String status = "Pending";
        Calendar c = Calendar.getInstance();
        //c.add(Calendar.DATE, days);
        Date presentDate = Calendar.getInstance().getTime();

        System.out.println("Checking date..." +days+ presentDate+" "+promiseToPayEndDate);
        int i = presentDate.compareTo(promiseToPayEndDate);
        if (i < 0 || i==0) {
            return false;
        }else{
            return true;
        }

    }


//    public static void main(String[] args){
//        LoanProcessor loanProcessor = new LoanProcessor();
        //Loan loan = loanProcessor.getLoanObjectFromDB();

        //System.out.println(loanProcessor.findStatus(loan));
    

    /*
    This is the time when collector clicks promise to pay 
     */
//    private Loan getLoanObjectFromDB(){
//        Loan loan = new Loan();
//        //loan.setLoanId("1111");
//        //loan.setName("Sonali");
//       // loan.setPromiseToPay1(true);
//        loan.setPromiseCounter(1);
//        loan.setPromiseToPayDuration(10);
//        //check for duration
//        Calendar cal = Calendar.getInstance();
//        cal.add(Calendar.DATE, days);
//        loan.setPromiseToPayEndDate(cal.getTime());
//        return loan;
    }
