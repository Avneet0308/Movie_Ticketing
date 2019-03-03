package pack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Validate
 */
public class Validate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName=null;
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		OtherOperations oo = new OtherOperations();
		userName = oo.login(uname, pass);
		System.out.println(userName);
		if(userName==null)
		{
			
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('User or password incorrect');");
			   out.println("location='index.jsp';");
			   out.println("</script>");
		}
		else
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("UserId", userName);
			session.setAttribute("id", uname);
			response.sendRedirect("Dashboard.jsp?name="+userName);
		}
	}

}
