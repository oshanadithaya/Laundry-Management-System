package packages;

import java.sql.Connection;
import java.sql.Statement;

public class RegularUserDBUtil {
	
	private static Connection con = null;
	private static boolean isSuccess;
	
	public static boolean InsertRegular (String MaximumOrder, String MaximumWeight, String Washing, String WashingDry, String WashingDryPress, String Mending, String OneDayService, String PickAndDelivery, String username, String password) {
		
		boolean isSuccess = false;
		
		//create database connection
		/*String url = "jdbc:mysql://localhost:3306/packages";
		String user = "root";
		String pass = "oshan@0765649523";*/
		
		//validation
		try {
			
			/*Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);*/
			
			con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "insert into regularuser values (0,'"+MaximumOrder+"', '"+MaximumWeight+"', '"+Washing+"', '"+WashingDry+"', '"+WashingDryPress+"', '"+Mending+"', '"+OneDayService+"', '"+PickAndDelivery+"', '"+username+"', '"+password+"')";
			
			int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				 isSuccess = true;
			 }
			 else {
				 isSuccess = false; 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateRegularUser(String idRegularUser, String MaximumOrder, String MaximumWeight, String Washing, String WashingDry, String WashingDryPress, String Mending, String OneDayService, String PickAndDelivery, String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "update regularuser set MaximumOrder='"+MaximumOrder+"',MaximumWeight='"+MaximumWeight+"',Washing='"+Washing+"',WashingDry='"+WashingDry+"',WashingDryPress='"+WashingDryPress+"',Mending='"+Mending+"',OneDayService='"+OneDayService+"',PickAndDelivery='"+PickAndDelivery+"',username='"+username+"',password='"+password+"'"
					+"where idRegularUser='"+idRegularUser+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				 isSuccess = true;
			 }
			 else {
				 isSuccess = false; 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean deleteRegularUser(String idRegularUser) {
		int convId = Integer.parseInt(idRegularUser);
		
		try {
			con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "delete from regularuser where idRegularUser='"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				 isSuccess = true;
			 }
			 else {
				 isSuccess = false; 
			 }
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
