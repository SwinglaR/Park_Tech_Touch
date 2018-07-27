package CONTROLLER;

import java.io.IOException;
import java.nio.channels.SeekableByteChannel;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;






import DAO.LoginDAO;
import DAO.ParkingProviderDAO;
import VO.LoginVO;
import VO.ParkingProviderVO;

/**
 * Servlet implementation class ParkingProvider
 */
@WebServlet("/ParkingProviderController")
public class ParkingProviderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParkingProviderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		HttpSession session=request.getSession();
		if(flag.equals("searchParkingProvider"))
		{
			searchParkingProvider(request,response);
		}
		else if(flag.equals("loginErrorMessage"))
		{
			loginErrorMessage(request,response);
		}
		else if(flag.equals("searchProvider"))
		{
			searchProvider(request,response);
		}
	}

	private void searchProvider(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        HttpSession session=request.getSession();
        int login_id =(Integer)session.getAttribute("userID");
        
        ParkingProviderVO parkingproviderVO= new ParkingProviderVO();
        ParkingProviderDAO parkingproviderDAO=new ParkingProviderDAO();
		
		List parkingProviderList=new ArrayList();
		parkingProviderList=parkingproviderDAO.searchParkingProvider(parkingproviderVO);
		
		LoginDAO loginDAO=new LoginDAO();
		LoginVO loginVO=new LoginVO();
		loginVO.setLogin_id((int)login_id);
		
		List LoginList=new ArrayList();
		LoginList=loginDAO.search(loginVO);
		
		session.setAttribute("LoginList",LoginList);
		session.setAttribute("parkingProviderList",parkingProviderList);
		response.sendRedirect("ADMIN/Edit_profile.jsp");
	}

	private void loginErrorMessage(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
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
		
	

	private void searchParkingProvider(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
        HttpSession session=request.getSession();
		
        
        ParkingProviderVO parkingproviderVO= new ParkingProviderVO();
        ParkingProviderDAO parkingproviderDAO=new ParkingProviderDAO();
		
		List parkingProviderList=new ArrayList();
		parkingProviderList=parkingproviderDAO.searchParkingProvider(parkingproviderVO);

		session.setAttribute("parkingProviderList",parkingProviderList);
		response.sendRedirect("ADMIN/Search_parking_provider.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		
		if(flag.equals("insertParkingProvider"))
		{
			insertParkingProvider(request,response);
		
		}
		if(flag.equals("updateProvider"))
		{
			updateProvider(request,response);
		}
		
	}

	private void updateProvider(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String parkingprovider_first_name=request.getParameter("parkingprovider_first_name");
		String parkingprovider_last_name=request.getParameter("parkingprovider_last_name");
		int parkingprovider_id_mobile_number=Integer.parseInt(request.getParameter("parkingprovider_id_mobile_number"));
		String email=request.getParameter("val_email");
		String password=request.getParameter("val_password");
		String user_type="parkingprovider";
		HttpSession session=request.getSession();
		
		int login_id =(Integer)session.getAttribute("userID");
		int parkingprovider_id=(Integer)session.getAttribute("ParkingproviderID");
		
		LoginVO loginVO =new LoginVO();
		loginVO.setEmail(email);
		loginVO.setPassword(password);
		loginVO.setUser_type(user_type);
		loginVO.setLogin_id(login_id);
		
		LoginDAO loginDAO=new LoginDAO();
		loginDAO.update(loginVO);
		
		
		ParkingProviderVO parkingproviderVO= new ParkingProviderVO();
		parkingproviderVO.setParkingprovider_id(parkingprovider_id);
		parkingproviderVO.setParkingprovider_first_name(parkingprovider_first_name);
		parkingproviderVO.setParkingprovider_last_name(parkingprovider_last_name);
		parkingproviderVO.setParkingprovider_mobile_number(parkingprovider_id_mobile_number);
		parkingproviderVO.setLoginVO(loginVO);
		
		ParkingProviderDAO parkingproviderDAO=new ParkingProviderDAO();
		parkingproviderDAO.updateParkingProvider(parkingproviderVO);
		response.sendRedirect("ADMIN/index.jsp");
		
	}

	private void insertParkingProvider(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int mobile_number=Integer.parseInt(request.getParameter("parkingprovider_mobile_number"));
		String first_name=request.getParameter("parkingprovider_first_name");
		String last_name=request.getParameter("parkingprovider_last_name");
		String email=request.getParameter("parkingprovider_email");
		String password=request.getParameter("parkingprovider_password");
		HttpSession session=request.getSession();
		String user_type="parkingprovider";
		session.setAttribute("user_type",user_type);
		LoginVO loginVO =new LoginVO();
		loginVO.setEmail(email);
		loginVO.setPassword(password);
		loginVO.setUser_type(user_type);
		
		LoginDAO loginDAO=new LoginDAO();
		loginDAO.insert(loginVO);
		
		
		ParkingProviderVO parkingproviderVO= new ParkingProviderVO();
		parkingproviderVO.setParkingprovider_first_name(first_name);
		parkingproviderVO.setParkingprovider_last_name(last_name);
		parkingproviderVO.setParkingprovider_mobile_number(mobile_number);
		parkingproviderVO.setLoginVO(loginVO);
		
		
		ParkingProviderDAO parkingproviderDAO=new ParkingProviderDAO();
		parkingproviderDAO.insertParkingProvider(parkingproviderVO);
		response.sendRedirect("USER/login.jsp");
		
	}

}
