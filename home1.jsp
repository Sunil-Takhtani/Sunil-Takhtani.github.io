<html>
	<link href="css/main.css" rel="stylesheet" type="text/css"/>
	<HEAD>
		<TITLE>  Des Resources Facturables </TITLE>
	</HEAD>
        
	<BODY >
            <script type="text/javascript">
if (document.images) {
    image1 = new Image();
    image1.src = "./images/homeimg3.jpg";
    image2 = new Image();
    image2.src = "./images/homeimg2.jpg";
    image3 = new Image();
    image3.src = "./images/content1.gif";
}
</script>

            <% //HttpSession hsun=request.getSession(true);
            String un=(String)session.getAttribute("unm");
            if(un!=null)
        {
             Cookie[] c1=request.getCookies();
            // response.sendRedirect("./home1.jsp");
            for(int i=0;i<c1.length;i++)
            {
                if (c1[i].getValue().equals(un))
                    {
                       
                         c1[i].setMaxAge(0);
                           response.flushBuffer();
                    }

            }
             session.removeAttribute("unm");
             session.invalidate();
             response.sendRedirect("./home1.jsp");
        }
                 
            
             
             %>
		<DIV class="main"> 
		
		<Div class="mainhead">
		<div class="header" align="center">
                    <Video id="MOvies"  autobuffer="true" width="900px"  height="110px" preload="metadata"  loop="true" autoplay="true" >
		
			<SOURCE src="head.mkv" />
		</Video>
		</div>
		<div class="logo" align="center">
		<img src="images/logo.gif" height="100" width="180" />
		</div>
		
		</Div>
		<div class="menu">
			<ul class="nav-main">
			<li> <a href="./home1.jsp" >Home </a></li>
                          <li class="list2">.</li>
			<li> <a href="./login1.jsp"  > Login</a></li>
                          <li class="list2">.</li>
			<li> <a href="./desc.jsp"  > About us</a></li>
                        <li class="list2">.</li>
                        <li> <a href="./map.jsp"  > Reach us</a></li>
			</ul>
		</div>
		<div class="content">
                    <img src="./images/content1.gif" height="480" width="1100" name="slide" />
                      <script>
<!--
//variable that will increment through the images
var step=1
function slideit(){
//if browser does not support the image object, exit.
if (!document.images)
return
document.images.slide.src=eval("image"+step+".src")
if (step<4)
step++
if(step==4)
{
step=1
}
//call function "slideit()" every 2.5 seconds
setTimeout("slideit()",2500)
}
slideit()
//-->
</script>
		</div>
		<div class="footer">
			<ul>
			<li> <a href="./desc.jsp" >Home </a></li>
			<li> <a href="./login1.jsp">Login</a></li>
			<li> <a href="./login1.jsp">Feedback</a></li>
			</ul>
		</div>
		</DIV>
	
	</BODY>
</HTML>
