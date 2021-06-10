package packages;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RegularUserDBUtilTwo {
	
	private static Connection con = null;
	
	public static List<RegularUser> validate(String uname, String pword){
		
		ArrayList<RegularUser> ru = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			
			String sql = "select * from regularuser where username= '"+uname+"' and password= '"+pword+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int idRegularUserR = rs.getInt(1);
				String MaximumOrderR = rs.getString(2);
				String MaximumWeightR = rs.getString(3);
				String WashingR = rs.getString(4);
				String WashingDryR = rs.getString(5);
				String WashingDryPressR = rs.getString(6);
				String MendingR = rs.getString(7);
				String OneDayServiceR = rs.getString(8);
				String PickAndDeliveryR = rs.getString(9);
				String usernameR = rs.getString(10);
				String passwordR = rs.getString(11);
				
				RegularUser r = new RegularUser(idRegularUserR, MaximumOrderR, MaximumWeightR, WashingR, WashingDryR, WashingDryPressR, MendingR, OneDayServiceR, PickAndDeliveryR, usernameR, passwordR);
				
				ru.add(r);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return ru;
	}
}
