<%@ page import="java.sql.*" import="java.io.*"%>
<% session.setAttribute("ROLL",request.getParameter("num"));%>
<%
	ResultSet rs=null,rs1=null;
	ResultSetMetaData rsmd=null;
	int n=0;
	String sl="";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
		Statement st = con.createStatement();
		rs = st.executeQuery("Select major,sl from student where sno='"+(String)session.getAttribute("ROLL")+"'");
		rs.next();
		String major=rs.getString(1);
		sl=rs.getString(2);
		Statement st1=con.createStatement();
		rsmd = st1.executeQuery("Select * from "+major).getMetaData();
		n=rsmd.getColumnCount();
		Statement st2=con.createStatement();
		rs1=st2.executeQuery("select * from result where sno='"+(String)session.getAttribute("ROLL")+"'");
		rs1.next();
	}
	catch(Exception e)
	{
		out.println("Reason -->"+e);
	}
%>
<html>
    <head>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .customDiv{
                background-color: white;
                border-radius: 50px;
            }
            .main{
                background-color:darkblue;
                min-height:100px;
            }
            .content{
                color: antiquewhite;
                font-style: italic;
                font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                font-weight: 200;
            }
            body{
				background-image: url("home.jpg");
				background-repeat: no-repeat;
				background-position: center;
                background-size: cover ;
			}
        </style>
    </head>
    <body style="background-color: gray;">
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
                <div class="main col-lg-12" align=center>
                    <br><br>
                    <text class="content h1">STUDENT RESULT</text>
                </div>
            </div>
            <br><br>
        </div>
        <form action="calculate.jsp" method="">
        <div class="container customDiv">
            <br><br>
			<div class="row">
				<div class="col-lg-12" style="text-align:center;">
					<h1><%=session.getAttribute("ROLL")%></h1>
				</div>
			</div>
			<br><br>
            <div class="row">
                <div class="col-lg-12">
                    <span class="form-group col-lg-3" style="background-color:yellow; font-size:20px;">
                        <label >ENGLISH : </label>
                        <text><%=rs1.getString("fl")%></text>
                    </span>
					 <span class="form-group col-lg-3 col-lg-offset-3">
                        <label>ENGLISH : </label>
                        <input class="form-control" type="text" name="FL" required>
                    </span>
                </div>
            </div>
			<div class="row">
                <div class="col-lg-12">
                    <span class="form-group col-lg-3"  style="background-color:yellow; font-size:20px;">
                        <label><%=sl%> : </label>
                        <text><%=rs1.getString("sl")%></text>
                    </span>
					 <span class="form-group col-lg-3 col-lg-offset-3">
                        <label><%=sl%> : </label>
                        <input class="form-control" type="text" name="SL" required>
                    </span>
                </div>
            </div>
			<%
			for(int i=1;i<=n;i++)
			{
					out.print("<div class='row'>"+
                "<div class='col-lg-12'>"+
                    "<span class='form-group col-lg-3'  style='background-color:yellow; font-size:20px;'>"+
                        "<label>"+rsmd.getColumnName(i)+" : </label>"+
                        "<text>"+rs1.getString(rsmd.getColumnName(i))+"</text>"+
                    "</span>"+
					 "<span class='form-group col-lg-3 col-lg-offset-3'>"+
                        "<label>"+rsmd.getColumnName(i)+"</label>"+
                        "<input class='form-control' type='text' name="+String.valueOf(i)+" required>"+
                    "</span></div></div>");
			}
			%>
            <br><br>
            <div class="row">
                <div class="col-lg-3 col-lg-offset-4">
                <input type="submit" class="btn btn-success" value="UPDATE RESULT">
                </div>
            </div>
            <br><br>
        </div>
        </form>
    </body>
</html>