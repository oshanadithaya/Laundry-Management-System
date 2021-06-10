package packages;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegularServlet")
public class RegularServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		
		boolean ispackages;
		
		ispackages = RegularUserDBUtil.InsertRegular(MaximumOrder, MaximumWeight, Washing, WashingDry, WashingDryPress, Mending, OneDayService, PickAndDelivery, username, password);
		
		if(ispackages == true) {
			RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd2 = request.getRequestDispatcher("unsuccess.jsp");
			rd2.forward(request, response);
		}
	}

}
