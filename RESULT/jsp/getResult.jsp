<%@ page import="java.sql.*"%>
<%
	ResultSet rs=null;
	String col=(String)session.getAttribute("COLLEGE");
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
		Statement st = con.createStatement();
		rs = st.executeQuery("Select sname,sno,major from student where col='"+col+"' and status=1");
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>
<html>
	<head>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<style>
			table,tr,td{
				border: 2px solid black;
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
		</div>
		<br><br>
		<div class="container">
			<table class="table table-bordered table-hover">
					<tr>
						<th> STUDENT NAME</th>
						<th> ROLL NUMBER</th>
						<th> MAJOR</th>
					</tr>
					<%
						while(rs.next())
						{
							out.print("<tr>");
								for(int i=1;i<=3;i++)
								{
									if(i==2)
									{
										out.print("<td><a href='retrieve.jsp?num="+rs.getString(i)+"'>"+rs.getString(i)+"</a></td>");
										continue;
									}
									out.print("<td>"+rs.getString(i)+"</td>");
								}
							out.print("</tr>");
						}
					%>
			</table>
		</div>
	</body>
</html>