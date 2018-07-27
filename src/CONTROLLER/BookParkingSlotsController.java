package CONTROLLER;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jpath.adapter.GregorianCalendarAdapter;
import org.hibernate.Session;

import VO.BookParkingSlotsVO;
import VO.BookingContinuousPeriodVO;
import VO.BookingMultiDateVO;
import VO.LoginVO;
import VO.PackageVO;
import VO.ParkingProviderVO;
import VO.ParkinglotsVO;
import DAO.BookParkingSlotsDAO;
import DAO.BookingContinuousPeriodDAO;
import DAO.BookingMultiDateDAO;
import DAO.LoginDAO;
import DAO.PackageDAO;
import DAO.ParkinglotsDAO;


/**
 * Servlet implementation class BookParkingSlotsController
 */
@WebServlet("/BookParkingSlotsController")
public class BookParkingSlotsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookParkingSlotsController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String flag=request.getParameter("flag");
		
		HttpSession ss=request.getSession();
		if(flag.equals("viewContinuous"))
		{
			viewContinuous(request,response);
			
		}
		if(flag.equals("viewMultiDate"))
		{
			viewMultidate(request,response);
			
		}
		if(flag.equals("viewContinuousParkingProvider"))
		{
			viewContinuousParkingProvider(request,response);
		}
		if(flag.equals("viewMultiDateParkingProvider"))
		{
			viewMultiDateParkingProvider(request,response);
		}
		if(flag.equals("deleteContiBooking"))
		{
			deleteContiBooking(request,response);
		}
		if(flag.equals("deleteMultiBooking"))
		{
			deleteMultiBooking(request,response);
		}
		if(flag.equals("confirmationMail"))
		{
			confirmationMail(request,response);
		}
	
	}
	private void confirmationMail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<BookingMultiDateVO> ls=(List)request.getSession().getAttribute("multiList");
		System.out.println("==="+ls.size());
		
		HttpSession ss=request.getSession();
		String email=(String)ss.getAttribute("userName");
	    
		String parkinglot =(String)ss.getAttribute("plotname");
		String startTime="";
		String startingDate="";
		String endingDate="";
		String endTime="";
		
		System.out.println(parkinglot);
		
		if(ls.size()>=2)
		{
			String s="";
			String time="";
			String s1="";
			for(int i=0;i<ls.size();i++)
			{
				if(i==0)
				{
				s=ls.get(i).getStart_date();
				time=ls.get(i).getStart_time();
				s1=ls.get(i).getEnd_time();
				}
				if(i>=1)
				{
					s=s+", "+ls.get(i).getStart_date();
					time=time+", "+ls.get(i).getStart_time();
					s1=s1+", "+ls.get(i).getEnd_time();
					
				}
				}
			startTime=time;
			startingDate=s;
			endTime=s1;
		}
		else
		{
			//startingDate=(String)ss.getAttribute("startingDate");
			startingDate=(String)ls.get(0).getStart_date();
			System.out.println(startingDate);
		
			
			endingDate=(String)ss.getAttribute("end_Date");
		    
			System.out.println(endingDate);
			
			startTime=(String)ss.getAttribute("startTime");
		    
			System.out.println(startTime);
			
			endTime=(String)ss.getAttribute("endTime");
		      
			System.out.println(endTime);
		}
		int fourWheeler=0;
		int twoWheeler=0;
		
	    System.out.println(twoWheeler);
	    
	    System.out.println(fourWheeler);
	    
	    long payment =(Long)ss.getAttribute("Amount");
	    
	    System.out.println(email);
	    
	    
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(email);
		
		LoginDAO loginDAO = new LoginDAO();
		List searchEmail = loginDAO.searchEmail(loginVO);
 
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
        
        ss.setAttribute("flag", "true");
		
        try {
            MimeMessage message = new MimeMessage(mailSession);
        	
            message.setSubject("Booking Confirmation");
			
            if(ss.getAttribute("twoWheeler")  == null)
            {
            	System.out.println("1 here");
            	fourWheeler= (Integer)ss.getAttribute("fourWheeler");
        	    message.setContent("<html><h2>Hello,</h2>"+email+"<p>ParkingLot Name :" +parkinglot+"</p><p>From:" +startingDate+"</p><p>Until :" +endingDate+"</p><p>Start Time :" +startTime+"</p><p>End Time :" +endTime+"</p><p>Number of 4 Wheeler :" +fourWheeler+"</p><p>Number of 2 Wheeler : 0"+"</p></html>","text/html");
      			
            }
          if(ss.getAttribute("fourWheeler") == null)
          {System.out.println("2 here");
        	  twoWheeler=(Integer)ss.getAttribute("twoWheeler");
        	  message.setContent("<html><h2>Hello,</h2>"+email+"<p>ParkingLot Name :" +parkinglot+"</p><p>From:" +startingDate+"</p><p>Until :" +endingDate+"</p><p>Start Time :" +startTime+"</p><p>End Time :" +endTime+"</p><p>Number of 4 Wheeler : 0" +"</p><p>Number of 2 Wheeler :"+twoWheeler+"</p></html>","text/html");
          }
          if(ss.getAttribute("fourWheeler") != null && ss.getAttribute("twoWheeler") != null)
          {System.out.println("3 here");
        	fourWheeler= (Integer)ss.getAttribute("fourWheeler");
      	    twoWheeler=(Integer)ss.getAttribute("twoWheeler");
      	    
          message.setContent("<html><h2>Hello,</h2>"+email+"<p>ParkingLot Name :" +parkinglot+"</p><p>From:" +startingDate+"</p><p>Until :" +endingDate+"</p><p>Start Time :" +startTime+"</p><p>End Time :" +endTime+"</p><p>Number of 4 Wheeler :" +fourWheeler+"</p><p>Number of 2 Wheeler :"+twoWheeler+"</p></html>","text/html");
          }		/*+ ", \n\n <br><br><br>Your booking has been successfully done ! <br>\n \n"
					+ "ParkingLot Name :" +parkinglot+ 
					"<br>From:"+ startingDate+"\t\t\n\n"+startTime+ 
					"\t\n \n<br>Until : "+endingDate+"\t\t\n\n"+endTime+
					"\n \n<br>Number of 4 Wheeler :"+fourWheeler+
					"\n \n<br>Number of 2 Wheeler :"+twoWheeler+
					"\n \n<br>Payment :"+payment, "text/html");
           */
            InternetAddress sender = new InternetAddress("<email>","PTT");
            InternetAddress receiver = new InternetAddress(email);
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
            message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 587, "**********@gmail.com", "**************");
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
                    
            System.out.println("4 here");
            response.sendRedirect("USER/success.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
         }

	}

	

	private void deleteMultiBooking(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		int bookingMultiID=Integer.parseInt(request.getParameter("id"));
		
		BookingMultiDateDAO bookingMultiDateDAO=new BookingMultiDateDAO();
		BookingMultiDateVO bookingMultiDateVO=new BookingMultiDateVO();
		bookingMultiDateVO.setBookingMultiDate_id(bookingMultiID);
		//bookingMultiDateDAO.deleteMultiBooking(bookingMultiDateVO);
		
		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
		
		if(!bookingMultiDateDAO.deleteMultiBooking(bookingMultiDateVO))
		{
			
			httpSession.setAttribute("errorMsg","Please remove all child rows first");
			System.out.print("hi...");
			
		}
		else
		{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
			System.out.print("in else...");
		}
		
		HttpSession session=request.getSession();
		
		String userType=(String)session.getAttribute("user_type");
		if(userType.equals("admin"))
		{
			viewMultidate(request, response);	
		}
		else
		{	 
			viewMultiDateParkingProvider(request, response);
		}
		
}

	


	private void deleteContiBooking(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int bookingContinuousPeriodId=Integer.parseInt(request.getParameter("id"));
		
		BookingContinuousPeriodDAO bookingContinuousPeriodDAO=new BookingContinuousPeriodDAO();
		BookingContinuousPeriodVO bookingContinuousPeriodVO=new BookingContinuousPeriodVO();
		bookingContinuousPeriodVO.setBookingContinuousPeriod_id(bookingContinuousPeriodId);
		bookingContinuousPeriodDAO.deleteContiBooking(bookingContinuousPeriodVO);
		
		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
		
		if(!bookingContinuousPeriodDAO.deleteContiBooking(bookingContinuousPeriodVO)){
			
			httpSession.setAttribute("errorMsg","Please remove all child rows first");
			System.out.print("hi...");
			
		}
		else
		{
			
			httpSession.removeAttribute("errorMsg");
			System.out.print("in else...");
		}
		HttpSession session=request.getSession();
		
		String userType=(String)session.getAttribute("user_type");
		
		if(userType.equals("admin"))
		{
			viewContinuous(request, response);	
		}
		else
		{	 
			viewContinuousParkingProvider(request, response);	
		}
		
}
	private void viewMultiDateParkingProvider(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		
		int parkingProviderId=Integer.parseInt(request.getParameter("parkingProviderId"));
		
		ParkingProviderVO parkingProviderVO= new ParkingProviderVO();
		parkingProviderVO.setParkingprovider_id(parkingProviderId);
		
		BookingMultiDateDAO multidateDAO=new BookingMultiDateDAO();
		BookingMultiDateVO multiDateVO =new BookingMultiDateVO();
		
		List multidateListProvider=new ArrayList();
		multidateListProvider=multidateDAO.searchMultidateProvider(parkingProviderVO);
		
		ss.setAttribute("multidateListProvider",multidateListProvider);
		
		response.sendRedirect("ADMIN/Search_multidate.jsp");
	
	}

	private void viewContinuousParkingProvider(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		
		int parkingProviderId=Integer.parseInt(request.getParameter("parkingProviderId"));
		
		ParkingProviderVO parkingProviderVO= new ParkingProviderVO();
		parkingProviderVO.setParkingprovider_id(parkingProviderId);
		
		BookingContinuousPeriodDAO continuousPeriodDAO=new BookingContinuousPeriodDAO();
		BookingContinuousPeriodVO continuousPeriodVO =new BookingContinuousPeriodVO();
		
		List continuousListProvider=new ArrayList();
		continuousListProvider=continuousPeriodDAO.searchContinuousPeriodProvider(parkingProviderVO);
		
		ss.setAttribute("continuousListProvider",continuousListProvider);
		
		response.sendRedirect("ADMIN/Search_continuous.jsp");

	}

	private void viewMultidate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		
		BookingMultiDateDAO multidateDAO=new BookingMultiDateDAO();
		BookingMultiDateVO multiDateVO =new BookingMultiDateVO();
		
		List multidateList=new ArrayList();
		multidateList=multidateDAO.searchMultidate(multiDateVO);
		
		ss.setAttribute("multidateList",multidateList);
		
		response.sendRedirect("ADMIN/Search_multidate.jsp");
	
	}

	private void viewContinuous(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession ss=request.getSession();
		
		BookingContinuousPeriodDAO continuousPeriodDAO=new BookingContinuousPeriodDAO();
		BookingContinuousPeriodVO continuousPeriodVO =new BookingContinuousPeriodVO();
		
		List continuousList=new ArrayList();
		continuousList=continuousPeriodDAO.searchContinuousPeriod(continuousPeriodVO);
		
		ss.setAttribute("continuousList",continuousList);
		
		response.sendRedirect("ADMIN/Search_continuous.jsp");
	
	}

	private void insertBookParkingSlots(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException, ParseException,NullPointerException {
		// TODO Auto-generated method stub
		String start_date=request.getParameter("start_date");
		String end_date=request.getParameter("end_date");
		
		String start_time=request.getParameter("start_time");
		String end_time=request.getParameter("end_time");
		
		HttpSession session=request.getSession();
		
		int login_id=(Integer) session.getAttribute("userID");
		int parkinglots_id=(int) session.getAttribute("parkinglots_id");
		
		LoginVO loginVO=new LoginVO();
		loginVO.setLogin_id((int) login_id);
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		parkinglotsVO.setParkinglots_id(parkinglots_id);
		
		BookParkingSlotsVO bookParkingSlotsVO =new BookParkingSlotsVO();
		bookParkingSlotsVO.setLoginVO(loginVO);
		bookParkingSlotsVO.setParkinglotsVO(parkinglotsVO);
		
		
		String booking_type = request.getParameter("booking_type");
		System.out.println("Type   ::::"+booking_type);
		bookParkingSlotsVO.setBooking_type(booking_type);
		String[] vehicleCheckbox = request.getParameterValues("vehicleCheckbox");
		
		int fourWheeler = 0;
		int twoWheeler = 0;
/*		fourWheeler=Integer.parseInt(request.getParameter("fourWheeler"));
		bookParkingSlotsVO.setFourWheeler(fourWheeler);
		session.setAttribute("fourWheeler",fourWheeler);
		
		twoWheeler=Integer.parseInt(request.getParameter("twoWheeler"));
		bookParkingSlotsVO.setTwoWheeler(twoWheeler);
		session.setAttribute("twoWheeler",twoWheeler);

				session.removeAttribute("twoWheeler");
*/		
		
		  for(String vehicle : vehicleCheckbox)
		{
			if(vehicle.equals("fourWheelerChkbox") && !request.getParameter("fourWheeler").equals(""))
			{
				fourWheeler=Integer.parseInt(request.getParameter("fourWheeler"));
				bookParkingSlotsVO.setFourWheeler(fourWheeler);
				
				
				session.setAttribute("fourWheeler",fourWheeler);
				//session.removeAttribute("twoWheeler");
		
			}
			if(vehicle.equals("twoWheelerChkbox") && !request.getParameter("twoWheeler").equals(""))
			{
				twoWheeler=Integer.parseInt(request.getParameter("twoWheeler"));
				bookParkingSlotsVO.setTwoWheeler(twoWheeler);
				
				session.setAttribute("twoWheeler",twoWheeler);
				
				//session.removeAttribute("fourWheeler");
			}
			
			
		}
		int price4wheeler = 0;
		int price2wheeler = 0;
		if(session.getAttribute("price4Wheeler")!=null)
		{
			price4wheeler=(Integer)session.getAttribute("price4Wheeler");
		}
		if(session.getAttribute("price2Wheeler")!=null)
		{
			price2wheeler=(Integer)session.getAttribute("price2Wheeler");
		}
		
		
		
		BookParkingSlotsDAO bookparkingslotsDAO =new BookParkingSlotsDAO();
		bookparkingslotsDAO.insertBookParkingSlots(bookParkingSlotsVO);
		
			if(booking_type.equals("continuous"))
			{

				session.removeAttribute("start_date");
				session.removeAttribute("end_date");
				BookingContinuousPeriodVO bookingContinuousPeriodVO=new BookingContinuousPeriodVO();
				bookingContinuousPeriodVO.setBookParkingSlotsVO(bookParkingSlotsVO);
				bookingContinuousPeriodVO.setEnd_date(end_date);
				bookingContinuousPeriodVO.setEnd_time(end_time);
				bookingContinuousPeriodVO.setStart_date(start_date);
				bookingContinuousPeriodVO.setStart_time(start_time);
				
				BookingContinuousPeriodDAO bookingContinuousPeriodDAO=new BookingContinuousPeriodDAO();
				bookingContinuousPeriodDAO.insertContinuous(bookingContinuousPeriodVO);
				
				String sDate[] = start_date.split(" ");
				String eDate[] = end_date.split(" ");
				
				Date datefors = new SimpleDateFormat("MMM",Locale.ENGLISH).parse(sDate[1]);
				Date datefore = new SimpleDateFormat("MMM",Locale.ENGLISH).parse(eDate[1]);
				
				Calendar sCal = Calendar.getInstance();
				Calendar eCal = Calendar.getInstance();
				
				sCal.setTime(datefors);
				eCal.setTime(datefore);
				
				int sMonth = sCal.get(Calendar.MONTH)+1;
				int eMonth = eCal.get(Calendar.MONTH)+1;
				
				String sTime[] = start_time.split(":");
				
				String eTime[] = end_time.split(":");
				
				GregorianCalendar from = new GregorianCalendar(Integer.parseInt(sDate[2]),sMonth,Integer.parseInt(sDate[0]),Integer.parseInt(sTime[0]),Integer.parseInt(sTime[1]));
				GregorianCalendar until = new GregorianCalendar(Integer.parseInt(eDate[2]),eMonth,Integer.parseInt(eDate[0]),Integer.parseInt(eTime[0]),Integer.parseInt(eTime[1]));
				
				Date startingDate= from.getTime();
				Date  endingDate= until.getTime();
				long startingTime= startingDate.getTime();
				long endingTime=endingDate.getTime();
			
				long hours=((endingTime-startingTime)/(1000*60*60));
				System.out.println("Total Hours : "+hours);
				long totalAmount4=fourWheeler*price4wheeler*hours;
				System.out.println("4 wheeellllll amountttt"+totalAmount4);
				long totalAmount2=twoWheeler*price2wheeler*hours;
				System.out.println("2 wheeellll amont:::"+totalAmount2);
				long Amount=totalAmount2+totalAmount4;
				System.out.println("tttttttttooooooooooootaaaalll"+Amount);
				session.setAttribute("Amount1",Amount);
				
				session.setAttribute("startDate", start_date);
				System.out.println("Ending date final scope :::::::" + end_date);
				session.setAttribute("end_Date", end_date);
				session.removeAttribute("multiList");
				
			}
			else if(booking_type.equals("multi"));
			{
				session.removeAttribute("start_date");
				session.removeAttribute("end_date");
				String[] start_date_multi=request.getParameterValues("start_date");
				String[] start_time_multi=request.getParameterValues("start_time");
				String[] end_time_multi=request.getParameterValues("end_time");
				
				List list = new ArrayList();
				
				long finalPriceForMulti= 0;
				
				for(int i=1;i<start_date_multi.length;i++)
					
				{
					String sdate = start_date_multi[i];
					String stime = start_time_multi[i];
					String etime = end_time_multi[i];
					
					System.out.println("sdate:::"+start_date_multi[i]);
					System.out.println("stime:::"+start_time_multi[i]);
					System.out.println("etime:::"+end_time_multi[i]);
					
					BookingMultiDateVO bookingMultiDateVO= new BookingMultiDateVO();
					bookingMultiDateVO.setStart_date(sdate);
					bookingMultiDateVO.setEnd_time(etime);
					bookingMultiDateVO.setStart_time(stime);
					bookingMultiDateVO.setBookParkingSlotsVO(bookParkingSlotsVO);
					
					BookingMultiDateDAO bookingMultiDateDAO = new BookingMultiDateDAO();
					bookingMultiDateDAO.insertMultiDate(bookingMultiDateVO);
					
					String eDate[] = sdate.split(" ");
					String sDate[] = sdate.split(" ");
					
					Date datefors = new SimpleDateFormat("MMM",Locale.ENGLISH).parse(sDate[1]);
					Date datefore = new SimpleDateFormat("MMM",Locale.ENGLISH).parse(eDate[1]);
					
					Calendar sCal = Calendar.getInstance();
					Calendar eCal = Calendar.getInstance();
					
					sCal.setTime(datefors);
					eCal.setTime(datefore);
					
					int sMonth = sCal.get(Calendar.MONTH)+1;
					int eMonth = eCal.get(Calendar.MONTH)+1;
					
					String sTime[] = stime.split(":");
					
					String eTime[] = etime.split(":");
					
					GregorianCalendar from = new GregorianCalendar(Integer.parseInt(sDate[2]),sMonth,Integer.parseInt(sDate[0]),Integer.parseInt(sTime[0]),Integer.parseInt(sTime[1]));
					GregorianCalendar until = new GregorianCalendar(Integer.parseInt(eDate[2]),eMonth,Integer.parseInt(eDate[0]),Integer.parseInt(eTime[0]),Integer.parseInt(eTime[1]));
					
					Date startingDate= from.getTime();
					Date  endingDate= until.getTime();
					long startingTime= startingDate.getTime();
					long endingTime=endingDate.getTime();
				
					long hours=((endingTime-startingTime)/(1000*60*60));
				
					long totalAmount4=fourWheeler*price4wheeler*hours;
					long totalAmount2=twoWheeler*price2wheeler*hours;
					long Amount=totalAmount2+totalAmount4;
					
					finalPriceForMulti= finalPriceForMulti+Amount;
					//session.setAttribute("Amount",Amount);
				
					list.add(bookingMultiDateVO);
					
				}
				
				session.setAttribute("multiList", list);
				session.removeAttribute("startDate");
				session.removeAttribute("end_date");
				
				session.setAttribute("Amount",finalPriceForMulti);
			
			}
			
			ParkinglotsDAO parkinglotsDAO= new ParkinglotsDAO();
			
			List parkingslotsVOs= parkinglotsDAO.search(null);
			
			session.setAttribute("rate", parkingslotsVOs);
			System.out.println("parkinglotid"+parkinglotsVO.getParkinglots_id());
			
			PackageVO packageVO = new PackageVO();
			PackageDAO packageDAO = new PackageDAO();
			
			
			List searchPackage= new ArrayList();
			searchPackage=packageDAO.searchPackage(parkinglotsVO);
			session.setAttribute("searchPackage", searchPackage);
			response.sendRedirect("USER/reviewandpay.jsp");
	}

	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if (flag.equals("insertBookParkingSlots")) {
			try {
				insertBookParkingSlots(request, response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
