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

import DAO.ClientDAO;
import DAO.InOutDAO;
import VO.ClientVO;
import VO.InoutVO;
import VO.ParkinglotsVO;

/**
 * Servlet implementation class InoutController
 */
@WebServlet("/InoutController")
public class InoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String flag=request.getParameter("flag");
	if(flag.equals("inOut"))
	{
		inOut(request,response);
		
	}
	}

	private void inOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int parkinglots_id=Integer.parseInt(request.getParameter("parkinglots_id"));
		session.setAttribute("parkinglots_id",parkinglots_id);
		
		String val_plotname2=request.getParameter("val_plotname2");
		session.setAttribute("val_plotname2",val_plotname2);
		
		List clientList=new ArrayList();
		ClientVO clientVO=new ClientVO();
		ClientDAO clientDAO=new ClientDAO();
		clientList=clientDAO.search(clientVO);
		
		session.setAttribute("clientList",clientList);
		
		response.sendRedirect("ADMIN/inout.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String flag=request.getParameter("flag");
	if(flag.equals("insertInOut"))
	{
		insertInOut(request,response);
	}
	}

	private void insertInOut(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int parkinglots_id=(Integer)session.getAttribute("parkinglots_id");
		
		int client_id=Integer.parseInt(request.getParameter("val_username"));
		
		String val_vehicletype=request.getParameter("val_vehicletype");
		String val_vehiclenumber=request.getParameter("val_vehiclenumber");
		String val_date=request.getParameter("val_date");
		String val_time=request.getParameter("val_time");
		String val_action=request.getParameter("val_action");
		
		ParkinglotsVO parkinglotsVO=new ParkinglotsVO();
		parkinglotsVO.setParkinglots_id(parkinglots_id);
		
		ClientVO clientVO=new ClientVO();
		clientVO.setClient_id(client_id);
		
		InoutVO inoutVO=new InoutVO();
		InOutDAO inOutDAO=new InOutDAO();
		inoutVO.setClientVO(clientVO);
		inoutVO.setParkinglotsVO(parkinglotsVO);
		inoutVO.setVal_date(val_date);
		inoutVO.setVal_time(val_time);
		inoutVO.setVal_vehiclenumber(val_vehiclenumber);
		inoutVO.setVal_action(val_action);
		inoutVO.setVal_vehicletype(val_vehicletype);
		
		inOutDAO.insert(inoutVO);
		
		response.sendRedirect("ADMIN/inout.jsp");
		
	}

}
