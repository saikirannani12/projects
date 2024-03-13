<%@ page import="java.sql.*"%>
<%
	int sum=0,total=0;
	String temp=request.getParameter("roll");
	ResultSet rs=null,rs1=null,rs2=null;
	String sl="",major="";
	int n=0;
	ResultSetMetaData rsmd=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
		Statement st=con.createStatement();
		rs=st.executeQuery("select * from student where sno='"+temp+"'");
		rs.next();
		major=rs.getString("major");
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
            .main{
                background-color: darkblue;
                min-height: 25px;
            }
            .mainContent{
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 50px;
                text-align: center;
                font-weight: bolder;
            }
            .content{
                font-size: x-large;
                text-align: center;
                font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            }
            .customDiv{
                background-color: silver;
                min-height: 200px;
            }
            .customDiv2{
                background-color: red;
                min-height: 200px;
            }   
            table.table-bordered{
                border:1px solid white;
                margin-top:20px;
            }
            table.table-bordered > thead > tr > th{
                border:1px solid white;
            }
            table.table-bordered > tbody > tr > td{
                border:1px solid white;
            }
			table.res tr td,th{
				padding:15px;
				border: 2px solid black;
			}
            body{
				background-image: url("home.jpg");
				background-repeat: no-repeat;
				background-position: center;
                background-size: cover ;
			}
        </style>
		<script>
			function func()
			{
				document.getElementById("demo").style.display='none';
				window.print();
				document.getElementById("demo").style.display='block';
			}
		</script>
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
            </div><br><div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-default navbar-inverse">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="home.jsp">Home</a></li>
                                <li><a class="dropdown-toggle" data-toggle="dropdown">Services<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="student.html">Student Services</a></li>
                                        <li><a href="login.jsp">College Services</a></li>
                                        <li><a>Other</a></li>
                                    </ul>
                                </li>
                                <li><a href="dummy.jsp"><span class="glyphicon glyphicon-education"></span>&nbsp;&nbsp;Results</a></li>
                                <li><a href="contact.html">Contact</a></li>
                                <li><a href="https://jntuh.ac.in/about-us">About Us</a></li>
                            </ul>
                            <!--
    <ul class="nav navbar-nav navbar-right"> 
                                <li class="active"><a href="login.jsp"><span class="glyphicon glyphicon-user"></span> SIGN IN</a></li>
                            </ul>
-->
                        </div> 
                    </nav>
                </div>
            </div>
        <div class="container">
            <table class="table table-bordered">
                <tr>
                    <td class="h1 mainContent" colspan="2">Student Info</td>
                </tr>
                <tr>
                    <td><label>STUDENT NAME : </label><text class="h3 content">&nbsp&nbsp<%=rs.getString("sname")%></text></td>
                    <td rowspan="2"><img class="center-block" src="photo.jpg" height="100" width="100"></td>
                </tr>
                <tr>
                    <td><label>FATHER NAME : </label><text class="h3 content">&nbsp&nbsp<%=rs.getString("fname")%></text></td>
                </tr>
                <tr>
                    <td><label>DOB : </label><text class="h3 content">&nbsp&nbsp<%=rs.getString("dob").substring(0,10)%></text></td>
                    <td rowspan="2"><img  class="center-block" src="sign.jpg" width="75" height="30"></td>
                </tr>
                <tr>
                    <td colspan="2"><label>ROLL NO : </label><text class="h3">&nbsp&nbsp<%=temp%></text></td>
                </tr>
                <tr>
                    <td colspan="2"><label>MAJOR : </label><text class="h3">&nbsp&nbsp<%=major%></text></td>
                </tr>
                <tr>
                    <td colspan="2"><label>COLLEGE : </label><text class="h3">&nbsp&nbsp<%=rs.getString("col")%></text></td>
                </tr>
            </table>
			<div align=center>
				<button id="demo" class="btn btn-success" onclick="func()"><span class="glyphicon glyphicon-save"></span> Download</button>
			</div>
			<br><br>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>