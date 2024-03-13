<%@ page import="java.sql.*"%>
<%
	ResultSet rs=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
		Statement st=con.createStatement();
		rs= st.executeQuery("select sno,sname,major,year,dob,sl from student where col='"+(String)session.getAttribute("COLLEGE")+"' order by year");
	}
	catch(Exception e)
	{
		out.print("Reason is :"+e);
	}
%>
<html>
	<head>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<style>
			.main{
				min-height:100px;
			}
			body{
				background-image: url("home.jpg");
				background-repeat: no-repeat;
				background-position: center;
                background-size: cover ;
			}
		</style>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row" style="background-image: url('header.png'), linear-gradient(to right, #002650 50%, #025f3e); color: white; min-height: 130px;">
                <br>
                <div class="col-lg-12">
                    <span class="col-lg-1"><img src="tsbie.jpg" class="img-circle" height="100px" width="100px"></span>
                    <span class="col-lg-6"><text class="h2">Telangana State Board of Secondary Education</text><br><h3>Govt of Telangana</h3></span>
                    <span class="col-lg-1"><img src="tsbie1.jpg" class="img-circle" height="100px" width="150px"></span>
                    <span class="col-lg-offset-1 col-lg-1"><img src="kcr.png" class="img-circle"  height="100px" width="150px"></span>
                </div>
            </div><br>
			<div class="row">
				<div class="col-lg-12">
					<nav class="navbar navbar-default navbar-inverse">
						<div class="navbar-collapse collapse">
	<ul class="nav navbar-nav navbar-right"> 
								<li class="active"><a href="logout.jsp"><text class="glyphicon glyphicon-user"></text>&nbsp;&nbsp;Logout</a></li>
							</ul>
						</div> 
					</nav>
				</div>
			</div>
		<h1 align=center> List Of Submissions </h1><br>
		<table class="table table-hover table-bordered">
			<%
				out.print("<tr>");
					out.print("<td>ROLL</td>");
					out.print("<td>STUDENT</td>");
					out.print("<td>MAJOR</td>");
					out.print("<td>YEAR</td>");
					out.print("<td>DOB</td>");
					out.print("<td>Sec_Lang</td>");
				out.print("</tr>");
				while(rs.next())
				{
					out.print("<tr>");
						for(int i=1;i<=6;i++)
						{
							if(i==5)
							{
								out.print("<td>"+rs.getDate(i)+"</td>");
								continue;
							}
							out.print("<td>"+rs.getString(i)+"</td>");
						}
					out.print("</tr>");
				}
			%>
		</table>
	</body>
</html>