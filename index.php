<?php
require_once 'config.php';


if(isset($_POST['Login'])){
    $uname = mysqli_real_escape_string($conn,$_POST['email']);
    $password = mysqli_real_escape_string($conn,$_POST['pass']);


    if ($uname != "" && $password != ""){

        $sql_query = "select * from users where email='".$uname."' and password='".$password."'";
        //echo $sql_query;
        $result = mysqli_query($conn,$sql_query);
        $row = mysqli_num_rows($result);
        //echo $row;
        //$count = $row['cntUser'];

        if($row == 1){
            $_SESSION['uname'] = $uname;
            echo "<script> window.location.href='map.html'; </script>";
        }else{
            echo "Invalid username and password";
        }

    }

}
?>
<html>
<head>
		<title>Login</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
      	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;500;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet"  href="css/login.css">
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        
            
    </head>

    <body>
        		<header class="header">
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container ml-1"><a  href="html.html" class="navbar-brand text-uppercase font-weight-bold"><img src="Images/logooo3.png"></a>
            <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler bg-light navbar-toggler-right"><i class="fa fa-bars"></i></button>
            
            <div id="navbarSupportedContent" class="collapse navbar-collapse justify-content-end navbar-right">
                  <ul class="navbar-nav  ml-auto">
                    <li class="nav-item navbar-right active"><a  href="html.html" class="nav-link text-uppercase">Home <span class="sr-only">(current)</span></a></li>
                    <li class="nav-item"><a href="html.html#portfolio" class="nav-link text-uppercase ">About</a></li>
					    <li class="nav-item"><a href="map.html" class="nav-link disabled text-uppercase">Map</a></li>
                    <li class="nav-item"><a href="quizzer.html" class="nav-link disabled text-uppercase">Quizzes</a></li>
                    <li class="nav-item"><a href="index.php" style="text-shadow: none;color:#212529;" class="nav-link disabled  btn btn-light text-uppercase">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>	
<div class="body">
		<div class="veen">
			<div class="login-btn splits">
				<p>Already a user?</p>
				<button class="active">Login</button>
			</div>
			<div class="rgstr-btn splits">
				<p>Don't have an account?</p>
				<button>Register</button>
			</div>
			<div class="wrapper">
				<form id="login" action="#" method="post" tabindex="500">
					<h3>Login</h3>
					<div class="username">
						<input type="email" class="textbox" name="email" placeholder="email">
						<label>Mail </label>
					</div>
					<div class="passwd">
						<input type="password" class="textbox" name="pass" placeholder="Password"/>
						<label>Password</label>
					</div>
					<div class="submit">
						<input type="Submit" class="btn btn-warning"  name="Login" value="login"/> 
					</div>
				</form>
				<form id="register" tabindex="502">
					<h3>Register</h3>
					<div class="fullname">
						<input type="text" class="textbox" name="txt_pwd" placeholder="fullname"/>>
						<label>Full Name</label>
					</div>
					<div class="mail">
						<input type="mail" class="textbox" name="txt_pwd" placeholder="mail"/>>
						<label>Mail</label>
					</div>
					<div class="uid">
						<input type="text" class="textbox" name="txt_pwd" placeholder="username"/>>
						<label>User Name</label>
					</div>
					<div class="passwd">
						<input type="password" class="textbox" name="txt_pwd"  placeholder="Password">
						<label>Password</label>
					</div>
					<div class="submit">
						<input type="Submit" class="btn btn-danger"  name="register" value="register"/> 
					</div>
				</form>
			</div>
		</div>	
        </div>
              <script src="js/login.js"></script>
    </body>

</html>

