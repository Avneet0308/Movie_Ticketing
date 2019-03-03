package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
//import java.util.ArrayList;

public class SelectedSeat {
	Connection c;
	Statement s;
	ResultSet rs;
	String data="";
	ArrayList al = new ArrayList();
public ArrayList sel()
{
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	 c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","avneet", "avneet");
	 s=c.createStatement();
		rs=s.executeQuery("select id from book");
		
		while(rs.next())
		{
			String[] items = rs.getString(1).split(" , ");
		      //List<String> itemList = new ArrayList<String>();
		      for (String item : items) {
		         al.add(item);
		      }
			//al=(ArrayList) Arrays.asList();
			//data+=rs.getString(1)+" ";
		}
		//System.out.println(data);
		c.close();
	}catch(SQLException e){
			System.out.println(e);
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return al;
	
}

public void book(String userid,String seats)
{
	//String arr[] = seats.split(" , ");
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	 c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","avneet", "avneet");
	 s=c.createStatement();
		s.executeUpdate("insert into book(userid,id) values('"+userid+"','"+seats+"')");
		c.close();
	}catch(SQLException e){
			System.out.println(e);
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
}
}

