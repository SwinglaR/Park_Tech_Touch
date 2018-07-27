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

import VO.CityVO;
import VO.StateVO;
import DAO.CityDAO;
import DAO.StateDAO;

/**
 * Servlet implementation class StateController
 */
@WebServlet("/StateController")
public class StateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StateController() {
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
		if(flag.equals("loadstate_index"))
		{
			loadState_index(request,response);
			
		}
		
		else if(flag.equals("editState"))
		{
			editState(request,response);
		}
		else if(flag.equals("deleteState"))
		{
			deleteState(request,response);
		}
	}

	private void deleteState(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		int stateId=Integer.parseInt(request.getParameter("id"));
		
		
		StateDAO stateDAO=new StateDAO();
		StateVO stateVO=new StateVO();
		
		stateVO.setState_id(stateId);
		
		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
		
		if(!stateDAO.deleteState(stateVO)){
			
			httpSession.setAttribute("errorMsg","Please remove all child rows first");
			System.out.print("hi...");
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
			System.out.print("in else...");
		}
		
		searchState(request, response);
	

		
	}

	private void loadState_index(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		
		StateDAO d=new StateDAO();
		StateVO v=new StateVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		
		ss.setAttribute("lsForIndex",ls);
		
		response.sendRedirect("JSON/Load_state.jsp");
		
	}

	private void editState(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int stateId=Integer.parseInt(request.getParameter("id"));
		HttpSession ss=request.getSession();
		
		StateDAO d=new StateDAO();
		StateVO v=new StateVO();
		
		v.setState_id(stateId);
		List ls=new ArrayList();
		ls=d.edit(v);
		
		ss.setAttribute("editList",ls);
		
		response.sendRedirect("ADMIN/Edit_state.jsp");
	
	}

	private void searchState(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String searchState=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		StateDAO d=new StateDAO();
		StateVO v=new StateVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		
		ss.setAttribute("ls",ls);
		
		response.sendRedirect("ADMIN/Search_state.jsp");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag=request.getParameter("flag");
		HttpSession ss=request.getSession();
		
		if(flag.equals("insertState"))
		{
			insertState(request,response);
		}
		else if(flag.equals("updateState"))
		{
			updateState(request,response);
		}
		
}

	private void insertState(HttpServletRequest request,
			HttpServletResponse response)  throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String stateName=request.getParameter("val_statename");
		
		
		StateVO v1=new StateVO();
		v1.setVal_statename(stateName);
		
		StateDAO d1=new StateDAO();
		d1.insert(v1);
		response.sendRedirect("ADMIN/Add_State.jsp");
		
	}
	private void updateState(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		int state_id = Integer.parseInt(request.getParameter("state_id"));
		String stateName=request.getParameter("val_statename");
		
		StateVO v=new StateVO();
		v.setState_id(state_id);
		v.setVal_statename(stateName);
		
		StateDAO d=new StateDAO();
		d.update(v);
		
		searchState(request,response);
		//response.sendRedirect("Search_state.jsp");
	
	}

}
