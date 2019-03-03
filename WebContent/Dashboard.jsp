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
<%
response.setHeader("Pragma","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Expires","0"); 
response.setDateHeader("Expires",-1);
  %>
<%!String name; %>
<%
name = null;
try {
    name = (String) session.getAttribute("UserId");
 
} catch (Exception e) {
}
if (name == null) {
    response.sendRedirect("SessionExpired.html");
}

//out.print("<center><h3>Welcome , "+name+"</h3></center><br>");
%>

  <div class="topmostbar">
    <img class="mainlogobm" src="images/BM_logo.png" alt="">
    <input type="search" class="searchbar" name="search" placeholder="Search">
    <ul style="float: right;margin-top: 40px" class="dropdown menu" data-dropdown-menu>
  <li>
    <a style="text-decoration:none;color:white;background-color: #404040;margin-right: 50px;border-radius:2px;width:150px;" class="button" href="#"><%=name %></a>
    <ul style="background-color: #404040;border:0px;width:70px;" class="menu">
      <li><a style="text-decoration:none;color:white;width:70px;" href="Logout.jsp">Logout</a></li>
    </ul>
</ul>
  </div>
  <div class="secbar">
    <a class="abarh" href="#">Home</a>
    <a class="abarh1" href="#">Movies</a>
    <a class="abarh1" href="#">Events</a>
    <a class="abarh2" href="#">Location</a>
  </div>

</div>
<div style="margin-top:100px;" class="row">

  <ul class="accordion" data-accordion data-multi-expand="true" data-allow-all-closed="true">

    <li class="accordion-item" data-accordion-item>
      <!-- Accordion tab title -->
      <a style="text-decoration:none;font-size:20px;background-color: #404040;color:white;" href="#" class="accordion-title"><strong>Ralph Breaks The Internet: Wreck it Ralph 2</strong></a>

      <!-- Accordion tab content: it would start in the open state due to using the `is-active` state class. -->
      <div style="background-color: #141414;color:white;" class="accordion-content" data-tab-content>
        <p>Panel 1. Lorem ipsum dolor</p>
        <a style="text-decoration:none;" class="button" href="SeatMap.jsp?val=1">Book Tickets</a>
      </div>
    </li>
    <li class="accordion-item" data-accordion-item>
      <!-- Accordion tab title -->
      <a style="text-decoration:none;font-size:20px;background-color: #404040;color:white;" href="#" class="accordion-title"><strong>Ralph Breaks The Internet: Wreck it Ralph 2</strong></a>

      <!-- Accordion tab content: it would start in the open state due to using the `is-active` state class. -->
      <div style="background-color: #141414;color:white;" class="accordion-content" data-tab-content>
        <p>Panel 1. Lorem ipsum dolor</p>
        <a style="text-decoration:none;" class="button" href="SeatMap.jsp?val=2">Book Tickets</a>
      </div>
    </li>
    <li class="accordion-item" data-accordion-item>
      <!-- Accordion tab title -->
      <a style="text-decoration:none;font-size:20px;background-color: #404040;color:white;" href="#" class="accordion-title"><strong>Ralph Breaks The Internet: Wreck it Ralph 2</strong></a>

      <!-- Accordion tab content: it would start in the open state due to using the `is-active` state class. -->
      <div style="background-color: #141414;color:white;" class="accordion-content" data-tab-content>
        <p>Panel 1. Lorem ipsum dolor</p>
        <a style="text-decoration:none;" class="button" href="SeatMap.jsp?val=3">Book Tickets</a>
      </div>
    </li>
    <li class="accordion-item" data-accordion-item>
      <!-- Accordion tab title -->
      <a style="text-decoration:none;font-size:20px;background-color: #404040;color:white;" href="#" class="accordion-title"><strong>Ralph Breaks The Internet: Wreck it Ralph 2</strong></a>

      <!-- Accordion tab content: it would start in the open state due to using the `is-active` state class. -->
      <div style="background-color: #141414;color:white;" class="accordion-content" data-tab-content>
        <p>Panel 1. Lorem ipsum dolor</p>
        <a style="text-decoration:none;" class="button" href="SeatMap.jsp?val=4">Book Tickets</a>
      </div>
    </li>
    <li class="accordion-item" data-accordion-item>
      <!-- Accordion tab title -->
      <a style="text-decoration:none;font-size:20px;background-color: #404040;color:white;" href="#" class="accordion-title"><strong>Ralph Breaks The Internet: Wreck it Ralph 2</strong></a>

      <!-- Accordion tab content: it would start in the open state due to using the `is-active` state class. -->
      <div style="background-color: #141414;color:white;" class="accordion-content" data-tab-content>
        <p>Panel 1. Lorem ipsum dolor</p>
        <a style="text-decoration:none;" class="button" href="SeatMap.jsp?val=5">Book Tickets</a>
      </div>
    </li>
  </ul>

</div>


<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/what-input.js"></script>
<script src="js/vendor/foundation.js"></script>
<script src="js/app.js"></script>
</body>
</html>
