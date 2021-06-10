package packages;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateRegUserServlet
 */
@WebServlet("/UpdateRegUserServlet")
public class UpdateRegUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String idRegularUser = request.getParameter("id");
		String MaximumOrder = request.getParameter("mOrder");
		String MaximumWeight = request.getParameter("mWeight");
		String Washing = request.getParameter("w");
		String WashingDry = request.getParameter("wd");
		String WashingDryPress = request.getParameter("wdp");
		String Mending = request.getParameter("m");
		String OneDayService = request.getParameter("ods");
		String PickAndDelivery = request.getParameter("pad");
		String username = request.getParameter("uname");
		String password = request.getParameter("pword"); 
		
		boolean isTrue;
		
		isTrue = RegularUserDBUtil.updateRegularUser(idRegularUser, MaximumOrder, MaximumWeight, Washing, WashingDry, WashingDryPress, Mending, OneDayService, PickAndDelivery, username, password);
		
		if(isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd2 = request.getRequestDispatcher("unsuccess.jsp");
			rd2.forward(request, response);
		}
	}

}
