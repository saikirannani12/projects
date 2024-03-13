<%@ page import="java.sql.*"%>
<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
		Statement st=con.createStatement();
		String temp=request.getParameter("HT");
		ResultSet rs = st.executeQuery("Select * from result where sno='"+temp+"'");
		out.print("<div align=center><table border='2'>");
		out.print("<tr><th height=50 width=100>Roll Number :</th><td height=50 width=100>"+temp+"</td></tr>");
		rs.next();
		ResultSetMetaData rsmd = rs.getMetaData();
		int n = rsmd.getColumnCount();
		for(int i=1;i<=n-1;i++)
			out.print("<tr><th height=50 width=100>"+rsmd.getColumnName(i)+"</th><td height=50 width=100>"+rs.getString(i)+"</td></tr>");
%>