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









import DAO.FaqCategoryDAO;
import DAO.PackageDAO;
import DAO.ParkingProviderDAO;
import DAO.ParkinglotsDAO;
import VO.FaqCategoryVO;
import VO.LoginVO;
import VO.PackageVO;
import VO.ParkingProviderVO;
import VO.ParkinglotsVO;


@WebServlet("/PackageController")
public class PackageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PackageController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String flag=request.getParameter("flag");
		HttpSession ss=request.getSession();
		if(!flag.equals(null) && flag.equals("searchPackage"))
		{
			searchPackage(request,response);
		}
		else if(!flag.equals(null) && flag.equals("editPackage"))
		{
			editPackage(request,response);
		}
		else if(!flag.equals(null) && flag.equals("loadParkingLot"))
		{
			loadParkingLot(request,response);
		}
		else if(!flag.equals(null) && flag.equals("searchPackageParkingProvider"))
		{
			searchPackageParkingProvider(request,response);
		}
		else if(!flag.equals(null) && flag.equals("loadParkingLotParkingProvider"))
		{
			loadParkingLotParkingProvider(request,response);
		}
		else if(flag.equals("deletePackage"))
		{
			deletePackage(request,response);
		}
	}

	private void deletePackage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int package_id=Integer.parseInt(request.getParameter("package_id"));
		
		PackageVO packageVO = new PackageVO();
		packageVO.setPackage_id(package_id);
		
		System.out.println("ddddddddd"+packageVO.getPackage_id());
		
		PackageDAO packageDAO = new PackageDAO();
		//packageDAO.deletePackage(packageVO);
		
		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
         if(!packageDAO.deletePackage(packageVO)){
			
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
			searchPackageParkingProvider(request, response);
		}
		else 
		{
			searchPackage(request,response);
		}
		
		
	}

	private void loadParkingLotParkingProvider(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		int parkingProviderId=Integer.parseInt(request.getParameter("parkingProviderId"));
		
		ParkingProviderVO parkingProviderVO= new ParkingProviderVO();
		parkingProviderVO.setParkingprovider_id(parkingProviderId);
		
		ParkinglotsVO parkinglotsVO =new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		
		List lotListParkingProvider=new ArrayList();
		lotListParkingProvider=parkinglotsDAO.searchParkingProvider(parkingProviderVO);
		
		session.setAttribute("lotListParkingProvider", lotListParkingProvider);
		
		response.sendRedirect("ADMIN/Add_Packages.jsp");
	}

	private void searchPackageParkingProvider(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
           HttpSession session=request.getSession();
		
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
		
		PackageDAO packageDAO=new PackageDAO();
		PackageVO packageVO=new PackageVO();
		
		ParkinglotsVO parkinglotsVO =new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		
		List lotList=new ArrayList();
		lotList=parkinglotsDAO.search(parkinglotsVO);
		
		session.setAttribute("lotList", lotList);
		
		List PackageParkingProvider= new ArrayList();
		PackageParkingProvider = packageDAO.searchPackageParkingProvider(parkingProviderVO);
		
		session.setAttribute("PackageParkingProvider", PackageParkingProvider);
		
		response.sendRedirect("ADMIN/Search_package.jsp");

	}

	private void loadParkingLot(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		ParkinglotsVO parkinglotsVO =new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		
		List lotList=new ArrayList();
		lotList=parkinglotsDAO.search(parkinglotsVO);
		
		session.setAttribute("lotList", lotList);
		
		response.sendRedirect("ADMIN/Add_Packages.jsp");
	}

	private void updatePackage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("package_id"));
		int parkinglots_id=Integer.parseInt(request.getParameter("parkinglots_id"));
		String s=request.getParameter("val_package_name");
		String s1=request.getParameter("val_package_description");
		String s2=request.getParameter("val_package_price");
		String s3=request.getParameter("val_package_duration");
		String s4=request.getParameter("val_package_hour");
		String s5=request.getParameter("val_package_charge");
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		parkinglotsVO.setParkinglots_id(parkinglots_id);
		
		PackageVO v=new PackageVO();
		v.setPackage_id(id);
		v.setVal_package_name(s);
		v.setVal_package_description(s1);
		v.setVal_package_price(s2);
		v.setVal_package_duration(s3);
		v.setVal_package_hour(s4);
		v.setVal_package_charge(s5);
		v.setParkinglotsVO(parkinglotsVO);
		
		System.out.println("right Before PACKAGE DAO in updatePackage Method");
		PackageDAO d=new PackageDAO();
		
		d.update(v);
		searchPackageParkingProvider(request, response);
		
		
	}

	private void editPackage(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();
		int id=Integer.parseInt(request.getParameter("package_id"));
		/*ParkinglotsVO  parkinglotsVO= new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		*/
		/*List lotList=parkinglotsDAO.search(parkinglotsVO);
		*/
		PackageDAO d=new PackageDAO();
		PackageVO v=new PackageVO();
		v.setPackage_id(id);
		List ls=d.edit(v);
		session.setAttribute("packageList",ls);
		/*session.setAttribute("lotList", lotList);
		*/response.sendRedirect("ADMIN/Edit_package.jsp");
		
	}

	private void insertPackage(HttpServletRequest request,
			HttpServletResponse response)  throws ServletException, IOException  {
		// TODO Auto-generated method stub
		
		int val_plotname2=Integer.parseInt(request.getParameter("val_plotname2"));
		String s=request.getParameter("val_package_name");
		String s1=request.getParameter("val_package_description");
		String s2=request.getParameter("val_package_price");
		String s3=request.getParameter("val_package_duration");
		String s4=request.getParameter("val_package_hour");
		String s5=request.getParameter("val_package_charge");
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		parkinglotsVO.setParkinglots_id(val_plotname2);
		
		PackageVO v=new PackageVO();
		v.setParkinglotsVO(parkinglotsVO);
		v.setVal_package_name(s);
		v.setVal_package_description(s1);
		v.setVal_package_price(s2);
		v.setVal_package_duration(s3);
		v.setVal_package_hour(s4);
		v.setVal_package_charge(s5);
		PackageDAO d=new PackageDAO();
		d.insert(v);
		response.sendRedirect("ADMIN/Add_Packages.jsp");
		
	}

	private void searchPackage(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		
		PackageDAO d=new PackageDAO();
		PackageVO v=new PackageVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		
		ParkinglotsVO parkinglotsVO =new ParkinglotsVO();
		ParkinglotsDAO parkinglotsDAO=new ParkinglotsDAO();
		
		List lotList=new ArrayList();
		lotList=parkinglotsDAO.search(parkinglotsVO);
		
		ss.setAttribute("lotList", lotList);
		
		
		ss.setAttribute("packageList",ls);
		response.sendRedirect("ADMIN/Search_package.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in doPost");
		String flag=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		if(!flag.equals(null) && flag.equals("insertPackage"))
		{
			insertPackage(request,response);
		}
		if(!flag.equals(null) &&flag.equals("updatePackage"))
		{
			//System.out.println("Inside update Func");
			updatePackage(request,response);
		}
	
	}
}
