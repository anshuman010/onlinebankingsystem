package bankingsystem.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import bankingsystem.Dao.RegisterDao;
import bankingsystem.entity.PrimaryAccount;
import bankingsystem.entity.UserAccount;

@Controller
public class login {
	@Autowired
	RegisterDao dao;

@RequestMapping("/")
public String home() {
	return "home";
}

@RequestMapping("/register")
public String register() {
	return "register";
}
@RequestMapping(value="/registerpost",method=RequestMethod.POST)
public String registeruser(@ModelAttribute("registerpost") UserAccount account,Model m) {
	System.out.println("hello");
	this.dao.save(account);
	
	UserAccount acc=this.dao.get(account.getUsername());
	PrimaryAccount pm=new PrimaryAccount();
	pm.setAccountID(acc.getCustomerID());
	this.dao.savep(pm);
	return "home";
}
@RequestMapping(value = "/login", method = RequestMethod.POST)
public String loginSuccess(HttpServletRequest request, HttpServletResponse response, HttpSession session,
	                 		UserAccount login, Model theModel) {
	
	String user = login.getUsername();
	System.out.println(user);
	String userlogin = this.dao.loginCheck(login.getUsername(), login.getPassword());
	
	if (userlogin.equals("success")) {

		session.setAttribute("session", user);
		session.setMaxInactiveInterval(10 * 60);
	//	UserAccount acc =this.dao.getProduct(user);
		UserAccount acc=this.dao.get(login.getUsername());
		
		theModel.addAttribute("user",user);
		theModel.addAttribute("cust_id", acc.getCustomerID());
		PrimaryAccount primay=this.dao.getp(acc.getCustomerID());
		
		theModel.addAttribute("amount", primay.getAccountBalance());
		return "index";

	} else {
		theModel.addAttribute("message", "Wrong customerID or Password");
		return "home";

	}

}
@RequestMapping("login/deposit/{username}")
public String deposit(@PathVariable("username") String username,Model model) {
   
	model.addAttribute("username",username);
  
	UserAccount acc=this.dao.get(username);
	long cust_id=acc.getCustomerID();
	model.addAttribute("cust_id",cust_id);
    return "deposit";
}
@RequestMapping(value = "login/deposit/dodeposit", method = RequestMethod.POST)
public String dodeposit(@ModelAttribute("amount") String amount,@ModelAttribute("username") String username,Model m)
{	System.out.println("depo");
System.out.println(amount);
System.out.println(username);
	this.dao.deposite(username,  Double.parseDouble(amount));
	return "deposit";
}

@RequestMapping("/withdraw/{username}")
public String withdraw(@PathVariable("username") String username,Model model) {
   
	model.addAttribute("username",username);
  
	UserAccount acc=this.dao.get(username);
	long cust_id=acc.getCustomerID();
	model.addAttribute("cust_id",cust_id);
    return "withdraw";
}

@RequestMapping(value = "dowithdraw", method = RequestMethod.POST)
public String dowithdraw(@ModelAttribute("amount") String amount,@ModelAttribute("username") String username,Model m)
{
	this.dao.dowithdraw(username,  Double.parseDouble(amount));
	return "withdraw";
}
@RequestMapping("login/delete/{username}")
public RedirectView delete(@PathVariable("username")String username,HttpServletRequest request) {
		
	this.dao.delete(username);
		RedirectView rd=new RedirectView();
		rd.setUrl(request.getContextPath()+"/");
		return rd;
	}
@RequestMapping("login/logout")
	public RedirectView logout(HttpServletRequest request) {
		request.getSession().invalidate();
		RedirectView rd=new RedirectView();
		rd.setUrl(request.getContextPath()+"/");
		return rd;
	}
/*
@RequestMapping("/index")
public String index() {
	return "index";
}*/


	
}
