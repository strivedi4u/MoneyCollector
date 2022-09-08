<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "com.database.*"%>
<%@ page import = "java.util.*"%>
<%
String payment_id = request.getParameter("search");
Details d = Database.getDetails(payment_id);
if(d != null){
%>

<!DOCTYPE html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js" ></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
    color: #566787;
    background: #f5f5f5;
    font-family: 'Roboto', sans-serif;
}
.table-responsive {
    margin: 0px;   
}
.table-wrapper {
	 margin: 0px, 20px;
    background: #fff;
    padding: 15px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    font-size: 15px;
    padding-bottom: 10px;
    margin: 0 0 10px;
    min-height: 45px;
}
.table-title h2 {
    margin: 5px 0 0;
    font-size: 24px;
}

.table-title .show-entries {
    margin-top: 7px;
}

table.table tr th, table.table tr td {
    border-color: #e9e9e9;
}

</style>
</head>
   <body>

        <div class="table-wrapper">	        
           <div id="printArea">		
           
            <div class="table-title">
                <div class="row">
                    <div class="col-xs-4">
									
					</div>
					<div class="col-xs-4">
						<h2 class="text-center"><b>Donation</b> Details</h2>
					</div>
                  
                </div>
            </div>
            <table class="table table-bordered">
                <tbody>
                                <tr>
                <th style="text-align:center;" colspan="4">Personal Details</th>
                 </tr>
                    <tr>
                        <th style="width:15%;">Name</th>
                        <td style="width:35%;"><%= d.getName() %></td> 
                        <th style="width:15%;">Email Id</th>
                        <td style="width:35%;"><%=d.getEmail() %></td> 
                    </tr>
                    <tr>

                        <th>Mobile No</th>
                        <td><%=d.getMobile() %></td> 
                        <th>House No</th>
                        <td><%=d.getAddress() %></td> 
                    </tr>
                                        <tr>

                        <th>Country</th>
                        <td><%=d.getCountry() %></td> 
                        <th>State</th>
                        <td><%=d.getState() %></td> 
                    </tr>
                                        <tr>

                        <th>City</th>
                        <td><%=d.getCity() %></td> 
                        <th>Pincode</th>
                        <td><%=d.getPincode() %></td> 
                    </tr>
                                                            <tr>

                        <th>Message</th>
                        <td><%=d.getMessage() %></td> 
                        <th>Rupees</th>
                        <td><%=d.getMoney() %></td> 
                    </tr>
                </tbody>
            </table>
            
            
            
            
            
            <table class="table table-bordered">
                           <tbody>
                                <tr>
                <th style="text-align:center;" colspan="4">Payment Details</th>
                 </tr>
                    <tr>
                        <th style="width:15%;">Transaction Id</th>
                        <td style="width:35%;"><%=d.getPayment_id() %></td> 
                        <th style="width:15%;">Order Id</th>
                        <td style="width:35%;"><%=d.getOrder_id() %></td> 
                    </tr>
                    <tr>

                       
                        <th>Payment Status</th>
                        <td><%=d.getStatus() %></td> 
                    </tr>
                
                </tbody>
            </table>
          
           <img style="margin-top:-20px; height:200px; border-radius:50%; width:200px;  opacity:1.1;"  alt="" src=" https://img.freepik.com/premium-vector/approved-seal-stamp-vector_20448-173.jpg?w=2000">
      <%
      if(d.getStatus().equals("PAID")){
      %>
       <img style="margin-top:-20px;  height:130px; width:130px;  border-radius:50%;  opacity:1.1;"  alt="" src="https://cdn.pixabay.com/photo/2020/04/10/13/23/paid-5025785_1280.png">
       <%
      }
       else{
    	   %>
           <img style="margin-top:-20px;  height:130px; width:150px;  border-radius:50%;  opacity:1.1;"  alt="" src="https://t3.ftcdn.net/jpg/03/53/11/94/360_F_353119406_ioNOUPVKBIUGDVEIapvkvLaPODx90rTZ.jpg">
           <%
       }
       %>
        <img style="margin-top:-20px;  height:180px; width:180px;  border-radius:50%;  opacity:1.1;"  alt="" src="https://yt3.ggpht.com/5qAj3nd-NdyUX3eRARBbLV2lUJL3T3qUnZG3H2eBB3FeYjjj60iSRUfkovabULPiYyCbKNMnig=s900-c-k-c0x00ffffff-no-rj">
        </div>
    </div>        
  
<center><div style="position:absolute; left:20%; right:20%; top:100px; width:60%; z-index:12; opacity:0.1;" ><img style="height:500px; width:500px;"  alt="" src="https://yt3.ggpht.com/5qAj3nd-NdyUX3eRARBbLV2lUJL3T3qUnZG3H2eBB3FeYjjj60iSRUfkovabULPiYyCbKNMnig=s900-c-k-c0x00ffffff-no-rj"></div></center>


 
      
        <script type="text/javascript">
            function PrintDiv() {
                var divContents = document.getElementById("printArea").innerHTML;
                var printWindow = window.open('1px', '1px', 'width=100%,height=100%,left=1px,top=1px');
                /*printWindow.document.write('<html><head><title>Result View by CSJMU SDC Team</title>');*/
                printWindow.document.write('</head><body><div style="background-color: white; font-family: Verdana; font-size: 8pt;">');
                printWindow.document.write(divContents);
                printWindow.document.write('</div></body></html>');
                printWindow.document.close();
                printWindow.print();
            }
        </script>
</body>
</html>
<%
}
else{
	%>
	<script type="text/javascript">
alert("Your Transcation Id is Wrong")
</script>
	<%
}
%>
