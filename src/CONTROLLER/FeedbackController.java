package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BookingMultiDateDAO;
import DAO.FeedbackDAO;
import DAO.ParkingProviderDAO;
import VO.BookingMultiDateVO;
import VO.FeedbackVO;
import VO.LoginVO;
import VO.ParkingProviderVO;
import VO.ParkinglotsVO;

/**
 * Servlet implementation class FeedbackController
 */
@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag=request.getParameter("flag");
		
		if(flag.equals("viewFeedbackAndRatings"))
		{
			viewFeedbackAndRatings(request,response);
		}
		else if(flag.equals("searchParkingProviderFeedback"))
		{
			searchParkingProviderFeedback(request,response);
		}
		else if(flag.equals("deleteFeedback"))
		{
			deleteFeedback(request,response);
		}
	}
	

	private void deleteFeedback(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int feedbackId=Integer.parseInt(request.getParameter("id"));
		
		FeedbackDAO feedbackDAO=new FeedbackDAO();
		FeedbackVO feedbackVO=new FeedbackVO();
		feedbackVO.setFeedback_id(feedbackId);
		feedbackDAO.deleteFeedback(feedbackVO);
		
		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
		
		if(!feedbackDAO.deleteFeedback(feedbackVO)){
			
			httpSession.setAttribute("errorMsg","Please remove all child rows first");
			System.out.print("hi...");
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
			System.out.print("in else...");
		}
		HttpSession session=request.getSession();
		
		String userType=(String)session.getAttribute("user_type");
		
		if(userType.equals("admin"))
		{
			viewFeedbackAndRatings(request,response);
		}
		else
		{	 
			searchParkingProviderFeedback(request, response);
		}
	
	}

	private void searchParkingProviderFeedback(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession ss=request.getSession();
		
		String parkingProviderId = request.getParameter("parkingProviderId");
		
		int parkingProviderIdInt = 0;

		if(parkingProviderId == null)
		{
			Integer userId = (int) request.getSession().getAttribute("userID");
			LoginVO loginVO = new LoginVO();
			loginVO.setLogin_id(userId);
			
			ParkingProviderDAO parkingProviderDAO = new ParkingProviderDAO();
			ParkingProviderVO providerVO = (ParkingProviderVO) parkingProviderDAO.searchSingleUser(loginVO).get(0);
			
			parkingProviderIdInt = providerVO.getParkingprovider_id();
		}
		else
		{
			parkingProviderIdInt = Integer.parseInt(parkingProviderId);
		}
	

		ParkingProviderVO parkingProviderVO= new ParkingProviderVO();
		parkingProviderVO.setParkingprovider_id(parkingProviderIdInt);

		
		FeedbackDAO feedbackDAO=new FeedbackDAO();
		FeedbackVO feedbackVO =new FeedbackVO();
		
		
		List feedbackAndRatingListPP=new ArrayList();
		feedbackAndRatingListPP=feedbackDAO.searchFeedbackAndRatingsPP(parkingProviderVO);
		
		ss.setAttribute("feedbackAndRatingListPP",feedbackAndRatingListPP);
		
		response.sendRedirect("ADMIN/viewFeedbackAndRatings.jsp");
	
		
	}

	private void viewFeedbackAndRatings(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession ss=request.getSession();
		
		
		FeedbackDAO feedbackDAO=new FeedbackDAO();
		FeedbackVO feedbackVO =new FeedbackVO();
		
		List feedbackAndRatingList=new ArrayList();
		feedbackAndRatingList=feedbackDAO.searchFeedbackAndRatings(feedbackVO);
		
		ss.setAttribute("feedbackAndRatingList",feedbackAndRatingList);
		
		response.sendRedirect("ADMIN/viewFeedbackAndRatings.jsp");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("insertFeedback"))
		{
			insertFeedback(request,response);
		}
		
	}

	private void insertFeedback(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		int userID=(Integer)session.getAttribute("userID");
		int parkinglots_id=Integer.parseInt(request.getParameter("parkinglots_id"));
		String feedback=request.getParameter("feedback");
		int rating=Integer.parseInt(request.getParameter("rating"));
		
		LoginVO loginVO=new LoginVO();
		loginVO.setLogin_id((int) userID);
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		parkinglotsVO.setParkinglots_id(parkinglots_id);
		
		FeedbackVO feedbackVO=new FeedbackVO();
		feedbackVO.setFeedback(feedback);
		feedbackVO.setRating(rating);
		feedbackVO.setParkinglotsVO(parkinglotsVO);
		feedbackVO.setLoginVO(loginVO);
		
		FeedbackDAO feedbackDAO=new FeedbackDAO();
		feedbackDAO.insertFeedback(feedbackVO);
		response.sendRedirect("USER/parkinglot_details.jsp");
	}

}
