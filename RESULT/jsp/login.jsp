<%! String status="",p="";%>
<%
	status = request.getParameter("STATUS");
	if(status!=null)
	{
		p="<span class='glyphicon glyphicon-remove-sign'></span><text class='text-danger'>  Username or Password Invalid...</text>";
	}
	else
		p="";
%>
<html>
    <head>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <style>
            .customDiv{
                text-align: center;
                min-height: 50px;
                background-color:darkslateblue;
                text-emphasis-color:inherit;
            }
            .loginblock{
                background-color: white;
                min-height:400px;
                border-top-left-radius: 50px;
                border-bottom-left-radius: 15px;
                border-top-right-radius: 15px;
                border-bottom-right-radius: 50px;;
            }
            .back{
                background-color: darkgray;
            }
            body{
				background-image: url("home.jpg");
				background-repeat: no-repeat;
				background-position: center;
                background-size: cover ;
			}
        </style>
    </head>
    <body class=back>
        <form action="login.com" method="post">
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
                <div class="row">
                    <div class="loginblock col-lg-offset-4 col-lg-3">
                        <br><br><br>
                            <div class="form-group">
                                <label><span class="glyphicon glyphicon-user"></span> Login ID : </label>
                                <input class="form-control" type=text name=USERNAME required>
                            </div>
                            <div class="form-group">
                                <label><span class="glyphicon glyphicon-lock"></span> Password : </label>
                                <input class="form-control" type=password name=PASSWORD required>
                            </div>
							<%=p%>
                            <br><br>
                            <div class="form-group">
                                <input class="btn btn-primary btn-block" type="submit" value="Sign In">
                            </div>                          
                    </div>
                </div>
            </div>
        </form>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>