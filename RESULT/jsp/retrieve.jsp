<%@ page import="java.sql.*"%>
<%
	int sum=0,total=0;
	String temp=request.getParameter("num");
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
		sl=rs.getString("sl");
		Statement st1 = con.createStatement();
		rs1=st1.executeQuery("select * from "+major);
		rsmd=rs1.getMetaData();
		rs1.next();
		n=rsmd.getColumnCount();
		Statement st2 = con.createStatement();
		rs2 = st2.executeQuery("select * from result where sno='"+temp+"'");
		rs2.next();
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
                border:2px solid black;
                margin-top:20px;
            }
            table.table-bordered > thead > tr > th{
                border:2px solid black;
            }
            table.table-bordered > tbody > tr > td{
                border:2px solid black;
            }
			table.res tr td,th{
				padding:15px;
				border: 2px solid black;
			}
            body{
                color: black;
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
            <div class="row">
                <div class="main col-lg-12">
                </div>
            </div>
        </div>
        <div class="container">
            <table class="table table-bordered">
                <tr>
                    <td class="h1 mainContent" colspan="2">Board Of Intermediate Education</td>
                </tr>
                <tr>
                    <td><label>STUDENT NAME : </label><text class="h3 content">&nbsp&nbsp<%=rs.getString("sname")%></text></td>
                    <td rowspan="2"><img class="center-block" src="photo.jpg" height="100" width="100"></td>
                </tr>
                <tr>
                    <td><label>FATHER NAME : </label><text class="h3 content">&nbsp&nbsp<%=rs.getString("fname")%></text></td>
                </tr>
                <tr>
                    <td><label>ROLL NO : </label><text class="h3 content">&nbsp&nbsp<%=temp%></text></td>
                    <td rowspan="2"><img  class="center-block" src="sign.jpg" width="75" height="30"></td>
                </tr>
                <tr>
                    <td colspan="2"><label>MAJOR : </label><text class="h3">&nbsp&nbsp<%=major%></text></td>
                </tr>
                <tr>
                    <td colspan="2"><label>COLLEGE : </label><text class="h3">&nbsp&nbsp<%=rs.getString("col")%></text></td>
                </tr>
            </table>
			<br><br>
			<div class="row">
                <dt class="h4"><b>These are the Marks secured by the Candidate.....</b></dt>
				<div class="col-lg-offset-4 col-lg-3">
				<br><br>
					<table class="res">
                        <tr class="scope">
                            <th>SUBJECT</th>
                            <th>MAX MARKS</th>
                            <th>MARKS SECURED</th>                   
                       </tr>
						<tr>
                            <td> ENGLISH : </td>
                            <td>100</td>
							<td><%=rs2.getString("fl")%></td>
							<%
								sum+=Integer.parseInt(rs2.getString("fl"));
								total+=100;
							%>
						</tr>
						<tr>
                            <td><%=rs.getString("sl")%></td>
                            <td>100</td>
							<td><%=rs2.getString("sl")%></td>
							<%
								sum+=Integer.parseInt(rs2.getString("sl"));
								total+=100;
							%>
						</tr>
						<%
							for(int i=1;i<=n;i++)
							{
								String str = rsmd.getColumnName(i);
								out.print("<tr>");
									out.print("<td>"+str+"</td>");
									out.print("<td>"+rs1.getString(str)+"</td>");
									out.print("<td>"+rs2.getString(str)+"</td>");
								out.print("</tr>");
								sum+=Integer.parseInt(rs2.getString(str));
								total+=Integer.parseInt(rs1.getString(str));
							}
                        %>
                        <tr>
                            <td>TOTAL : </td>
                            <td><strong><%=total%></strong></td>
                            <td><strong><%=sum%></strong></td>
                        </tr>
					</table>
					<br>
					<br>
				</div>
			</div>
			<div align=center>
				<button id="demo" class="btn btn-success" onclick="func()"><span class="glyphicon glyphicon-save"></span> Download</button>
			</div>
			<br><br>
        </div>
    </body>
</html>