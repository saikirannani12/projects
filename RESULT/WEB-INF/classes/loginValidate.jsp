<%@ page import="java.sql.*" %>
<%
	String username=request.getParameter("USERNAME");
	String password=request.getParameter("PASSWORD");
	try{
		String driver=application.getInitParameter("DRIVER");
		String url=application.getInitParameter("URL");
		String user=application.getInitParameter("USERNAME");
		String pass=application.getInitParameter("PASSWORD");
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("Select * from users");
		int flag=0;
		while(rs.next())
		{
			if(rs.getString(1).equals(username) && rs.getString(2).equals(password))
			{
				flag=1;
				if(rs.getString(3).equals("admin"))
				{
					session.setAttribute("COLLEGE",rs.getString(4));
					response.sendRedirect("admin.jsp");
				}
				else
				{
					response.sendRedirect("authority.jsp");
				}
				break;
			}
		}
		if(flag==0)
		{
			response.sendRedirect("login.jsp?STATUS=Login_Failed");
		}
	}
	catch(SQLException | ClassNotFoundException e)
	{
	}
%>