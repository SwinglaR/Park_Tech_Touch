package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.security.*;

import DAO.ClientDAO;
import DAO.LoginDAO;
import VO.ClientVO;
import VO.LoginVO;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/ClientController")
public class ClientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String flag=request.getParameter("flag");
	if(flag.equals("searchClient"))
	{
		searchClient(request,response);
	}
	else if(flag.equals("loginErrorMessage"))
	{
		loginErrorMessage(request,response);
	}
	}

	private void loginErrorMessage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String email= request.getParameter("email");
		
		
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(email);
		
		
		LoginDAO loginDAO = new LoginDAO();
		List searchEmail =loginDAO.searchEmail(loginVO);
		if(searchEmail.size() >=1)
		{
			session.setAttribute("flag", "true");
		}
		else
		{
			session.setAttribute("flag", "false");
		}
		response.sendRedirect("JSON/loginError.jsp");
		
	
		
		
	}

	private void searchClient(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		ClientVO clientVO=new ClientVO();
		ClientDAO clientDAO=new ClientDAO();
		
		List clientList=new ArrayList();
		clientList=clientDAO.search(clientVO);
		
		ss.setAttribute("clientList",clientList);
		response.sendRedirect("ADMIN/Search_client.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String flag=request.getParameter("flag");
	
	System.out.println("client flag:::::"+flag);
	if(flag.equals("insertClient"))
	{
		insertClient(request,response);
	}
	else if(flag.equals("forgotPassword"))
	{
		forgotPassword(request,response);
	}
	else if(flag.equals("setNewPassword"))
	{
		setNewPassword(request,response);
	}
	else if(flag.equals("updateClient"))
	{
		updateClient(request,response);
	}
	
	}
	
	private void updateClient(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String client_first_name=request.getParameter("client_first_name");
		String client_last_name=request.getParameter("client_last_name");
		String client_email=request.getParameter("client_email");
		String client_password=request.getParameter("client_password");
		String client_mobile_number=request.getParameter("client_mobile_number");
		System.out.println("INsdie method:::::");
		String user_type="client";
		
		int login_id =(Integer)session.getAttribute("userID");
		int client_id =(Integer)session.getAttribute("client_id");
		
		LoginVO loginVO =new LoginVO();
		loginVO.setLogin_id(login_id);
		loginVO.setEmail(client_email);
		loginVO.setPassword(client_password);
		loginVO.setUser_type(user_type);
		
		LoginDAO loginDAO=new LoginDAO();
		loginDAO.update(loginVO);
		
		ClientVO clientVO=new ClientVO();
		clientVO.setClient_first_name(client_first_name);
		clientVO.setClient_last_name(client_last_name);
		clientVO.setClient_mobile_number(client_mobile_number);
		clientVO.setClient_id(client_id);
		clientVO.setLoginVO(loginVO);
		
		ClientDAO clientDAO=new ClientDAO();
		clientDAO.updateClient(clientVO);
		
		response.sendRedirect("USER/dashboard.jsp");
		
		
	}

	int OTP= generateOTP(5);
	 int OTPforgetPassword = generateOTP(5);
	 HttpSession session=null;
	 HttpSession emailsession = null;
	 private void setNewPassword(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String email=(String) emailsession.getAttribute("email");
		 System.out.println("email from session : "+email);
		 int otp_code=Integer.parseInt(request.getParameter("otp_code"));
		 System.out.println("OTP Code:::::"+otp_code);
		 String new_password = request.getParameter("new_password");
		 
		
		 if(OTPforgetPassword == otp_code)
		 {
			 System.out.println("inside if");
			 LoginVO loginVO = new LoginVO();
			 loginVO.setEmail(email);
			 loginVO.setPassword(new_password);
			 
			 LoginDAO loginDAO = new LoginDAO();
			 loginDAO.updatePassword(loginVO);
			 
			 response.sendRedirect("USER/login.jsp");
		 }
		 else
		 {
			 HttpSession otpInvalid= request.getSession();
			 otpInvalid.setAttribute("otpInvalid","Entered OTP is Invalid! Please enter Valid OTP and try Again" );
			 response.sendRedirect("USER/OTP_Password.jsp");
		 }
		 
		
	}
	
	
	private void forgotPassword(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		
		
		String email=request.getParameter("email");
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(email);
		
		LoginDAO loginDAO = new LoginDAO();
		List searchEmail = loginDAO.searchEmail(loginVO);
		
		if(searchEmail.size()>=1)
		{
		sendMail(email, OTPforgetPassword);
		emailsession = request.getSession();
		emailsession.setAttribute("email", email);
		response.sendRedirect("USER/OTP_Password.jsp");
		}
		else
		{
			HttpSession otpSendError= request.getSession();
			otpSendError.setAttribute("otpSendError", "This Mail-ID is not registered with us yet.<br/>Please <a href='USER/registerationClient.jsp'>Sign Up</a> first!");
			response.sendRedirect("USER/resetpassword.jsp");
		}
		
		
	}
	
	public int generateOTP(int limit) {

        int otp = 0;

        if (limit > 5 || limit < 1)
            limit = 3;

        for (int i = 0; i < limit; i++) {

            int x = new Random().nextInt(9);

            if (x == 0 && i == 0)
                i--;
            else
                otp = (otp * 10) + x;
        }

        return otp;
    }
	
	protected void sendMail(String email, Integer OTP){

		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        try {
            MimeMessage message = new MimeMessage(mailSession);
   
            //
            
            String r = "<html><div><h1>This is your OTP Code : 111 </h1></div></html>";
            r = r.replaceAll("111", OTP.toString());
            
            message.setContent(r,"text/html" );
            message.setSubject("OTP for New Registration");
            
            InternetAddress sender = new InternetAddress("parktechtouch@gmail.com","PTT");
             InternetAddress receiver = new InternetAddress(email);
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
             message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 465, "parktechtouch@gmail.com", "parktechtouch@2015");
             transport.sendMessage(message, message.getAllRecipients());
            transport.close();
                      
        } catch (Exception e) {
            e.printStackTrace();
         }
		
		
		
	}

	private void insertClient(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String client_first_name=request.getParameter("client_first_name");
	String client_last_name=request.getParameter("client_last_name");
	String client_email=request.getParameter("client_email");
	String client_password=request.getParameter("client_password");
	String client_mobile_number=request.getParameter("client_mobile_number");
	System.out.println("INsdie method:::::");
	String user_type="client";
	
	LoginVO loginVO =new LoginVO();
	loginVO.setEmail(client_email);
	loginVO.setPassword(client_password);
	loginVO.setUser_type(user_type);
	
	LoginDAO loginDAO=new LoginDAO();
	loginDAO.insert(loginVO);
	
	ClientVO clientVO=new ClientVO();
	clientVO.setClient_first_name(client_first_name);
	clientVO.setClient_last_name(client_last_name);
	clientVO.setClient_mobile_number(client_mobile_number);
	
	clientVO.setLoginVO(loginVO);
	
	ClientDAO clientDAO=new ClientDAO();
	clientDAO.insert(clientVO);
	
	response.sendRedirect("USER/login.jsp");
	
	}
	
	
	
	
	}


