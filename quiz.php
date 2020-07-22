<?php include 'database.php'; ?>
<?php
/*
 *	Get Total Questions
 */
 $query ="SELECT * FROM questions";
 //Get results
 $results = $mysqli->query($query) or die($mysqli->error.__LINE__);
 $total = $results->num_rows;
?>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8" />
	<title>Quizzer</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/all.min.css" />
<link rel="stylesheet" href="css/fontawesome-all.min.css" />
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;500;900&display=swap" rel="stylesheet">

</head>
<body>
<header class="header">
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container"><a href="#home" class="navbar-brand text-uppercase font-weight-bold"><img src="Images/logooo2.png"></a>
            <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler  bg-light navbar-toggler-right"><i class="fa fa-bars"></i></button>
            
            <div id="navbarSupportedContent" class="collapse navbar-collapse justify-content-end navbar-right">
                  <ul class="navbar-nav  ml-auto">
                    <li class="nav-item navbar-right active"><a href="html.html" class="nav-link text-uppercase">Home <span class="sr-only">(current)</span></a></li>
					    <li class="nav-item"><a href="map.html" class="nav-link text-uppercase">Map</a></li>
                    <li class="nav-item"><a href="quizzer.html" class="nav-link text-uppercase">Quizzes</a></li>
                    <li class="nav-item"><a href="index.php" style="text-shadow: none;color:#212529;" class="nav-link disabled btn btn-warning text-uppercase">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>	
	<section class="home">
      <div class="all">
		<div id="hd" class="container">
			<h1>Quizzer</h1>
		</div>
   
	<main class="main">
		<div class="container">
			<h2>Test Your Knowledge</h2>
			<p>This is a multiple choice quiz to test your knowledge of Web Development</p>
			<ul>
				<li><strong>Number of Questions: </strong><?php echo $total; ?></li>
				<li><strong>Type: </strong>Multiple Choice</li>
				<li><strong>Estimated Time: </strong><?php echo $total * .5; ?> Minute(s)</li>
			</ul>
			<a href="question.php?n=1" class="start"> <button class="btn btn-warning">Start Quiz</button></a>
		</div>
	</main>

</div>
 </section>
<script src="js/jquery-3.3.1.min.js"></script>    
<script src="js/popper.min.js"></script>    
<script src="js/bootstrap.min.js"></script>
</body>
</html>