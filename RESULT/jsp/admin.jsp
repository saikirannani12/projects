<html>
	<head>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<style>
			.main{
                background-color:darkblue;
                min-height:100px;
            }
			#view{
				padding: 20px;
				background-color: lightcyan;
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
                <br>
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
			<br>
			<div class="row">
				<div class="col-lg-offset-1">
					<span class="col-lg-2" id="view">
						<a href="submission.jsp">
							<!-- <button class="btn btn-primary"> SUBMISSIONS </button> -->
							<div class="card" style="width: 18rem;">
								<img class="card-img-top" src="submission.png" alt="Card image cap" style="width: 150px; height: 150px;">
								<br>
								<div class="card-body">
								  <p class="card-text">List of Students submitted</p>
								  <a href="submission.jsp" class="btn btn-primary">Submissions</a>
								</div>
							  </div>
						</a>
					</span>
					<span class="col-lg-offset-1 col-lg-2" id="view">
						<a href="update.jsp">
							<!-- <button class="btn btn-primary"> UPLOAD DETAILS </button> -->
							<div class="card" style="width: 18rem;">
								<img class="card-img-top" src="upload_details.jpg" alt="Card image cap" style="width: 150px; height: 150px;">
								<br>
								<div class="card-body">
									<p class="card-text">Upload Details of Students</p>
								  <a href="update.jsp" class="btn btn-primary">Upload Details</a>
								</div>
							  </div>
						</a>
					</span>
					<span class="col-lg-offset-1 col-lg-2" id="view">
						<a href="getResult.jsp">
							<!-- <button class="btn btn-success"> GET RESULTS </button> -->
							<div class="card" style="width: 18rem;">
								<img class="card-img-top" src="result.jpg" alt="Card image cap" style="width: 150px; height: 150px;">
								<br>
								<div class="card-body">
								  <p class="card-text">Get Results when released by GOVT</p>
								  <a href="getResult.jsp" class="btn btn-primary">Get Results</a>
								</div>
							  </div>
						</a>
					</span>
					<span class="col-lg-offset-1 col-lg-2" id="view">
						<a href="studentlist.jsp">
							<!-- <button class="btn btn-success"> GET RESULTS </button> -->
							<div class="card" style="width: 18rem;">
								<img class="card-img-top" src="student.png" alt="Card image cap" style="width: 150px; height: 150px;">
								<br>
								<div class="card-body">
								  <p class="card-text">List of Students in our college</p>
								  <a href="studentlist.jsp" class="btn btn-primary">Student List</a>
								</div>
							  </div>
						</a>
					</span>
				</div>
			</div>
		</div>
	</body>
</html>