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
    <a class="abarh" href="#">Home</a>
    <a class="abarh1" href="#">Movies</a>
    <a class="abarh1" href="#">Events</a>
    <a class="abarh2" href="#">Location</a>
  </div>

</div>


<!-- MAIN ORBIT SLIDER-->

<div class="row" style="margin-top:50px;width:750px;margin-bottom:50px;">

  <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit >
    <div class="orbit-wrapper">
      <div class="orbit-controls">
        <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
        <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
      </div>
      <ul class="orbit-container">
        <li class="is-active orbit-slide">
          <figure class="orbit-figure">
            <a href="#"><img class="orbit-image" src="3.jpg" alt="Space"></a>
            <figcaption class="orbit-caption">Space, the final frontier.</figcaption>
          </figure>
        </li>
        <li class="orbit-slide">
          <figure class="orbit-figure">
            <a href="#"><img class="orbit-image" src="1.jpg" alt="Space"></a>
            <figcaption class="orbit-caption">Lets Rocket!</figcaption>
          </figure>
        </li>
        <li class="orbit-slide">
          <figure class="orbit-figure">
            <a href="#"><img class="orbit-image" src="2.jpg" alt="Space"></a>
            <figcaption class="orbit-caption">Encapsulating</figcaption>
          </figure>
        </li>
        <li class="orbit-slide">
          <figure class="orbit-figure">
            <a href="#"><img class="orbit-image" src="3.jpg" alt="Space"></a>
            <figcaption class="orbit-caption">Outta This World</figcaption>
          </figure>
        </li>
      </ul>
    </div>
    <nav class="orbit-bullets">
      <button class="is-active" data-slide="0"><span class="show-for-sr">First slide details.</span><span class="show-for-sr">Current Slide</span></button>
      <button data-slide="1"><span class="show-for-sr">Second slide details.</span></button>
      <button data-slide="2"><span class="show-for-sr">Third slide details.</span></button>
      <button data-slide="3"><span class="show-for-sr">Fourth slide details.</span></button>
    </nav>
  </div>
</div>


<!-- MAIN ORBIT SLIDER END-->

<div style='float:left;margin-bottom:40px;'><!-- LEFT ORBIT SLIDER END-->

<div style="margin-top:10px;margin-left:60px;">
  <img style="float:left;width:30px;height:30px;" src="5.png" alt="Movies"> <pre style="float:left;font-size:25px;font-family:;color:white;"> Movies</pre>
</div>


  <div style="float:left;margin-top:20px;width:400px;margin-left:100px;">

    <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit data-options="animInFromLeft:fade-in; animInFromRight:fade-in; animOutToLeft:fade-out; animOutToRight:fade-out;">
      <div class="orbit-wrapper">
        <div class="orbit-controls">
          <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
          <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
        </div>
        <ul class="orbit-container">
          <li class="is-active orbit-slide">
            <figure class="orbit-figure">
              <img class="orbit-image" src="3.jpg" alt="Space">

            </figure>
          </li>
          <li class="orbit-slide">
            <figure class="orbit-figure">
              <img class="orbit-image" src="1.jpg" alt="Space">

            </figure>
          </li>
          <li class="orbit-slide">
            <figure class="orbit-figure">
              <img class="orbit-image" src="2.jpg" alt="Space">

            </figure>
          </li>
          <li class="orbit-slide">
            <figure class="orbit-figure">
              <img class="orbit-image" src="3.jpg" alt="Space">

            </figure>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>



  <div style='float:right;margin-right:40px;margin-bottom:40px;'><!-- right ORBIT SLIDER END-->

  <div style="margin-top:10px;margin-left:100px;">
    <img style="float:left;width:20px;height:30px;" src="9.png" alt="Movies"> <pre style="float:left;font-size:25px;font-family:;color:white;"> Events</pre>
  </div>


    <div style="float:left;margin-top:20px;width:400px;margin-left:150px;">

      <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit data-options="animInFromLeft:fade-in; animInFromRight:fade-in; animOutToLeft:fade-out; animOutToRight:fade-out;">
        <div class="orbit-wrapper">
          <div class="orbit-controls">
            <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
            <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
          </div>
          <ul class="orbit-container">
            <li class="is-active orbit-slide">
              <figure class="orbit-figure">
                <img class="orbit-image" src="3.jpg" alt="Space">

              </figure>
            </li>
            <li class="orbit-slide">
              <figure class="orbit-figure">
                <img class="orbit-image" src="1.jpg" alt="Space">

              </figure>
            </li>
            <li class="orbit-slide">
              <figure class="orbit-figure">
                <img class="orbit-image" src="2.jpg" alt="Space">

              </figure>
            </li>
            <li class="orbit-slide">
              <figure class="orbit-figure">
                <img class="orbit-image" src="3.jpg" alt="Space">

              </figure>
            </li>
          </ul>
        </div>
      </div>
    </div>
    
    <div style="background-image:url('10.png');width:372px;height:494px;color:white;margin-top:65px;background-repeat:no-repeat;background-size:contain;background-position:cover;" class="tiny reveal" id="loginDiv" aria-labelledby="Log in" data-reveal data-animation-in="scale-in-up fast" data-animation-out="scale-out-down fast">
      <h1>Sign in</h1>
      <form onsubmit="return check(event)" action="Validate" method="post">
      <div style="margin-top:75px;margin-left:48px;" class="row loginfont">
      
        <pre>UserName:<input id='userid' style="width:260px;background-image:url('12.png');border:0px;color:white;" type="text" name="uname" id=""></pre>

        <pre>Password:<input id='password' style="width:260px;background-image:url('12.png');border:0px;color:white;" type="password" name="pass" id=""></pre>

      </div>
      <br>
      <center><input type="submit" style="margin-top: 15px;text-decoration:none;width:180px;background-color: #3eec0b;border-radius:100px;color:black;font-size:30px;height:50px;font-weight:bold;" value="Login"></center>
      </form>
      <button class="close-button" data-close aria-label="Close Accessible Modal" type="button">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    

<script type="text/javascript">

function check() {
	var a = document.getElementById('userid').value;
	var b = document.getElementById('password').value;
	if(a=="")
		{
		 alert("Enter UserId.....");
		 return false;
		}
	else if(b=="")
		{
		 alert("Enter Password.....");
		 return false;
		}
		else
			return true;
}

</script>
<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/what-input.js"></script>
<script src="js/vendor/foundation.js"></script>
<script src="js/app.js"></script>
</body>
</html>
