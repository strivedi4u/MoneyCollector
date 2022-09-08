<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%
String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String mobile = (String)session.getAttribute("mobile");
String moneys = (String)session.getAttribute("money");
if(name != null && email != null && mobile != null && moneys != null){
%>
<div class="row d-flex justify-content-center" id="desktop">
        <div class="col-xl-9 col-lg-8 col-md-9 col-11 text-center">
               <div class="card"  style="height:650px">
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <br><br><br><br><br>
                         <img style="" src="https://www.pngplay.com/wp-content/uploads/8/Payment-Method-PNG-HD-Quality.png" />
                        </div>
                       <div class="form-group col-sm-5 flex-column d-flex"> 
                       <iframe src="${pageContext.request.contextPath}/CONTROLLER/paymoney"  frameBorder="0" style="outline:none; frameBorder:0; border:none; margin-top:-145px; height:740px; width:410px; overflow:hidden; scrolling:no;"  title="Iframe Example"></iframe>
                       </div>
                    </div>
              </div>
        </div>
   </div>
<div class="mobile">
<iframe src="${pageContext.request.contextPath}/CONTROLLER/paymoney" frameBorder="0" style="outline:none; frameBorder:0; border:none; margin-top:-55px; height:940px; width:100%;  scrolling:no;" title="Iframe Example"></iframe>
</div> 
<%            
} else{
	%>
	<jsp:forward page="VIEW/404.jsp" />  
	<%
}
 %>