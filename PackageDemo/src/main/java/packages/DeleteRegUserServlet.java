package packages;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteRegUserServlet
 */
@WebServlet("/DeleteRegUserServlet")
public class DeleteRegUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String idRegularUser = request.getParameter("id");
		boolean isTrue;
		
		isTrue = RegularUserDBUtil.deleteRegularUser(idRegularUser);
		
		if(isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("EditPackages.html");
			rd.forward(request, response);
		}
		else {
			
			RequestDispatcher rd2 = request.getRequestDispatcher("unsuccess.jsp");
			rd2.forward(request, response);
		}
		
	}

}
