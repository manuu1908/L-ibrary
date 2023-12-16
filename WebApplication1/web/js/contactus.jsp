<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Library Management System</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
            
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height:600px; background-color: aqua;"></div>
                <div class="col-sm-8" style="min-height:600px; background-image:url('images/farmer2.jpg'); background-size:100% 100%; background-color: aliceblue;">
                <h2 style="text-align:center;color:blue;">Enquiry Form</h2>
                <form class="form-group" method="post" action="controller.jsp">
                    <input type="hidden" name="page" value="contactus"/>
                    <table class="table" style="width:80%;margin:auto;">
                        <tr>
                            <td>Enter Name</td>
                            <td>
                        <input type="text" name="name" class="form-control"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Select Gender</td>
                            <td>
                               
                                 <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                  <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Class</td>
                            <td>
                                <textarea name="address" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Roll No</td>
                            <td>
                                <input type="number" name="contactno"/>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Enter Enquiry Text</td>
                            <td>
                                <textarea name="enquirytext" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">Submit</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            </div>
            <div><jsp:include page="footer.jsp"/></div>
        </div>  
    </body>
</html>


