package servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.DQ1_MONSTER;
import dao.DQ1_MONSTER_DAO;

@WebServlet("/Lastkadai")
public class Lastkadai extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doGet(HttpServletRequest request,
      HttpServletResponse response)
      throws ServletException, IOException {
	    request.setCharacterEncoding("UTF-8");
	    //String name = request.getParameter("name");
	    
	    DQ1_MONSTER_DAO dq1monsDAO=new DQ1_MONSTER_DAO();
	    dq1monsDAO.add("1", "ƒXƒ‰ƒCƒ€");
	    List<DQ1_MONSTER> monsList = dq1monsDAO.findAll();
	    
	    request.setAttribute("monsList", monsList);

	    RequestDispatcher dispatcher =
	        request.getRequestDispatcher
	            ("/WEB-INF/jsp/Result.jsp");
	    dispatcher.forward(request, response);
  }
}