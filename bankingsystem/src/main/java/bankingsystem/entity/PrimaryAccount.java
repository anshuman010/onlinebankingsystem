package bankingsystem.entity;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
@Entity
public class PrimaryAccount {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)

//@JoinColumn(name="customerID")
    private Long accountID;
	
	
    private int accountNumber;
    
	
    private BigDecimal accountBalance;


	public Long getAccountID() {
		return accountID;
	}


	public void setAccountID(Long accountID) {
		this.accountID = accountID;
	}


	public int getAccountNumber() {
		return accountNumber;
	}


	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}


	public BigDecimal getAccountBalance() {
		return accountBalance;
	}


	public void setAccountBalance(BigDecimal accountBalance) {
		this.accountBalance = accountBalance;
	}


	public PrimaryAccount() {
		super();
		// TODO Auto-generated constructor stub
	}


	public PrimaryAccount(Long accountID, int accountNumber, BigDecimal accountBalance) {
		super();
		this.accountID = accountID;
		this.accountNumber = accountNumber;
		this.accountBalance = accountBalance;
	}


	@Override
	public String toString() {
		return "PrimaryAccount [accountID=" + accountID + ", accountNumber=" + accountNumber + ", accountBalance="
				+ accountBalance + "]";
	}
    
}
