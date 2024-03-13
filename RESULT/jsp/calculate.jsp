<%@ page import="java.sql.*"%>
<%
	int fl=Integer.parseInt(request.getParameter("FL"));
	int sl=Integer.parseInt(request.getParameter("SL"));
	String major=(String)session.getAttribute("MAJOR");
	String temp=(String)session.getAttribute("ROLL");
	Connection con=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
		Statement st1=con.createStatement();
		Statement st2=con.createStatement();
		Statement st3=con.createStatement();
		ResultSet rs = st1.executeQuery("Select * from "+major);
		ResultSetMetaData rsmd = rs.getMetaData();
		st2.executeUpdate("Insert into Result values('"+temp+"',0,0,0,0,0,0,0,0,0,0,"+fl+","+sl+")");
		int n=rsmd.getColumnCount();
		for(int i=1;i<=n;i++)
		{
			st3.executeUpdate("update result set "+rsmd.getColumnName(i)+"="+Integer.parseInt(request.getParameter(String.valueOf(i)))+" where sno='"+temp+"'");
		}
		st1.executeUpdate("Update Student set status=1 where sno='"+temp+"'");
		response.sendRedirect("authority.jsp");
	}
	catch(Exception p)
	{
		try{
			con.createStatement().executeUpdate("delete from result where sno='"+temp+"'");
			Statement st1=con.createStatement();
			Statement st2=con.createStatement();
			Statement st3=con.createStatement();
			ResultSet rs = st1.executeQuery("Select * from "+major);
			ResultSetMetaData rsmd = rs.getMetaData();
			st2.executeUpdate("Insert into Result values('"+temp+"',0,0,0,0,0,0,0,0,0,0,"+fl+","+sl+")");
			int n=rsmd.getColumnCount();
			for(int i=1;i<=n;i++)
			{
				st3.executeUpdate("update result set "+rsmd.getColumnName(i)+"="+Integer.parseInt(request.getParameter(String.valueOf(i)))+" where sno='"+temp+"'");
			}
			st1.executeUpdate("Update Student set status=1 where sno='"+temp+"'");
			response.sendRedirect("authority.jsp");
		}
		catch(Exception e)
		{
			out.print(e);
		}
		out.print(p);
	}
%>