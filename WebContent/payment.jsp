<%@page import="pack.SelectedSeat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Book Movies</title>
  <link rel="stylesheet" href="css/icons/foundation-icons.css">
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="scss/app.css">
    <link rel="stylesheet" href="css/myStyle.css">
<meta charset="ISO-8859-1">
<title>Book Movie</title>
</head>
<body id="bo" style="background-color: #141414;">
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
  <center><h1 style="color:white;margin-top: 80px;">Booking Confirmed</h1></center>
<div style="margin-top:50px;margin-bottom: 50px" class='row'>

<div class="media-object stack-for-small">
  <div class="media-object-section">
    <div class="thumbnail">
      <img width="" src= "ralph.jpg">
    </div>
  </div>
  
  <%!
  		String tickets;
		String cost;
		SelectedSeat ss = new SelectedSeat();
	%>
		<%
		String userid = (String)session.getAttribute("UserId");
		tickets = request.getParameter("ticketid");
		cost = request.getParameter("totalcost");
		ss.book(userid, tickets);
		%>
  <div style="color:white;" class="media-object-section">
    <h3>Ralph Breaks The Internet: Wreck it Ralph 2</h3><br>
    <h5 id="tickets">Booked Seats : <%=tickets %></h5>
    <h5 id="price">Total Cost : <%=cost%></h5>
  </div>
</div>

</div>
<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/what-input.js"></script>
<script src="js/vendor/foundation.js"></script>
<script src="js/app.js"></script>
</body>
</html>