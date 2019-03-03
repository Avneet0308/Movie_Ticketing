package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OtherOperations {

	public String login(String userId, String pass)
	{
		String userName=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "avneet", "avneet");
		PreparedStatement ps = c.prepareStatement("Select uname from customer where userid=? and pass=?");
		//int x = s.executeUpdate("insert into remDept2 values('123456','Avneet Vishnoi','Azad Nagar')");
		ps.setString(1, userId);
		ps.setString(2, pass);
		ResultSet rs =ps.executeQuery();
		while(rs.next())
			userName=rs.getString(1);
		c.close();
	}
	catch(SQLException sqle)
	{
		System.out.println(sqle.getMessage());
		sqle.printStackTrace();
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
		e.printStackTrace();
	}
	return userName;
  }
	
	public String register(String name,String userId, String pass)
	{
		String userName=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "avneet", "avneet");
		PreparedStatement ps = c.prepareStatement("Select uname from customer where userid=?");
		//int x = s.executeUpdate("insert into remDept2 values('123456','Avneet Vishnoi','Azad Nagar')");
		ps.setString(1, userId);
		ResultSet rs =ps.executeQuery();
		while(rs.next())
			userName=rs.getString(1);
		c.close();
	}
	catch(SQLException sqle)
	{
		System.out.println(sqle.getMessage());
		sqle.printStackTrace();
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
		e.printStackTrace();
	}
	if(userName!=null)
		return userName;
	else
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "avneet", "avneet");
			PreparedStatement ps = c.prepareStatement("insert into customer(UserId,pass,uname) values(?,?,?)");
			//int x = s.executeUpdate("insert into remDept2 values('123456','Avneet Vishnoi','Azad Nagar')");
			ps.setString(1, userId);
			ps.setString(2, pass);
			ps.setString(3, name);
			ps.executeUpdate();
			c.close();
		}
		catch(SQLException sqle)
		{
			System.out.println(sqle.getMessage());
			sqle.printStackTrace();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return "Inserted";
	}
  }

}
