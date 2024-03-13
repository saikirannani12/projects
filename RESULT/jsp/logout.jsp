<%
    session.invalidate();
%>
<html>
    <head>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">        
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
        
       <h2 style="color:green"> Successfully Logged Out.<h2></h2>
        <br>
        <a href="home.jsp" class="btn btn-primary">Go Back to Home</a>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>