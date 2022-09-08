<div class="container-fluid px-1 py-5 mx-auto">
    <div class="row d-flex justify-content-center">
        <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
             <div class="card">
                <h5 class="text-center mb-4">Fill the details for payment</h5>
                <form class="form-card" action="${pageContext.request.contextPath}/CONTROLLER/process" method="post">
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Full Name<span class="text-danger"> *</span></label> <input type="text" id="fname" name="name" placeholder="Enter your Full name" onblur="validate(1)"> </div>
                       <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Email<span class="text-danger"> *</span></label> <input type="text" id="email" name="email" placeholder="Enter your Email Address" onblur="validate(2)"> </div>
                       
                    </div>
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Mobile number<span class="text-danger"> *</span></label> <input type="number" id="mobile" name="mobile" placeholder="Enter your Mobile Number" onblur="validate(3)"> </div>
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Address<span class="text-danger"> *</span></label> <input type="text" id="address" name="address" placeholder="Enter your House Number" onblur="validate(4)"> </div>
                    </div>
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Country<span class="text-danger"> *</span></label> <input type="text" id="ans" name="country" placeholder="Enter your Country Name" onblur="validate(5)"> </div>
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">State<span class="text-danger"> *</span></label> <input type="text" id="ans" name="state" placeholder="Enter your State Name" onblur="validate(6)"> </div>
                   
                    </div>
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">City<span class="text-danger"> *</span></label> <input type="text" id="job" name="city" placeholder="Enter your City Name" onblur="validate(7)"> </div>
                       <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Pincode<span class="text-danger"> *</span></label> <input type="text" id="ans" name="pincode" placeholder="Enter your Pincode Name" onblur="validate(8)"> </div>
                  
                    </div>
                     <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Message<span class="text-danger"> *</span></label> <input type="text" id="ans" name="message" placeholder="Enter any message" onblur="validate(9)"> </div>
                       <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Ruppes<span class="text-danger"> *</span></label> <input type="number" id="ans" name="money" placeholder="Enter INR" onblur="validate(10)"> </div>
                  
                    </div>
                    <div class="row justify-content-end">
                        <div class="form-group col-sm-6"> <button type="submit" class="btn-block btn-primary">PAY</button> </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
