package net.javaguides.jsp.jdbc.bean;

import java.io.Serializable;


public class manager implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1 L;
    private String bank_id;
    private String pwd;
    public String getBank_id() {
        return bank_id;
    }
    public void setbank_id(String bank_id) {
        this.bank_id = bank_id;
    }
    public String getpwd() {
        return pwd;
    }
    public void setpwd(String pwd) {
        this.pwd = pwd;
    }
    
}
