package net.javaguides.jsp.jdbc.bean;

import java.io.Serializable;


public class customer implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1 L;
    private String loan_id;
    private String pwd;
    public String getloan_id() {
        return loan_id;
    }
    public void setloan_id(String loan_id) {
        this.loan_id = loan_id;
    }
    public String getpwd() {
        return pwd;
    }
    public void setpwd(String pwd) {
        this.pwd = pwd;
    }
    
}