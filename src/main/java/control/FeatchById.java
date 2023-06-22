package control;

import java.io.IOException;
import dao.Dao;
import dto.DtoStd;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/fetchbyid")
public class FeatchById extends HttpServlet{
	  @Override
	  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  	// TODO Auto-generated method stub
	  	//super.doGet(req, resp);
	  	 String rollno=req.getParameter("rollno");
	  	 long crollno=Long.parseLong(rollno);
	  	 
	  	 Dao dao=new Dao();
	  	 DtoStd s=dao.fetchById(crollno);
	  	 
	  	 req.setAttribute("studentdata",s);
	  	 
	  	 RequestDispatcher rd=req.getRequestDispatcher("student.jsp");
	  	 rd.forward(req, resp);

}
}