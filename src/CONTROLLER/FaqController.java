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
import DAO.FaqDAO;
import DAO.PackageDAO;
import VO.FaqCategoryVO;
import VO.FaqVO;
import VO.PackageVO;


/**
 * Servlet implementation class FaqController
 */
@WebServlet("/FaqController")
public class FaqController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqController() {
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
		 if(flag.equals("editFaq"))
		{
			editFaq(request,response);
		}
	
		else if(flag.equals("searchFaq"))
		{
			searchFaq(request,response);
		}
	
		if(flag.equals("updateFaq"))
		{
			updateFaq(request,response);
		
		}
		else if(flag.equals("loadFaqCategory"))
		{
			loadFaqCategory(request,response);
		}
		else if(flag.equals("deleteFaq"))
		{
			deleteFaq(request,response);
		}
			
			
	}

	private void deleteFaq(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("faq_id"));
		FaqVO faqVO = new FaqVO();
		faqVO.setFaq_id(id);
		FaqDAO faqDAO = new FaqDAO();
		faqDAO.deleteFaq(faqVO);

		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
         if(!faqDAO.deleteFaq(faqVO)){
			
			httpSession.setAttribute("errorMsg","Remove child rows first");
			System.out.print("hi...");
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
			System.out.print("in else...");
		}
		
		searchFaq(request, response);
	}

	private void loadFaqCategory(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException  {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		FaqCategoryVO faqCategoryVO = new FaqCategoryVO();
		FaqCategoryDAO faqCategoryDAO = new FaqCategoryDAO();
		List faqCategoryList= faqCategoryDAO.search(faqCategoryVO);
		session.setAttribute("faqCategoryList",faqCategoryList);
		
		response.sendRedirect("ADMIN/Add_FAQs.jsp");
	}

	private void updateFaq(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		int category_id = Integer.parseInt(request.getParameter("val_category"));

		int id=Integer.parseInt(request.getParameter("faq_id"));
		String s1=request.getParameter("val_question");
		String s2=request.getParameter("val_answer");
		FaqCategoryVO faqCategoryVO = new FaqCategoryVO();
		faqCategoryVO.setCategory_id(category_id);
		FaqVO v=new FaqVO();
		v.setFaqCategoryVO(faqCategoryVO);
		v.setFaq_id(id);
		v.setVal_answer(s2);
		v.setVal_question(s1);
		FaqDAO d=new FaqDAO();
		d.update(v);
		searchFaq(request, response);
//		response.sendRedirect("Search_FAQ.jsp");
		
		
	}

	private void editFaq(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		//int category_id = Integer.parseInt(request.getParameter("val_category"));

		HttpSession session=request.getSession();
		int id=Integer.parseInt(request.getParameter("faq_id"));
		FaqCategoryVO faqCategoryVO = new FaqCategoryVO();
		FaqCategoryDAO faqCategoryDAO = new FaqCategoryDAO();
		List faqCategoryList = faqCategoryDAO.search(faqCategoryVO);
		FaqVO v = new FaqVO();
		v.setFaq_id(id);
		
		FaqDAO d=new FaqDAO();
		d.edit(v);
		List ls=d.edit(v);
		session.setAttribute("faqList",ls);
		session.setAttribute("faqCategoryList", faqCategoryList);
		response.sendRedirect("ADMIN/Edit_faq.jsp");
	}

	private void searchFaq(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
        HttpSession ss=request.getSession();
		
		FaqDAO d=new FaqDAO();
		FaqVO v=new FaqVO();
		
		List ls=new ArrayList();
		ls=d.search(v);
		System.out.println(ls);
		ss.setAttribute("faqList",ls);
		response.sendRedirect("ADMIN/Search_FAQ.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		HttpSession ss=request.getSession();
		if(flag.equals("insertFaq"))
		{
			insertFaq(request,response);
		
		}
		
		
	}

	


	

	private void insertFaq(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int category_id = Integer.parseInt(request.getParameter("val_category"));
		String s1=request.getParameter("val_question");
		String s2=request.getParameter("val_answer");
		
		FaqCategoryVO faqCategoryVO = new FaqCategoryVO();
		faqCategoryVO.setCategory_id(category_id);
		FaqVO v=new FaqVO();
		v.setFaqCategoryVO(faqCategoryVO);
		v.setVal_question(s1);
		v.setVal_answer(s2);
		
		FaqDAO d=new FaqDAO();
		d.insert(v);
        response.sendRedirect("ADMIN/Add_FAQs.jsp");
		
	}

}
