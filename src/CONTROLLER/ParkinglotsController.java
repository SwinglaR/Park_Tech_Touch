package CONTROLLER;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.hibernate.Session;

import DAO.AreaDAO;
import DAO.CityDAO;
import DAO.ParkingProviderDAO;
import DAO.ParkinglotsDAO;
import DAO.ParkinglotsattachmentDAO;
import DAO.StateDAO;
import VO.AreaVO;
import VO.CityVO;
import VO.LoginVO;
import VO.ParkingProviderVO;
import VO.ParkinglotsAttachmentVO;
import VO.ParkinglotsVO;
import VO.StateVO;

/**
 * Servlet implementation class ParkinglotController
 */
@WebServlet("/ParkinglotsController")
@MultipartConfig
public class ParkinglotsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParkinglotsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String flag = request.getParameter("flag");
	if(flag.equals("searchState")){
		searchState(request,response);
	}
	else if(flag.equals("searchLot"))
	{
		searchLot(request,response);
	}
	else if(flag.equals("editLot"))
	{
		editLot(request,response);
	}
	else if(flag.equals("loadCity"))
	{
		loadCity(request,response);
	}
	else if(flag.equals("loadArea"))
	{
		loadArea(request,response);
	}
	else if(flag.equals("searchParkingProvider"))
	{
		searchParkingProvider(request,response);
	}
	else if(flag.equals("searchLotAdmin"))
	{
		searchLotAdmin(request,response);
	}
	else if(flag.equals("deleteLot"))
	{
	     deleteLot(request,response);
	}
	
	}
	private void deleteLot(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int parkinglots_id=Integer.parseInt(request.getParameter("parkinglot_id"));
		
		ParkinglotsVO parkinglotsVO = new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO = new ParkinglotsDAO();
		
		parkinglotsVO.setParkinglots_id(parkinglots_id);
		
		parkinglotsDAO.deleteLot(parkinglotsVO);
		
		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
         if(!parkinglotsDAO.deleteLot(parkinglotsVO)){
			
			httpSession.setAttribute("errorMsg","Remove child rows first");
			System.out.print("hi...");
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
			System.out.print("in else...");
		}
		
         HttpSession session = request.getSession();
 		String userType=(String)session.getAttribute("user_type");
 		if(userType.equals("parkingprovider"))
 		{
 			searchLot(request, response);
 		}
 		else 
 		{
 			searchLotAdmin(request,response);
 		}
	}

	private void searchLotAdmin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		
		List searchLotAdmin=new ArrayList();
		
		searchLotAdmin=parkinglotsDAO.search(parkinglotsVO);
		
		ss.setAttribute("searchLotAdmin",searchLotAdmin);
		
		response.sendRedirect("ADMIN/Search_parking_lot.jsp");
		
	}

	private void searchParkingProvider(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String flag=request.getParameter("flag");
       		response.sendRedirect("ADMIN/Add_Parking_Slots.jsp");
		
	}
	private void loadArea(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		int val_cityname=Integer.parseInt(request.getParameter("val_cityname"));
		
		CityVO cityVO=new CityVO();
		cityVO.setCity_id(val_cityname);
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		List ls=new ArrayList();
		ls=parkinglotsDAO.loadArea(cityVO);
		
		HttpSession ss=request.getSession();
		ss.setAttribute("areaList", ls);
		
		response.sendRedirect("JSON/Load_area.jsp");
		
		
	}

	private void loadCity(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int val_statename=Integer.parseInt(request.getParameter("val_statename"));
		
		StateVO stateVO=new StateVO();
		
		stateVO.setState_id(val_statename);
		
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		List ls=new ArrayList();
		ls=parkinglotsDAO.loadCity(stateVO);
		
		HttpSession ss=request.getSession();
		ss.setAttribute("cityList", ls);
		
		response.sendRedirect("JSON/Load_city.jsp");
		
	}

	private void editLot(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		int parkinglots_id=Integer.parseInt(request.getParameter("parkinglot_id"));
		
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
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		
		parkinglotsVO.setParkinglots_id(parkinglots_id);
		
		List ls3=new ArrayList();
		ls3=parkinglotsDAO.edit(parkinglotsVO);
		ss.setAttribute("stateList",ls);
		ss.setAttribute("cityList",ls1);
		ss.setAttribute("areaList",ls2);
		ss.setAttribute("lotList",ls3);
		
		response.sendRedirect("ADMIN/Edit_Parking_Lots.jsp");
	}

	private void searchLot(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		String parkingProviderId = request.getParameter("parkingProviderId");
		int parkingProviderIdInt = 0;
		if(parkingProviderId == null)
		{
			int userId = (Integer) request.getSession().getAttribute("userID");
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
		ParkinglotsDAO d=new ParkinglotsDAO();
		//ParkinglotsVO v=new ParkinglotsVO();
		
		List ParkingLotsOfProvider=new ArrayList();
		ParkingLotsOfProvider=d.searchParkingProviderLots(parkingProviderVO);
		
		ss.setAttribute("ParkingLotsOfProvider",ParkingLotsOfProvider);
		response.sendRedirect("ADMIN/Search_parking_lot.jsp");
	}

	private void searchState(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession ss=request.getSession();
		
		StateDAO d=new StateDAO();
		StateVO v=new StateVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		
		ss.setAttribute("ls",ls);
		
		response.sendRedirect("ADMIN/Add_Parking_Lots.jsp");
		
		//searchCity(request,response);
		
	}

	private void searchCity(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		
		CityDAO d=new CityDAO();
		CityVO v=new CityVO();
		
		List ls1=new ArrayList();
		ls1=d.search(v);
		
		ss.setAttribute("ls1",ls1);

		
		searchArea(request,response);
	}

	private void searchArea(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		
		AreaDAO d=new AreaDAO();
		AreaVO v=new AreaVO();
		
		List ls2=new ArrayList();
		ls2=d.search(v);
		
		ss.setAttribute("ls2",ls2);


		
		response.sendRedirect("ADMIN/Add_Parking_Lots.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if(flag.equals("insert")){
			
			insertLot(request, response);

		}
		else if(flag.equals("updateLot"))
		{
			updateLot(request,response);
		}
	
	}

	private void insertLot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int s=Integer.parseInt(request.getParameter("val_statename"));
		int s1=Integer.parseInt(request.getParameter("val_cityname"));
		int s2=Integer.parseInt(request.getParameter("val_areaname"));
		int parkingProviderId=Integer.parseInt(request.getParameter("parkingProviderId"));
		
		String s3=request.getParameter("val_plotname2");
		String s4=request.getParameter("val_latitude");
		String s5=request.getParameter("val_longitude");
		String s6=request.getParameter("val_contactpersonname");
		String s7=request.getParameter("val_contactnumber");
		String s8=request.getParameter("val_address");
		String s9=request.getParameter("val_description");
		String val_2capacity=request.getParameter("val_2capacity");
		String val_4capacity=request.getParameter("val_4capacity");
		String val_2price=request.getParameter("val_2price");
		String val_4price=request.getParameter("val_4price");

		StateVO v1=new StateVO();
		v1.setState_id(s);
		CityVO v2=new CityVO();
		v2.setCity_id(s1);
		AreaVO v3=new AreaVO();
		v3.setArea_id(s2);
		ParkingProviderVO parkingProviderVO= new ParkingProviderVO();
		parkingProviderVO.setParkingprovider_id(parkingProviderId);
		
		
		ParkinglotsVO v4=new ParkinglotsVO();
		v4.setV(v1);
		v4.setV1(v2);
		v4.setV2(v3);
		v4.setParkingProviderVO(parkingProviderVO);
		v4.setVal_plotname2(s3);
		v4.setVal_latitude(s4);
		v4.setVal_longitude(s5);
		v4.setVal_contactpersonname(s6);
		v4.setVal_contactnumber(s7);
		v4.setVal_address(s8);
		v4.setVal_description(s9);
		v4.setVal_4capacity(val_4capacity);
		v4.setVal_4price(val_4price);
		v4.setVal_2capacity(val_2capacity);
		v4.setVal_2price(val_2price);
		ParkinglotsDAO d1=new ParkinglotsDAO();
		d1.insert(v4);
		
		//File Upload Code
		for (Part filePart : request.getParts()) {
			 // Part filePart = request.getPart("val_image"); // Retrieves <input type="file" name="file">
		    
			if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals(""))
			{
				/*String name = filePart.getName();
				System.out.println("Name :: "+name);*/
			
				String fileName = filePart.getSubmittedFileName();
			    System.out.println("File Name :: "+fileName);
			    
			    String encryptFileName = encryptFileName(fileName);
			    InputStream fileContent = filePart.getInputStream();
			    
			    byte[] buffer = new byte[fileContent.available()];
				fileContent.read(buffer);
			 
				String filePath = getServletContext().getRealPath(request.getServletPath());
				
				int path = filePath.lastIndexOf('\\');
				String path1= filePath.substring(0, path) +"\\doc\\";
			    
			    File targetEncryptFile = new File(path1+encryptFileName);
			    OutputStream outStream = new FileOutputStream(targetEncryptFile);
			    outStream.write(buffer);
			    
			    System.out.println("File Output Path :: "+path1+fileName);
			    
			    outStream.close();
			    
			    ParkinglotsAttachmentVO attachmentVO = new ParkinglotsAttachmentVO();
			    attachmentVO.setFilename(fileName);
			    attachmentVO.setEncryptedfilename(encryptFileName);
			    attachmentVO.setParkinglotsVO(v4);
			    
			    ParkinglotsattachmentDAO parkinglotsattachmentDAO = new ParkinglotsattachmentDAO();
			    parkinglotsattachmentDAO.insert(attachmentVO);
		    
			}
		}
		    
	    response.sendRedirect("ADMIN/Add_Parking_Lots.jsp");
	    
	}
	
	private void updateLot(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int lotid=Integer.parseInt(request.getParameter("parkinglots_id"));
		int statename=Integer.parseInt(request.getParameter("val_statename"));
		int cityname=Integer.parseInt(request.getParameter("val_cityname"));
		int areaname=Integer.parseInt(request.getParameter("val_areaname"));
		
		HttpSession session=request.getSession();
		int parkingprovider_id=(Integer)session.getAttribute("ParkingproviderID");
		
		String val_plotname2=request.getParameter("val_plotname2");
		String val_latitude=request.getParameter("val_latitude");
		String val_longitude=request.getParameter("val_longitude");
		String val_contactpersonname=request.getParameter("val_contactpersonname");
		String val_contactnumber=request.getParameter("val_contactnumber");
		String val_address=request.getParameter("val_address");
		String val_description=request.getParameter("val_description");
		String val_2capacity=request.getParameter("val_2capacity");
		String val_4capacity=request.getParameter("val_4capacity");
		String val_2price=request.getParameter("val_2price");
		String val_4price=request.getParameter("val_4price");

		StateVO stateVO=new StateVO();
		stateVO.setState_id(statename);
		
		CityVO cityVO=new CityVO();
		cityVO.setCity_id(cityname);
		
		AreaVO areaVO=new AreaVO();
		areaVO.setArea_id(areaname);
		ParkingProviderVO parkingProviderVO=new ParkingProviderVO();
		parkingProviderVO.setParkingprovider_id(parkingprovider_id);
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		parkinglotsVO.setV(stateVO);
		parkinglotsVO.setV1(cityVO);
		parkinglotsVO.setV2(areaVO);
		parkinglotsVO.setVal_plotname2(val_plotname2);
		parkinglotsVO.setVal_latitude(val_latitude);
		parkinglotsVO.setVal_longitude(val_longitude);
		parkinglotsVO.setVal_contactpersonname(val_contactpersonname);
		parkinglotsVO.setVal_contactnumber(val_contactnumber);
		parkinglotsVO.setParkinglots_id(lotid);
		parkinglotsVO.setVal_address(val_address);
		parkinglotsVO.setVal_description(val_description);
		parkinglotsVO.setVal_4capacity(val_4capacity);
		parkinglotsVO.setVal_4price(val_4price);
		parkinglotsVO.setVal_2capacity(val_2capacity);
		parkinglotsVO.setVal_2price(val_2price);
		parkinglotsVO.setParkingProviderVO(parkingProviderVO);
		
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		parkinglotsDAO.update(parkinglotsVO);		
		searchLot(request,response);
	}

	private String encryptFileName(String fileName){
		 
	   Random r = new Random();
	   String file[] = fileName.split("\\.");
	  
	   byte[] unencodedFile = file[0].getBytes();
	   MessageDigest md = null;
	   try {
	   md = MessageDigest.getInstance("MD5");
	   } catch (Exception e) {}
	   md.reset();
	   md.update(unencodedFile);
	   byte[] encodedFile = md.digest();
	   StringBuffer buf = new StringBuffer();
	   for (int i = 0; i < encodedFile.length; i++) {
	   if (((int) encodedFile[i] & 0xff) < 0x10) {
	   buf.append("0");
	   }
	   buf.append(Long.toString((int) encodedFile[i] & 0xff, 16));
	   }
	  
	   String encryptedFileName=(buf.toString()).concat(String.valueOf(r.nextInt())); 

	   
	   return encryptedFileName+"."+file[1];
   }
	
}
