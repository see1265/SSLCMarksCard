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
@WebServlet("/result")
public class Studentrv extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		 String rollno=req.getParameter("rollno");
	  	 long crollno=Long.parseLong(rollno);
		String p1=req.getParameter("dob");
		
		
		
		Dao d1=new Dao();
		DtoStd ed=d1.login(crollno);
		
		if(crollno==ed.getRollNo()) {
			req.setAttribute("studentdata",ed);
			 
			 RequestDispatcher rd=req.getRequestDispatcher("student.jsp");
			 rd.forward(req, resp);
			
			
		}else {
			resp.sendRedirect("student.jsp?error=invalid");
		}
	}
}