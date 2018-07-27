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
import VO.FaqCategoryVO;
import VO.FaqVO;



/**
 * Servlet implementation class FaqCategoryController
 */
@WebServlet("/FaqCategoryController")
public class FaqCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		//HttpSession ss=request.getSession();
		
		if(flag.equals("searchFaqCategory"))
		{
			searchFaqCategory(request,response);
		}
		else if(flag.equals("editFaqCategory"))
		{
			editFaqCategory(request,response);
		}
		else if(flag.equals("updateFaqCategory"))
		{
			updateFaqCategory(request,response);
		}
		else if(flag.equals("deleteFaqCategory"))
		{
			deleteFaqCategory(request,response);
		}
		
		
	}

	private void deleteFaqCategory(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		int category_id=Integer.parseInt(request.getParameter("category_id"));
		
		FaqCategoryVO faqCategoryVO = new FaqCategoryVO();
		FaqCategoryDAO faqCategoryDAO = new FaqCategoryDAO();
		
		faqCategoryVO.setCategory_id(category_id);
		faqCategoryDAO.deleteFaqCategory(faqCategoryVO);
		
		HttpSession httpSession=request.getSession();
		httpSession.removeAttribute("errorMsg");
         if(!faqCategoryDAO.deleteFaqCategory(faqCategoryVO)){
			
			httpSession.setAttribute("errorMsg","Remove child rows first");
			System.out.print("hi...");
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
			System.out.print("in else...");
		}
		
		searchFaqCategory(request, response);

		
		
	}

	private void updateFaqCategory(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		int category_id=Integer.parseInt(request.getParameter("category_id"));
		String s1=request.getParameter("val_category");
		String s2=request.getParameter("val_description");
		
		FaqCategoryVO v=new FaqCategoryVO();
		v.setCategory_id(category_id);
		v.setVal_category(s1);
		v.setVal_description(s2);
		FaqCategoryDAO d=new FaqCategoryDAO();
		d.update(v);
		searchFaqCategory(request, response);
	}

	private void insertFaqCategory(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("val_category");
		String s2=request.getParameter("val_description");
		
		
		FaqCategoryVO v=new FaqCategoryVO();
		v.setVal_category(s1);
		v.setVal_description(s2);
		
		FaqCategoryDAO d=new FaqCategoryDAO();
		d.insert(v);
        response.sendRedirect("ADMIN/Add_FAQ_Category.jsp");
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		//HttpSession ss=request.getSession();
		if(flag.equals("insertFaqCategory"))
		{
			insertFaqCategory(request,response);
		
		}
		
	}

	private void editFaqCategory(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		System.out.println("Edit !!!!");
		int category_id=Integer.parseInt(request.getParameter("category_id"));
		FaqCategoryDAO d=new FaqCategoryDAO();
		FaqCategoryVO v=new FaqCategoryVO();
		v.setCategory_id(category_id);
		List ls=d.edit(v);
		System.out.println("SIze : :"+ ls.size());
		session.setAttribute("faqCategoryList",ls);
		response.sendRedirect("ADMIN/Edit_faq_category.jsp");
		
	}

	private void searchFaqCategory(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String flag=request.getParameter("flag");
        HttpSession ss=request.getSession();
		
		FaqCategoryDAO d=new FaqCategoryDAO();
		FaqCategoryVO v=new FaqCategoryVO();
		
		
		
		List ls=new ArrayList();
		ls=d.search(v);
		System.out.println(ls);
		ss.setAttribute("faqCategoryList",ls);
		response.sendRedirect("ADMIN/Search_faq_category.jsp");
		
		
	}

}
