<%@ page import="java.sql.*"%>
<%
		String num=request.getParameter("HT");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("Select * from student where status=0");
		int flag=0;
		while(rs.next())
		{
			flag=1;
		}
		if(flag==1)
		{
			out.print("<h2>Results will be updated soon....</h2>");
		}
		else
		{
			response.sendRedirect("retrieve.jsp?num="+num);
		}
%>