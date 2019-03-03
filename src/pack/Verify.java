package pack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Verify
 */
public class Verify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Verify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String name = request.getParameter("name");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		OtherOperations oo = new OtherOperations();
		String check=oo.register(name, uname, pass);
		if(check==null)
		{
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('UserName Already Exist.....');");
			   out.println("location='Register.jsp';");
			   out.println("</script>");
		}
		else {
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('Registration Successful......');");
			   out.println("location='index.jsp';");
			   out.println("</script>");
		}
	}

}
