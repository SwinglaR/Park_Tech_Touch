package FILTER;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DAO.BookingContinuousPeriodDAO;
import DAO.BookingMultiDateDAO;
import DAO.ClientDAO;
import DAO.FaqCategoryDAO;
import DAO.FaqDAO;
import DAO.LoginDAO;
import DAO.ParkingProviderDAO;
import DAO.ParkinglotsDAO;
import VO.BookParkingSlotsVO;
import VO.BookingContinuousPeriodVO;
import VO.BookingMultiDateVO;
import VO.ClientVO;
import VO.FaqCategoryVO;
import VO.FaqVO;
import VO.LoginVO;
import VO.ParkingProviderVO;
import VO.ParkinglotsVO;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		HttpSession session =((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");
		session.setAttribute("errorMessage",null);
		
		
		
		String uri = ((HttpServletRequest)request).getRequestURI();
		
		if(uri.contains("/USER/faq.jsp"))
		{
			FaqCategoryDAO faqCategoryDAO=new FaqCategoryDAO();
			FaqCategoryVO faqCategoryVO=new FaqCategoryVO();
			
			List ls=new ArrayList();
			ls=faqCategoryDAO.search(faqCategoryVO);
			session.setAttribute("faqCategoryList",ls);
			
			FaqDAO faqDAO=new FaqDAO();
			FaqVO faqVO=new FaqVO();
			
			
			List ls1=faqDAO.search(faqVO);
			session.setAttribute("faqList",ls1);
			
			requestDispatcher = request.getRequestDispatcher("/USER/faq.jsp");
			requestDispatcher.forward(request, response);
		}
		
		if(uri.contains("ParkingProviderController") ||uri.contains(".js") ||uri.contains("/JSON") || uri.contains("OTP_Password.jsp")|| uri.contains("resetpassword.jsp")||uri.contains("ClientController")||uri.contains("BookParkingSlotsController")||uri.contains("ParkinglotsController")||uri.contains("SearchController")||uri.contains("StateController")||uri.contains("AreaController")||uri.contains("CityController")||uri.contains("index.jsp")||uri.contains("registrationClient.jsp")||uri.contains("registrationParkingProvider.jsp")||uri.contains("index_user.jsp")||uri.contains(".css")||uri.contains("/css") || uri.contains("/js") && !uri.contains(".jsp") || uri.contains("/img")|| uri.contains("/fonts"))
		{
			//System.out.println("inside reg");
			
			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
			//requestDispatcher.forward(request,response);  
			
			chain.doFilter(request,response);	
		}			
		else if (flag!= null && flag.equals("logout")) {
			//session.removeAttribute("userID");
			//System.out.println("logout in else if");
		
			session.invalidate();
			
			requestDispatcher = request.getRequestDispatcher("/USER/index_user.jsp");
			requestDispatcher.forward(request, response);
			
		}
		else if(flag != null && flag.equals("login") )
		{
			//System.out.println("Login");
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			System.out.println("email:::::::::::"+email);
			System.out.println("password::::::"+password);
			
			LoginVO loginVO = new LoginVO();
			loginVO.setEmail(email);
			loginVO.setPassword(password);
			
			LoginDAO loginDAO=new LoginDAO();
			
			List list =  loginDAO.authentication(loginVO);
			
			System.out.println("Userlist size="+list.size());
			
			LoginVO user=new LoginVO();
			
			if(list != null && list.size()>=1)
			{
				
				/*Iterator itr = list.iterator();
				*/
				/*while(itr.hasNext())
				{
				*/
				user=(LoginVO) list.get(0);
				System.out.println("inside");
				
				int y = user.getLogin_id();
				String y1=user.getEmail();
				
				session.setAttribute("userID",y);
				session.setAttribute("userName",y1);
				
				
				String type = user.getUser_type();
				
				session.setAttribute("user_type",type);
				
				
				if(type.equalsIgnoreCase("admin"))
				{
					LoginDAO loginDAO2=new LoginDAO();
					BookParkingSlotsVO bookParkingSlotsVO=new BookParkingSlotsVO();
					List bookingChart=new ArrayList();
					bookingChart=loginDAO2.bookingChart(bookParkingSlotsVO);
					
					session.setAttribute("bookingChart",bookingChart);
					
					System.out.println("ls:::::::::::"+bookingChart.size());
					
					BookingContinuousPeriodVO bookingContinuousPeriodVO = new BookingContinuousPeriodVO();
					BookingContinuousPeriodDAO bookingContinuousPeriodDAO = new BookingContinuousPeriodDAO();
					List totalContinous=new ArrayList(); 
					totalContinous=bookingContinuousPeriodDAO.searchContinuousPeriod(bookingContinuousPeriodVO);
					
					session.setAttribute("totalContinous",totalContinous.size());
					
					BookingMultiDateVO bookingMultiDateVO=new BookingMultiDateVO();
					BookingMultiDateDAO bookingMultiDateDAO = new BookingMultiDateDAO();
					List totalMulti=new ArrayList(); 
					totalMulti=bookingMultiDateDAO.searchMultidate(bookingMultiDateVO);
					
					session.setAttribute("totalMulti",totalMulti.size());
					
					ClientVO clientVO =new ClientVO();
					ClientDAO clientDAO =new ClientDAO();
					
					List totalClient=new ArrayList(); 
					
					totalClient=clientDAO.search(clientVO);
					session.setAttribute("totalClient",totalClient.size());
					
					ParkingProviderVO parkingProviderVO = new ParkingProviderVO();
					ParkingProviderDAO parkingProviderDAO = new ParkingProviderDAO();
					List totalParkingProvider=new ArrayList(); 
					totalParkingProvider=parkingProviderDAO.searchParkingProvider(parkingProviderVO);
					session.setAttribute("totalParkingProvider",totalParkingProvider.size());
					
					
					requestDispatcher = request.getRequestDispatcher("/ADMIN/index.jsp");  
					requestDispatcher.forward(request,response);
					
				}
				else if(type.equalsIgnoreCase("parkingprovider"))
				{
					ParkingProviderVO parkingProviderVO= new ParkingProviderVO();
					
					ParkingProviderDAO parkingProviderDAO= new  ParkingProviderDAO();
					List SingleUser=  parkingProviderDAO.searchSingleUser(user);
					
					parkingProviderVO=(ParkingProviderVO) SingleUser.get(0);
					
					int parkingprovider_id= parkingProviderVO.getParkingprovider_id();
					String parkingprovider_name=parkingProviderVO.getParkingprovider_first_name();
					String parkingprovider_name1=parkingProviderVO.getParkingprovider_last_name();
					
					session.setAttribute("ParkingproviderID",parkingprovider_id);
					session.setAttribute("parkingprovider_name",parkingprovider_name);
					session.setAttribute("parkingprovider_name1",parkingprovider_name1);
					int ParkingProviderID=(Integer)session.getAttribute("ParkingproviderID");
					parkingProviderVO.setParkingprovider_id(ParkingProviderID);
					
					ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
					List ParkingSlotsOfProvider=new ArrayList();
					ParkingSlotsOfProvider=parkinglotsDAO.searchParkingProviderLots(parkingProviderVO);
					
					session.setAttribute("ParkingSlotsOfProvider",ParkingSlotsOfProvider);
					
					ParkinglotsDAO parkinglotsDAO1=new ParkinglotsDAO();
					ParkinglotsVO parkinglotsVO1=new ParkinglotsVO();

					List lotList=new ArrayList();
					lotList=parkinglotsDAO1.search(parkinglotsVO1);

					session.setAttribute("lotList",lotList);

					
					requestDispatcher = request.getRequestDispatcher("/ADMIN/index.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("client"))
				{
					System.out.println("client");
					
					ClientVO clientVO=new ClientVO();
					ClientDAO clientDAO=new ClientDAO();
					
					List SingleUser=  clientDAO.searchSingleUser(user);
					
					System.out.println(SingleUser.size());
					clientVO=(ClientVO)SingleUser.get(0);
					
					int client_id=clientVO.getClient_id();
					String clientName=clientVO.getClient_first_name();
					System.out.println("nammmmmmmmmmmmmmmmmmmmmm"+clientName);
					
					String number=clientVO.getClient_mobile_number();
					System.out.println("hsghgshgshghsghgshghsghsghsghgsdhg"+number);
					session.setAttribute("client_id",client_id);
					session.setAttribute("number",number);
					session.setAttribute("clientName",clientName);
					
					
					
					
					requestDispatcher = request.getRequestDispatcher("/USER/index_user.jsp");  
					requestDispatcher.forward(request,response);
				}
				/*else
				{
					System.out.println("sorryyyyyyyyyyyyy");
					requestDispatcher = request.getRequestDispatcher("/USER/login.jsp");  
					requestDispatcher.forward(request,response);  
				}*/
				
			}
			
			else
			{
				System.out.println("ELSE PART111");
				if(email == "" || password == "")
				{
					session.setAttribute("errorMessage", "Please Enter Email-Id Or Password");
				}
				
				else
				{
				session.setAttribute("errorMessage", "Invalid Email or Password... Please Enter Valid Username or Password");
				}
				requestDispatcher = request.getRequestDispatcher("/USER/login.jsp");
				requestDispatcher.forward(request,response);  		
			}	
	}

		else if(session.getAttribute("userID") != null)
		{
			String h = (String)session.getAttribute("user_type");
			System.out.println("type = = = " + h);
			
			if(h!=null && h.equals("admin")){
				
			System.out.println("chain");
			chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("parkingprovider"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else if(h!=null && h.equals("client"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("");  
				rd.forward(request,response);
			}
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("/USER/login.jsp");  
			rd.forward(request,response);  
			
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
