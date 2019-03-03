<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Book Movies</title>
  <link rel="stylesheet" href="css/icons/foundation-icons.css">
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="scss/app.css">
    <link rel="stylesheet" href="css/myStyle.css">
</head>
<script src="signin"></script>
<body id="bo" style="background-color: #141414;">
  <!--<h1>Hey pussy bro.....<h1>-->

<div style="">

  <div class="topmostbar">
    <img class="mainlogobm" src="images/BM_logo.png" alt="">
    <input type="search" class="searchbar" name="search" placeholder="Search">
    <input type="image" class="signbuttons" src="images/Register.png" name="SignIn" onClick="location.href='Register.jsp'">
    <input id="exception" type="image" class="signbuttons" src="images/SignIn.png" data-open="loginDiv" name="SignIn" value="">
  </div>
  <div class="secbar">
    <a class="abarh" href="index.jsp">Home</a>
    <a class="abarh1" href="#">Movies</a>
    <a class="abarh1" href="#">Events</a>
    <a class="abarh2" href="#">Location</a>
  </div>

</div>
<form onsubmit="return check(event)" action="Verify" method="post">
    <div class="row" style="background-image:url('13.png');background-repeat:no-repeat;background-size:contain;background-position:center;width:400px;height:500px;color:white;margin-top:65px;margin-left:500px;">
      <h1 style="margin-left:30px;">Registration</h1>
      <div class="row" style="margin-top:35px;margin-left:52px;font-size: 26px;" class="row loginfont">
      <pre >Name:<input style="width:260px;opacity:0.4;border:0px;" type="text" name="name" id="Name"></pre>
        <pre >UserName:<input style="width:260px;opacity:0.4;border:0px;" type="text" name="uname" id="Uname"></pre>

        <pre>Password:<input style="width:260px;opacity:0.4;border:0px;" type="password" name="pass" id="Pass"></pre>

      </div>
      <center><input type="submit" style="margin-top: 15px;text-decoration:none;width:180px;background-color: #0bc6ec;border-radius:100px;color:black;font-size:30px;height:50px;font-weight:bold;" value="Register"></center>

    </div>
    </form>
    <script type="text/javascript">

function check() {
	var a = document.getElementById('Name').value;
	var b = document.getElementById('Uname').value;
	var c = document.getElementById('Pass').value;
	if(a=="")
		{
		 alert("Enter Name.....");
		 return false;
		}
	else if(b=="")
		{
		 alert("Enter UserName.....");
		 return false;
		}
		else if(c=="")
		{
			 alert("Enter Password.....");
			 return false;
		}
		else
			return true;
}

</script>
</script>
<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/what-input.js"></script>
<script src="js/vendor/foundation.js"></script>
<script src="js/app.js"></script>
</body>
</html>
