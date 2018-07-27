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

import DAO.CityDAO;
import DAO.FaqDAO;
import DAO.StateDAO;
import VO.CityVO;
import VO.FaqVO;
import VO.StateVO;

/**
 * Servlet implementation class CityController
 */
@WebServlet("/CityController")
public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		if(flag.equals("searchState"))
		{
			searchState(request,response);
		}
		else if(flag.equals("searchCity")){
			searchCity(request,response);
		}
		else if(flag.equals("editCity"))
		{
			editCity(request,response);
		}
		else if(flag.equals("deleteCity"))
		{
			deleteCity(request,response);
		}
		}

	private void deleteCity(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		 
		HttpSession httpSession=request.getSession();
		int cityId=Integer.parseInt(request.getParameter("id"));
		
		CityDAO cityDAO=new CityDAO();
		CityVO cityVO=new CityVO();
		
		cityVO.setCity_id(cityId);
		cityDAO.deleteCity(cityVO);
		
		httpSession.removeAttribute("errorMsg");
		
		
		if(!cityDAO.deleteCity(cityVO)){
			
			httpSession.setAttribute("errorMsg","Please Remove all child rows first");
			System.out.print("hi...");
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
		
		}
		
		searchCity(request, response);

	}

	private void searchCity(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		CityDAO d=new CityDAO();
		CityVO v=new CityVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		
		ss.setAttribute("cityList",ls);
		response.sendRedirect("ADMIN/Search_city.jsp");
		// TODO Auto-generated method stub
		
		
	}

	private void searchState(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		StateDAO d=new StateDAO();
		StateVO v=new StateVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		
		ss.setAttribute("ls",ls);
		response.sendRedirect("ADMIN/Add_City.jsp");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		if(flag.equals("insertCity"))
		{
			insertCity(request,response);
		}
		else if(flag.equals("updateCity"))
		{
			updateCity(request,response);
		}
		
		// TODO Auto-generated method stub
	}

	private void editCity(HttpServletRequest request,
			HttpServletResponse response)  throws ServletException, IOException{
		
		int cityId=Integer.parseInt(request.getParameter("id"));
		HttpSession ss=request.getSession();
		
		StateDAO d1=new StateDAO();
		StateVO v1=new StateVO();
		List ls1=new ArrayList();
		ls1=d1.search(v1);
		ss.setAttribute("stateList",ls1);
		
		CityDAO d=new CityDAO();
		CityVO v=new CityVO();
		
		v.setCity_id(cityId);
		List ls=new ArrayList();
		ls=d.edit(v);
		
		
		ss.setAttribute("editCity",ls);
		
		response.sendRedirect("ADMIN/Edit_city.jsp");

		// TODO Auto-generated method stub
		
	}

	private void insertCity(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int s=Integer.parseInt(request.getParameter("val_statename"));
		String s2=request.getParameter("val_cityname");
		
		StateVO v1=new StateVO();
		v1.setState_id(s);
		
		
		CityVO v2=new CityVO();
		v2.setVal_cityname(s2);
		v2.setV(v1);
		
		CityDAO d1=new CityDAO();
		d1.insert(v2);
		
		response.sendRedirect("ADMIN/Add_City.jsp");

	}
	private void updateCity(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		int city_id=Integer.parseInt(request.getParameter("city_id"));
		int state_id=Integer.parseInt(request.getParameter("val_statename"));
		String val_cityname =request.getParameter("val_cityname");
		
		CityVO v2=new CityVO();
		v2.setCity_id(city_id);
		v2.setVal_cityname(val_cityname);
		
		StateVO v = new StateVO();
		v.setState_id(state_id);
		v2.setV(v);
		
		CityDAO d=new CityDAO();
		d.update(v2);
		
		searchCity(request,response);
		//response.sendRedirect("Search_state.jsp");	
	}

}
