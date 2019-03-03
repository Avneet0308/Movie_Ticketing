<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="pack.SelectedSeat,java.util.ArrayList"%>
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
<style type="text/css">

.table{
border:2px solid blue;
width:750px;
height:350;
margin-top:150px;}
.sec-available{
background-image:url('available.png');
background-repeat:no-repeat;
background-size:contain;
background-position:center;
margin:10px 10px 10px 10px;
width:25px;
height:25px;
float:left;
}
.sec-selected{
background-image:url('selected.png');
background-repeat:no-repeat;
background-size:contain;
background-position:center;
margin:10px 10px 10px 10px;
width:25px;
height:25px;
float:left;
}
.sec-taken{
background-image:url('taken.png');
background-repeat:no-repeat;
background-size:contain;
background-position:center;
margin:10px 10px 10px 10px;
width:25px;
height:25px;
float:left;
}
</style>
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
<div class="row" style='margin-top: 30px;margin-left: 50px;width:1500px;border:1px solid;background-color: grey' scroll='true'>



<%!
SelectedSeat ss = new SelectedSeat();
//String data="";
ArrayList al = new ArrayList();
%>
<%
al = ss.sel();
//System.out.println(al);
%>
<%
for(char i='A';i<='M';i++){
	out.println("<div style='clear:both;'>");
	out.println("<p style='font-size:20px;float:left;margin-top:8px;margin-right:80px;margin-left:10px;'>"+i+"</p>");
for(int j=1;j<=20;j++){
	if(j==11)
		out.println("<div style='width:150px;float:left;'><pre>                                                 </pre></div>");
	//String iddiv=i+String.valueOf(j);
	String val = i+Integer.toString(j);
	
		if(al.size()!=0)
		{
		if(al.contains(val))
	    	out.println("<div class='sec-taken' id='"+val+"'></div>");
		else
			out.println("<div class='sec-available' id='"+val+"' onclick=\"return changeco('"+val+"')\"></div>");
		}
		else
			out.println("<div class='sec-available' id='"+val+"' onclick=\"return changeco('"+val+"')\"></div>");
}
out.println("</div>");
if(i=='A')
{
	
	out.println("<center><div style='width:1000px;border:1px;'><p style='clear:both;color:red;font-size:20px'><strong>Executive seat (Rs.250)</strong></p></div><hr></center>");
}
if(i=='J')
{
	
	out.println("<center><div style='width:1000px;border:1px;'><p style='clear:both;color:red;font-size:20px'><strong>Gold seat (Rs.150)</strong></p></div><hr></center>");
}
}

out.println("<center><div style='width:1000px;border:1px;'><p style='clear:both;color:red;font-size:20px'><strong>Silver seat (Rs.80)</strong></p></div></center>");
out.println("<div style='width=1000px;height:50px;border:1px solid;'><center><h3>Screen this way</h3><center></div>");
%>


</div>
<div style="margin-top:50px;margin-bottom: 50px" class='row'>

<div class="media-object stack-for-small">
  <div class="media-object-section">
    <div class="thumbnail">
      <img width="" src= "ralph.jpg">
    </div>
  </div>
  <div style="color:white;" class="media-object-section">
  <form onsubmit="return func(event)" action="payment.jsp" method="post">
    <h3>Ralph Breaks The Internet: Wreck it Ralph 2</h3><br>
    <h5 id="tickets">Selected Seats : </h5>
    <h5 id='number'>Total Tickets : 0</h5>
    <h5 id="price">Total : 0</h5>
    <input style="display:none;" type="text" id="ticketsbox" value="" name="ticketid">
    <input style="display:none;" type="text" id="costbox" value="" name="totalcost">
    <input type="submit" style="background-color: grey" class="button" value="Confirm Booking">
	</form>  
  </div>
</div>

</div>

</body>
<script type="text/javascript">
var val="";
var num = 0;
var cost = 0;
function func(){
	if (confirm('Are you sure you want to book these tickets?')) {
	    // Save it!
	    return true;
	} else {
	    // Do nothing!
	    return false;
	}
}
function changeco(id){
	val=document.getElementById('tickets').innerHTML;
	if(document.getElementById(id).className=='sec-selected'){
		document.getElementById(id).className='sec-available';
		//alert(id.includes("A"));
		if(id.charAt(0)=='A')
			{
				cost-=250;
				document.getElementById('price').innerHTML = "Total : "+cost;
				document.getElementById('costbox').value = cost;
			}
			
		else if(id.charAt(0)>'A'&&id.charAt(0)<='J')
			{
				cost-=150;
				document.getElementById('price').innerHTML = "Total : "+cost;
				document.getElementById('costbox').value = cost;
			}
		else if(id.charAt(0)>'J')
			{
			cost-=80;
			document.getElementById('price').innerHTML = "Total : "+cost;
			document.getElementById('costbox').value = cost;
			}
		val = val.replace("Selected Seats : "+id+" , ","Selected Seats : ");
		val = val.replace("Selected Seats : "+id,"Selected Seats : ");
        val = val.replace(" , "+id,"");
        
        //if(val.includes("Selected Seats : ,"))
        	//val = val.replace("Selected Seats : ,","Selected Seats : ");
        //alert("yes");
        num--;
        document.getElementById('number').innerHTML = "Total Tickets : "+num;
	}else{
		if(id.charAt(0)=='A')
		{
			cost+=250;
			document.getElementById('price').innerHTML = "Total : "+cost;
			document.getElementById('costbox').value = cost;
		}
		
	else if(id.charAt(0)>'A'&&id.charAt(0)<='J')
		{
			cost+=150;
			document.getElementById('price').innerHTML = "Total : "+cost;
			document.getElementById('costbox').value = cost;
		}
	else if(id.charAt(0)>'J')
		{
		cost+=80;
		document.getElementById('price').innerHTML = "Total : "+cost;
		document.getElementById('costbox').value = cost;
		}
		//alert(id.includes("A"));
		document.getElementById(id).className='sec-selected';
		num++;
        
	if(val=="Selected Seats : ")
      val=val+""+id;
	else
		val=val+" , "+id;
	}   
	document.getElementById('tickets').innerHTML = val;
	val=val = val.replace("Selected Seats : ","");
	document.getElementById('ticketsbox').value = val;
	document.getElementById('number').innerHTML = "Total Tickets : " +num;
		}
	
</script>
<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/what-input.js"></script>
<script src="js/vendor/foundation.js"></script>
<script src="js/app.js"></script>
</body>
</html>