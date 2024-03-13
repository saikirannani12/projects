<% String college=(String)session.getAttribute("COLLEGE");%>
<html>
    <head>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
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
        <form action="update.com" method="POST" enctype="multipart/form-data">
            <div class="container customDiv">
                <div class="row">
                    <div class="main col-lg-12" align="center">
                        <br><br>
                        <text class="content h1">STUDENT DETAILS</text>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-lg-12">
                        <span class="form-group col-lg-6">
                            <label>STUDENT NAME :</label>
                            <input class="form-control" type="text" name="SNAME" required>
                        </span>
                        <span class="form-group col-lg-6">
                            <label>FATHER NAME :</label>
                            <input class="form-control" type="text" name="FNAME" required>
                        </span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <span class="form-group col-lg-6">
                            <label>ROLL NO :</label>
                            <input class="form-control" type="text" name="ROLL" required>
                        </span>
                        <span class="form-group col-lg-6">
                            <label>COLLEGE NAME :</label>
                            <input class="form-control" type="text" disabled=true name="COL" 
							value="<%=college%>">
                        </span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <span class="form-group col-lg-6">
                            <label>COURSE :</label>
                            <select  class="form-control" name="MAJOR">
								<option>SELECT</option>
                                <option>MPC</option>
                                <option>BiPC</option>
                                <option>MEC</option>
								<option>HEC</option>
								<option>CEC</option>
                            </select>
                        </span>
                        <span class="form-group col-lg-6">
                            <label>DOB :</label>
                            <input class="form-control" type="date" name="DOB" required>
                        </span>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-lg-12">
                        <span class="form-group col-lg-6">
                            <label>SECOND LANGUAGE :</label>
                            <select class="form-control" name="SL">
								<option>SELECT</option>
                                <option>SANSKRIT</option>
                                <option>FRENCH</option>
                                <option>ARABIC</option>
                            </select>
                        </span>
                        <span class="form-group col-lg-6">
                            <label>YEAR :</label>
                            <select  class="form-control" name="YEAR">
								<option>SELECT</option>
                                <option>1</option>
                                <option>2</option>
                            </select>
                        </span>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-lg-12">
                        <span class="form-group col-lg-6">
                            <label>PHOTO :</label>
                            <input class="form-control-file" type="file" name="PHOTO" required>
                        </span>
                        <span class="form-group col-lg-6">
                            <label>SIGNATURE :</label>
                            <input class="form-control-file" type="file" name="SIGN" required>
                        </span>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-lg-offset-5 col-lg-6">
                       <input type="reset" class="btn btn-primary" value="CLEAR">
                       <input type="submit" class="btn btn-success" value="UPLOAD">
                    </div>
                </div>
                <br><br>
            </div>
        </form>
    </body>
</html>