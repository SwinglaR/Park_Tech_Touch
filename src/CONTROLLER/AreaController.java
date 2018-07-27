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

import DAO.AreaDAO;
import DAO.CityDAO;
import DAO.ParkinglotsDAO;
import DAO.StateDAO;
import VO.AreaVO;
import VO.CityVO;
import VO.StateVO;

/**
 * Servlet implementation class AreaController
 */
@WebServlet("/AreaController")
public class AreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AreaController() {
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
		
		if(flag.equals("searchStateAndCity"))
		{
				searchStateAndCity(request,response);
		}
		else if(flag.equals("searchArea"))	
		{
				searchArea(request,response);
		}
		else if(flag.equals("editArea"))
		{
			editArea(request,response);
		}
		else if(flag.equals("loadCity"))
		{
			loadCity(request,response);
		
		}
		else if(flag.equals("loadCity_index"))
		{
			loadCity(request,response);
		}
		else if(flag.equals("loadArea_parking"))
		{
			loadArea(request,response);
		}
		
		else if(flag.equals("loadArea_index"))
		{
			loadArea(request,response);
		}
		else if(flag.equals("deleteArea"))
		{
			deleteArea(request,response);
		}
		
	}

	private void deleteArea(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		int areaId=Integer.parseInt(request.getParameter("id"));
		
		AreaDAO areaDAO=new AreaDAO();
		AreaVO areaVO=new AreaVO();
		areaVO.setArea_id(areaId);
		areaDAO.deleteArea(areaVO);

		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
		
		if(!areaDAO.deleteArea(areaVO)){
			
			httpSession.setAttribute("errorMsg","Please remove all child rows first");
			
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
		}
		
		searchArea(request, response);
}

	private void loadArea(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
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
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int val_statename=Integer.parseInt(request.getParameter("val_statename"));
		
		System.out.println("state ID : " + val_statename);
		
		StateVO stateVO=new StateVO();
		stateVO.setState_id(val_statename);
		
		AreaDAO areaDAO=new AreaDAO();
		List list = areaDAO.loadCity(stateVO);
		
		System.out.println("LIST SIZE:::::"+list.size());
		
		HttpSession session=request.getSession();
		session.setAttribute("cityList", list);
	
		response.sendRedirect("JSON/Load_city.jsp");
	}

	private void searchArea(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		
		String s1=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		AreaDAO d=new AreaDAO();
		AreaVO v=new AreaVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		System.out.println("controller"+ls.size());
		ss.setAttribute("areaList",ls);
		response.sendRedirect("ADMIN/Search_area.jsp");
		}

	private void searchStateAndCity(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		//String s1=request.getParameter("flag");
		HttpSession ss=request.getSession();
	
		
		StateDAO d=new StateDAO();
		StateVO v=new StateVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		
		ss.setAttribute("stateList",ls);
		
		CityDAO d1=new CityDAO();
		CityVO v1=new CityVO();
		
		List ls1=new ArrayList();
		
		ss.setAttribute("cityList", ls1);
		response.sendRedirect("ADMIN/Add_Area.jsp");
	}
	private void editArea(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int areaName=Integer.parseInt(request.getParameter("id"));
		HttpSession ss=request.getSession();
		
		StateDAO d1=new StateDAO();
		StateVO v1=new StateVO();
		List ls1=new ArrayList();
		ls1=d1.search(v1);
		ss.setAttribute("stateList",ls1);
		
		CityDAO d2=new CityDAO();
		CityVO v2=new CityVO();
		List ls2=new ArrayList();
		ls2=d2.search(v2);
		ss.setAttribute("CityList",ls2);

		
		AreaDAO d3=new AreaDAO();
		AreaVO v3=new AreaVO();
		v3.setArea_id(areaName);
		List ls3=new ArrayList();
		ls3=d3.edit(v3);
		ss.setAttribute("areaList",ls3);
		
		response.sendRedirect("ADMIN/Edit_area.jsp");
}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s2=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		if(s2.equals("insertArea"))
		{
			insertArea(request,response);
		}
		else if(s2.equals("updateArea"))
		{
			updateArea(request,response);
		}
}

	private void updateArea(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		int state_id=Integer.parseInt(request.getParameter("val_statename"));
		int city_id=Integer.parseInt(request.getParameter("val_cityname"));
		int area_id=Integer.parseInt(request.getParameter("area_id"));
		String val_areaName=request.getParameter("val_areaname");
			
		AreaVO v2=new AreaVO();
		v2.setArea_id(area_id);
		v2.setVal_areaname(val_areaName);
		
		StateVO stateVO = new StateVO();
		stateVO.setState_id(state_id);
		v2.setV1(stateVO);
		
		CityVO cityVO=new CityVO();
		cityVO.setCity_id(city_id);
		v2.setV2(cityVO);
		
		AreaDAO d=new AreaDAO();
		d.update(v2);
			
		searchArea(request,response);
			//response.sendRedirect("Search_state.jsp");
		

			
		}

	private void insertArea(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException  {
		// TODO Auto-generated method stub
		int stateName=Integer.parseInt(request.getParameter("val_statename"));
		int cityName=Integer.parseInt(request.getParameter("val_cityname"));
		String areaName=request.getParameter("val_areaname");
		
		StateVO v1=new StateVO();
		v1.setState_id(stateName);
		
		CityVO v2=new CityVO();
		v2.setCity_id(cityName);
		
		AreaVO v3=new AreaVO();
		v3.setVal_areaname(areaName);
		v3.setV1(v1);
		v3.setV2(v2);
		
		AreaDAO d1=new AreaDAO();
		d1.insert(v3);
		
		response.sendRedirect("ADMIN/Add_Area.jsp");
	}
	}



