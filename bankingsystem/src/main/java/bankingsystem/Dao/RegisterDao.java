package bankingsystem.Dao;

import java.math.BigDecimal;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.apache.catalina.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import bankingsystem.entity.PrimaryAccount;
import bankingsystem.entity.UserAccount;




@Repository
public class RegisterDao {
	
	@Autowired
private HibernateTemplate hibernateTemplate;
	private static int nextAccountNumber = 11223145;
	@Transactional
	public void save(UserAccount account) {
		this.hibernateTemplate.saveOrUpdate(account);
	
	}
	@Transactional
	public void savep(PrimaryAccount account) {
		account.setAccountNumber(accountGen());
		account.setAccountBalance(new BigDecimal(0));
		this.hibernateTemplate.saveOrUpdate(account);
	
	}
	
	
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	public String loginCheck(String username, String password) {
		
		Session currentSession = sessionFactory.getCurrentSession();
				
		Query theQuery = currentSession.createQuery("from UserAccount u where u.username=:username AND u.password=:pass");
		theQuery.setParameter("username", username);
		theQuery.setParameter("pass", password);

		List results = theQuery.list();
		
		if ((results!=null) && (results.size()>0)){
			return "success";
		}
		else {
		return "failed";
	}
		
}
@Transactional
	public List<UserAccount> getAccount(Long customerID) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<UserAccount> theQuery = currentSession.createQuery("from UserAccount p where p.customerID=:customerID");
		theQuery.setParameter("customerID", customerID);
		List<UserAccount> theAccount = theQuery.getResultList();
		
//System.out.println(theAccount);
		return theAccount;
	}
@Transactional
public UserAccount get(String username) {
	Session currentSession = sessionFactory.getCurrentSession();
	Query<UserAccount> theQuery = currentSession.createQuery("from UserAccount p where p.username=:username");
	theQuery.setParameter("username", username);
	return theQuery.getSingleResult();
}
@Transactional
public PrimaryAccount getp(Long customerID) {
	Session currentSession = sessionFactory.getCurrentSession();
	Query<PrimaryAccount> theQuery = currentSession.createQuery("from PrimaryAccount  where accountID=:customerID");
	theQuery.setParameter("customerID", customerID);
	return theQuery.getSingleResult();
}
@Transactional
public void deposite(String username,double accountBalance) {
	UserAccount ua=get(username);
	Long customerID=ua.getCustomerID();
	//System.out.println(customerID);
	PrimaryAccount pa=getp(customerID);
	
	System.out.println(pa.getAccountID());
	
	//theQuery.setParameter("accountID", pa.getAccountID());
	
	
	 pa.setAccountBalance(pa.getAccountBalance().add(new BigDecimal(accountBalance)));
    this.hibernateTemplate.saveOrUpdate(pa);
}
private int accountGen() {
    return ++nextAccountNumber;
}
@Transactional
public void dowithdraw(String username, double accountBalance) {
	UserAccount ua=get(username);
	Long customerID=ua.getCustomerID();
	PrimaryAccount pa=getp(customerID);

	 pa.setAccountBalance(pa.getAccountBalance().subtract(new BigDecimal(accountBalance)));
   this.hibernateTemplate.saveOrUpdate(pa);
}
@Transactional
public void delete(String username) {
	UserAccount ua=get(username);
	Long customerID=ua.getCustomerID();
	PrimaryAccount pa=getp(customerID);
	this.hibernateTemplate.delete(pa);
	this.hibernateTemplate.delete(ua);
	// TODO Auto-generated method stub
	
}


}
