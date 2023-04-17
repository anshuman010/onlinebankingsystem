package bankingsystem.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity

public class UserAccount {
	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	
	private Long customerID;
	@Column(nullable = false, unique = true)
	   private String username;
	    private String password;
	    private String firstName;
	    private String lastName;
	    private String email;
		public Long getCustomerID() {
			return customerID;
		}
		public void setCustomerID(Long customerID) {
			this.customerID = customerID;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public UserAccount() {
			super();
			// TODO Auto-generated constructor stub
		}
		public UserAccount(Long customerID, String username, String password, String firstName, String lastName,
				String email) {
			super();
			this.customerID = customerID;
			this.username = username;
			this.password = password;
			this.firstName = firstName;
			this.lastName = lastName;
			this.email = email;
		}
		@Override
		public String toString() {
			return "UserAccount [customerID=" + customerID + ", username=" + username + ", password=" + password
					+ ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + "]";
		}

	

}
