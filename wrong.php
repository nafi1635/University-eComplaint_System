<!DOCTYPE html>
<html lang="en">
<head>
  <title>eCS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resource/bootstrap.min.css">
  <script src="resource/jquery.min.js"></script>
  <script src="resource/jquery.js"></script>
  <script src="resource/bootstrap.min.js"></script>
  <script src="resource/simple-sidebar.js"></script>
  <link href="resource/simple-sidebar1.css" rel="stylesheet">
   <link href="prof.css" rel="stylesheet">
  <script type="text/javascript" src="resource/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resource/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="resource/font-awesome.min.css" />
<link rel="stylesheet" href="resource/font-awesome.css" />


<link type="text/css" rel="stylesheet" href="resource/login_style.css" />
  <style>

    #grafico1 {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}

.main-header {
    font-size: x-large;
    color : #888;
    font-family: Verdana;
    margin-bottom: 20px;
}

.destaque {
    color: #f88;
    font-weight: bolder;
}


    input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
    .row.content {height: 1500px}
   
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    

    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
 
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>

<body>
<?php
if(isset($_SESSION['login_user']))
{
header("location:Home.php");
}
?>    
<?php
include('headerfirst.php');
?>
    <!--pop up container-->
<?php
include('login_pop.php');
?>
<!---hover bar--->
 <?php
 include('wrapper.php');
 ?>
<!------------------------------------------------------------------------------------->
<div class="col-sm-8" style="">

<br>
<div class="alert alert-success" style='width='80%';height='60%''>
							    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
							    <strong>You have entered wrong username or password</strong> 
							    <br>
							    
							  </div>
							  <div class='one_half'><a href='Home.php' id='login_form' class='btn btn_lblue'>Login</a></div>
	
	
</div>
  <script src="resource/simple-sidebar.js"></script>
<script src="resource/modal.js">
</script>
</body>
</html>
