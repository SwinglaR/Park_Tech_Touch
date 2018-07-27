package CONTROLLER;

import java.io.IOException;
import java.nio.channels.SeekableByteChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AreaDAO;
import DAO.BookParkingSlotsDAO;
import DAO.CityDAO;
import DAO.FeedbackDAO;
import DAO.ParkinglotsDAO;
import DAO.SearchDAO;
import DAO.StateDAO;
import VO.AreaVO;
import VO.BookParkingSlotsVO;
import VO.BookingContinuousPeriodVO;
import VO.BookingMultiDateVO;
import VO.CityVO;
import VO.FeedbackVO;
import VO.ParkinglotsVO;

import VO.StateVO;

/**
 * Servlet implementation class SearchController
 */
@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session=request.getSession();
		
		String flag = request.getParameter("flag");
		
		if(flag.equals("searchParking"))
		{
			searchParking(request,response);
		}
		else if(flag.equals("searchParkinglot"))
		{   
			searchParking(request,response);
			
		}
		else if(flag.equals("selectLot"))
		{
			selectLot(request,response);
		}
		else if(flag.equals("Select"))
		{
			reSelect(request,response);
		}

		
	}
	private void reSelect(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Inside reselect");
		HttpSession session=request.getSession();
		int area_id=(Integer)session.getAttribute("area_id");
		
		int parkinglots_id=Integer.parseInt(request.getParameter("var"));
		int price4Wheeler=Integer.parseInt(request.getParameter("4rate"));
		int price2Wheeler=Integer.parseInt(request.getParameter("2rate"));
		
		session.removeAttribute("price2Wheeler");
		session.removeAttribute("price4Wheeler");
		
		session.setAttribute("price2Wheeler", price2Wheeler);
		session.setAttribute("price4Wheeler", price4Wheeler);
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		parkinglotsVO.setParkinglots_id(parkinglots_id);
		session.setAttribute("parkinglots_id", parkinglots_id);
		
		List selectList=new ArrayList();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		selectList=parkinglotsDAO.selectLot(parkinglotsVO);
		
		session.setAttribute("selectList",selectList);
		
		AreaVO areaVO = new AreaVO();
		areaVO.setArea_id(area_id);
		List recommendationList = new ArrayList();
		recommendationList = parkinglotsDAO.recommendationLot(areaVO);
		session.setAttribute("recommendationList", recommendationList);
		
		List rateList = new ArrayList();
		ParkinglotsVO parkinglotsVO1= new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO1 = new ParkinglotsDAO();
		rateList=parkinglotsDAO1.search(parkinglotsVO1);
		session.setAttribute("rateList",rateList);
		
		response.sendRedirect("USER/parkinglot_details.jsp");
		
	}

	private void selectLot(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int area_id=(Integer)session.getAttribute("area_id");
		int price4Wheeler =Integer.parseInt(request.getParameter("price4wheeler"));
		int price2Wheeler = Integer.parseInt(request.getParameter("price2wheeler"));
		int parkinglots_id=Integer.parseInt(request.getParameter("var"));
		
		session.setAttribute("price2Wheeler", price2Wheeler);
		session.setAttribute("price4Wheeler", price4Wheeler);
		
		String start_time=(String)session.getAttribute("start_time");
		String end_time=(String)session.getAttribute("end_time");
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		parkinglotsVO.setParkinglots_id(parkinglots_id);
		session.setAttribute("parkinglots_id", parkinglots_id);
		
		List selectList=new ArrayList();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		selectList=parkinglotsDAO.selectLot(parkinglotsVO);
		
		session.setAttribute("start_time",start_time);
		session.setAttribute("end_time",end_time);
		
		session.setAttribute("selectList",selectList);
		 
		AreaVO areaVO = new AreaVO();
		areaVO.setArea_id(area_id);
		List recommendationList = new ArrayList();
		recommendationList = parkinglotsDAO.recommendationLot(areaVO);
		session.setAttribute("recommendationList", recommendationList);
		
		List rateList = new ArrayList();
		ParkinglotsVO parkinglotsVO1 = new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO1 = new ParkinglotsDAO();
		rateList=parkinglotsDAO1.search(parkinglotsVO1);
		session.setAttribute("rateList",rateList);
		
		rateList.size();
		
		response.sendRedirect("USER/parkinglot_details.jsp");
	
	}


	private void searchParking(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String start_date=request.getParameter("start_date");
		String end_date=request.getParameter("end_date");
		
		String start_date1=request.getParameter("start_date");
		String end_date1=request.getParameter("end_date");
		
		BookingContinuousPeriodVO bookingContinuousPeriodVO=new BookingContinuousPeriodVO();
		BookingMultiDateVO bookingMultiDateVO=new BookingMultiDateVO();
		
		session.setAttribute("start_date1",start_date1);
		session.setAttribute("end_date1",end_date1);
		
		SearchDAO searchDAO=new SearchDAO();
		
		
		bookingContinuousPeriodVO.setStart_date(start_date1);
		bookingContinuousPeriodVO.setEnd_date(end_date1);
		List date=searchDAO.search(bookingContinuousPeriodVO);
		List date1=searchDAO.searchMulti(bookingContinuousPeriodVO);
		
		if(date1.size() != 0 || date1.size() != 0)
		{
			
		
		String s="";
		
		boolean flag=false;
	
		for(int i=0;i<date.size();i++)
		{
			if(i==date.size()-1)
			{
				flag=true;
			s=s+ ""+((BookingContinuousPeriodVO) date.get(i)).getBookParkingSlotsVO().getBookParkingSlots_id()+"";
			}
			else
			{
				s=s+ ""+((BookingContinuousPeriodVO) date.get(i)).getBookParkingSlotsVO().getBookParkingSlots_id()+",";
			}
		}
		for(int i=0;i<date1.size();i++)
		{
			if(flag)
			{
				s=s+",";
				flag=false;
			}
			if(i==date1.size()-1)
			{
				s=s+ ""+((BookingMultiDateVO) date1.get(i)).getBookParkingSlotsVO().getBookParkingSlots_id()+"";
			}
			else
			{
				s=s+ ""+((BookingMultiDateVO) date1.get(i)).getBookParkingSlotsVO().getBookParkingSlots_id()+",";
			}
		}
		System.out.println(s);
		
		FeedbackVO feedbackVO1=new FeedbackVO();
		feedbackVO1.setFeedback(s);
		
		BookParkingSlotsDAO bookParkingSlotsDAO=new BookParkingSlotsDAO();
		List book1=bookParkingSlotsDAO.ListCount(feedbackVO1);
		
		
		for (Iterator iterator = book1.iterator(); iterator.hasNext();) 
		{
			Object[] object = (Object[]) iterator.next();
			Long fourwheel = (Long)object[0];
			Long twowheel = (Long)object[1];
			ParkinglotsVO parkinglotsVO = (ParkinglotsVO)object[2];
			System.out.println("Total two wheeler::::"+parkinglotsVO.getVal_2capacity());
			System.out.println("Total four wheeler::::"+parkinglotsVO.getVal_4capacity());
			
			System.out.println(fourwheel+"fourwheel");
			System.out.println(twowheel+"twowheel");
			
			String ploatname=parkinglotsVO.getVal_plotname2();
			System.out.println(ploatname+"ploatname");
		}
		session.setAttribute("book1",book1);
		}
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO = new ParkinglotsDAO();
		
		List priceList=new ArrayList();
		priceList=parkinglotsDAO.search(parkinglotsVO);
		session.setAttribute("priceList",priceList);
		
		
		
		/*
		 * comment by purav
		 * BookParkingSlotsVO bookParkingSlotsVO=new BookParkingSlotsVO();
		int w4 = 0,w2=0;
		for(int i=0;i<book1.size();i++)
		{
			bookParkingSlotsVO=(BookParkingSlotsVO) book1.get(i);
			int a4=bookParkingSlotsVO.getFourWheeler();
			int a2=bookParkingSlotsVO.getTwoWheeler();
			
			w4=w4+a4;
			w2=w2+a2;
			
		}*/
		
		/*int a=0;
		for(int i=0;i<book1.size();i++)
		{
			bookParkingSlotsVO=(BookParkingSlotsVO) book1.get(i);
			int s1=bookParkingSlotsVO.getParkinglotsVO().getParkinglots_id();
			
			if(s1>a)
			{
				a=s1;
				System.out.println("-----"+s1);
			}
			else
			{
				a=a;
			}
		}*/
		
		/*System.out.println(a);*/
		
		/*ParkingslotsDAO parkinglotsDAO = new ParkingslotsDAO();
		List parkingLotsList = parkinglotsDAO.search(null);
		
		Map map = new HashMap();
		
		Iterator parkingLotsItr = parkingLotsList.iterator();
		while(parkingLotsItr.hasNext())
		{
			ParkinglotsVO parkinglotsVO = (ParkinglotsVO) parkingLotsItr.next();
			int parkingLotsId = parkinglotsVO.getParkinglots_id();
			
			Iterator bookItr = book1.iterator();
			
			int fourWheelerBooking = 0;
			int twoWheelerBooking = 0;
			
			List totalBooking = new ArrayList();
			
			while(bookItr.hasNext())
			{
				BookParkingSlotsVO slotsVO = (BookParkingSlotsVO) bookItr.next();
				int parkingLotsIdFromParkingSlots = slotsVO.getParkinglotsVO().getParkinglots_id();
				
				if(parkingLotsId == parkingLotsIdFromParkingSlots)
				{
					fourWheelerBooking = fourWheelerBooking + slotsVO.getFourWheeler();
					twoWheelerBooking = twoWheelerBooking + slotsVO.getTwoWheeler();
					
					totalBooking.add(fourWheelerBooking);
					totalBooking.add(twoWheelerBooking);
				}
			}
			map.put(parkinglotsVO, totalBooking);
		}
		
		session.setAttribute("allBooking", map);
		*/
		/**/
		
		int state_id=Integer.parseInt(request.getParameter("val_statename"));
		int city_id=Integer.parseInt(request.getParameter("val_cityname"));
		int area_id=Integer.parseInt(request.getParameter("val_areaname"));
		String start_time=request.getParameter("start_time");
		String end_time=request.getParameter("end_time");
		
		
		StateVO stateVO=new StateVO();
		StateDAO stateDAO=new StateDAO();
		List ls=new ArrayList();
		ls=stateDAO.search(stateVO);
		
		CityVO cityVO=new CityVO();
		CityDAO cityDAO=new CityDAO();
		List ls1=new ArrayList();
		ls1=cityDAO.search(cityVO);
		
		AreaVO areaVO=new AreaVO();
		AreaDAO areaDAO=new AreaDAO();
		List ls2=new ArrayList();
		ls2=areaDAO.search(areaVO);
		
		session.setAttribute("stateList",ls);
		session.setAttribute("cityList",ls1);
		session.setAttribute("areaList",ls2);
		
		session.setAttribute("state_id",state_id);
		session.setAttribute("city_id",city_id);
		session.setAttribute("area_id",area_id);
		session.setAttribute("start_date", start_date);
		session.setAttribute("end_date", end_date);
		session.setAttribute("start_time",start_time);
		session.setAttribute("end_time",end_time);
		
		
		
		
		ParkinglotsVO parkinglotsVO1 = new ParkinglotsVO();
		stateVO.setState_id(state_id);
		parkinglotsVO.setV(stateVO);
		cityVO.setCity_id(city_id);
		parkinglotsVO.setV1(cityVO);
		areaVO.setArea_id(area_id);
		parkinglotsVO.setV2(areaVO);
		ParkinglotsDAO parkinglotsDAO1 = new ParkinglotsDAO();
		
		FeedbackVO feedbackVO=new FeedbackVO();
		FeedbackDAO feedbackDAO=new FeedbackDAO();
		List listRating1=feedbackDAO.searchRatingforsearchview(parkinglotsVO);
		session.setAttribute("listRating1",listRating1);
		
		List listRating=feedbackDAO.searchRating(parkinglotsVO);
		session.setAttribute("listRating",listRating);
		
		List listPL = parkinglotsDAO1.searchLot(parkinglotsVO);
		List listMarker=parkinglotsDAO1.listMarker(areaVO);
		session.setAttribute("listMarker",listMarker);
		session.setAttribute("parkingList", listPL);
		
		response.sendRedirect("USER/search.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
